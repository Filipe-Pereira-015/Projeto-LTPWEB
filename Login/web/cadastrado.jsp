<%-- 
    Document   : cadastrado
    Created on : 08/03/2024, 10:23:29
    Author     : laboratorio
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>JSP Page</title>
        <script language="Javascript">
            var timer = 2;
            function countdown(){
                if (timer > 0){
                    timer -= 1;
                    setTimeout("countdown()", 3000);
                } else {
                    location.href = 'index.jsp#paralogin'
                }
            }
            countdown();
        </script>
    </head>
    <body>
        <%
            String email = (String) request.getAttribute("email");
            out.println("<h4>Email "+ email +" Cadastrado com sucesso</h4>");
            out.println("Você será redirecionado para a pagina de login");
        %>
    </body>
</html>
