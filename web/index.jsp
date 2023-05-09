<%-- 
    Document   : index
    Created on : 8 de mai. de 2023, 20:53:21
    Author     : QI
--%>
<%
    if(session.getAttribute("userLoggedSession") != null ){
    response.sendRedirect("home.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="img/icon.img.png"/>
        <link rel="stylesheet" href="css/style.css"/>
        <title>Fãs de Webtoons </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="login" method="post" id="form-login">
            
            <img src="img/img.jpg" alt="logotipo webtons" width="300"/> <br><br>
            
            <input type="email" name="user" id="user" class="fields" placeholder="Digite seu Email" required>
            <br><br>
            
             <input type="password" name="pass" id="pass"  class="fields" placeholder="Digite seu Senha" required>
             <br><br>
             
            <input type="submit" value="entrar">
        </form>
    </body>
</html>
