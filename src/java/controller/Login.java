
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

@WebServlet(name = "login", urlPatterns = {"/login"})
public class Login extends HttpServlet {
    private String user;
    private String pass;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        this.user = request.getParameter("user");
         this.pass = request.getParameter("pass");
         
         User newUser = new User(this.user, this.pass);
         
         if(newUser.isLogged()){
             HttpSession session = request.getSession();
             session.setAttribute("userLoggedSession", newUser);
          //request.setAttribute("userLogged", "Rudimar");
          request.getRequestDispatcher("home.jsp")
                  .forward(request, response);
             
         }else{
             PrintWriter out = response.getWriter();
             out.print("<Script>");
         }
    
        try (PrintWriter out = response.getWriter()) {
         
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title> login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
