<%@page isErrorPage="true"%>
<%@page import="java.util.Enumeration" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 TRASITIONAL//EN"" HTTP://WWW.W3.ORG/TR/HTML4/LOOSE.DTD">
<html>
<html>
    <head>
        <style type="text/css">
            body{background-color: #fff;}
            #cabecalho{
                background-color: #fff;
                width:800px;
                height:100px
            }
            
            #corpo{
                background-color: #fff;
                width:800px;
                height:450px
            }
            
            #rodape{
                background-color: #fff;
                width:800px;
                height:100px
            }
          
        </style>     
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Error</title>
    </head>
    <body>
        <div aling="center">
            <div id="cabecalho"></div>
            <div id="corpo">
                
                <img src="Imagens/erro1.jpg"/>
                <hr/>
                <h3>E-mail e senha incorretos!</h3><br/>
                <br/>
                </hr>
                <a href="login.jsp">Tentar novamente</a> <a href="Index.jsp">Cadastre-se</a>
            </div>
            <div id="rodape"> </div>
        </div>
    </body>
</html>