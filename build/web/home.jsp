<%-- 
    Document   : home
    Created on : 27 de abr. de 2023, 19:30:33
    Author     : QI
--%>

<%@page import="model.User"%>
<%
    User uSession = (User)session.getAttribute("userLooggedSession");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Pages</title>
    </head>
    <body>
        <%@include  file="session/verify.jsp" %>
        
        <p>Bem vindo <%= (uSession != null) ?  uSession.getUserName() : "Visitante" %>
        <button onclick="window.location.href=' session/logout.jsp'">Logout</button>
        </p>
    </body>
</html>
