<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 TRASITIONAL//EN"" HTTP://WWW.W3.ORG/TR/HTML4/LOOSE.DTD">
<html>
    <head>
        <script language="javascript">
            var timer = 2;
            function countdown() {
                if (timer > 0) {
                    timer -=1;
                    setTimeout("countdown()", 3000);
                    
                } else {
                    location.href = 'login.jsp';
                }
            }
            countdown();
            </script>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>-----</title>  
    </head>
    <body>
        <%        String email = (String) request.getAttribute("email");
                  out.println("<h4>Email " + email + "cadastrado com sucesso!</h4>");
                  out.println("Você será redirecionado para a página de login");
        %>
    </body>
</html>