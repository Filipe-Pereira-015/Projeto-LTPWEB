<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 TRASITIONAL//EN"" HTTP://WWW.W3.ORG/TR/HTML4/LOOSE.DTD">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>---</title>
    </head>
    <body>
        <%
           session.removeAttribute("email");
           response.sendRedirect("login.jsp");
        %>
    </body>
</html>