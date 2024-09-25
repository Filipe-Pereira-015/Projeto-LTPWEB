<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 TRASITIONAL//EN"" HTTP://WWW.W3.ORG/TR/HTML4/LOOSE.DTD">
<html>
    <head>
        <script type="tex/javascript">
            function validarLogin(){
                if(document.formlogin.email.value===""){
                    alert("Campo Usuário Não Informado");
                    return false;
                }
                if(document.formlogin.senha.value===""){
                    alert("Campo Senha Não Informado");
                    return false;
                }
                
                document.formlogin.submit();
    }
            
       </script>
    </head>
        <title>Acessar</title>
        </head>
        <body>
            <!-- <form name="formlogin" action="login" method="post">  -->
            <form name="formlogin" action="login" method="post">
                <p aling="center">
                <table>
                    <tr><td>Usuário:</td><td><input type="text" name="email"/></td></tr>
                    <tr><td>Senha:</td><td><input type="password" name="senha"/></td></tr>
                    <tr><td colspan="2" aling="center"><input type="button" value="Entrar" onclick="validarlogin()"/></td></tr>
                </table>
                </p>
            </form>          
        </body>
</html>