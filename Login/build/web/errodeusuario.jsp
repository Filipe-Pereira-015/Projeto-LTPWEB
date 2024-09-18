<%-- 
    Document   : errodeusuario
    Created on : 08/03/2024, 10:37:11
    Author     : laboratorio
--%>

<%@page isErrorPage="true"%>
<%@page import="java.util.Enumeration"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            body{
                background-color: #fff;
            }
            #cabecalho, #rodape{
                background-color: #fff;
                width: 800px;
                height: 100px;
            }
            #cabecalho{
                background-color: #fff;
                width: 800px;
                height: 450px;
            }
            
        </style>
    </head>
    <body>
        <div align="center">
            <div id="cabecalho"></div>
            <div id="corpo">
                
                <img src="img/erro.gif"/>
                <hr/>
                    <h3> Email e Senha Incorretos</h3><br/>
                <br/>
                <hr/>
                <a href="login.jsp">Tentar Novamente</a> <a href="index.jsp">Cadastre-se</a>
                
            </div>
            <div id="rodape"></div>
        </div>
    </body>
</html>
