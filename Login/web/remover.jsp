<%-- 
    Document   : remover
    Created on : 08/03/2024, 10:55:09
    Author     : laboratorio
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.removeAttribute("email");
            response.sendRedirect("login.jsp");
        %>
    </body>
</html>
