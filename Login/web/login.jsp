<%-- 
    Document   : login
    Created on : 08/03/2024, 09:32:57
    Author     : laboratorio
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <script type="text/javascript">
            function validarLogin(){
                if(document.formLogin.email.value === ""){
                    alert("Campo Usuário Não Informado");
                    document.formLogin.email.focus();
                    return false;
                }
                if(document.formLogin.senha.value === ""){
                    alert("Campo Senha Não Informado");
                    document.formLogin.senha.focus();
                    return false;
                }
                
                document.formLogin.submit();
            }
        </script>
        <title>ACessar</title>
    </head>
    <body>
    
        <form action="Login" name="formLogin" method="post">
            <p align="center">
                <table>                    
                    <tr><td>Usuário:</td><td><input type="text" name="email"></td></tr>
                    <tr><td>Senha:</td><td><input type="password" name="senha"></td></tr>
                    <tr><td colspan="2" align="center"><input type="button" 
                        value="Entrar" onclick="validarLogin()"></td></tr>
                </table>
            </p>
        </form>
    </body>
</html>
