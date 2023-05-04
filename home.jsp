<%-- 
    Document   : home
    Created on : 27 de abr. de 2023, 19:30:33
    Author     : QI
--%>
<%@include file="session/verify.jsp" %>
<%@page import="model.User"%>
<%
    User u=  (User) request.getAttribute("userLogged");
    User uSession = (User)session.getAttribute("userLooggedSession");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exames</title>
    </head>
    <body>
        <h1>Bem Vindo <%= u%></h1>
        <h1>Bem vindo <%= uSession %></h1>
    </body>
</html>
