<%-- 
    Document   : logado
    Created on : 08/03/2024, 10:51:31
    Author     : laboratorio
--%>
<%@page import="br.com.conexao.CriarConexao"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" 
        pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Logado</title>
    </head>
    <body>
        <%
            String email = (String) session.getAttribute("email");
        %>
        
        Seja bem Vindo : <%=email %> | <a href="remover.jsp">Sair</a>
        <h3>Usuários cadastrados no sistema: </h3>
        
        <br>
        <table width="700px" border="1" cellspacing="" >
            <tr>
                <td><strong>Id</strong></td>
                <td><strong>Nome</strong></td>
                <td><strong>Email</strong></td>
                <td><strong>Senha</strong></td>
            </tr>
        <%
            int id = 0;
            String nome = "";
            String emails = "";
            String senha = "";
            
            Connection conn = CriarConexao.getConexao();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from tb_login");
            while (rs.next()){
                id = rs.getInt("id");
                nome = rs.getString("nome");
                emails = rs.getString("email");
                senha = rs.getString("senha");
            
        %>
        
            <tr>
                <td><%=id %></td>
                <td><%=nome %></td>
                <td><%=emails %></td>
                <td><%=senha %></td>
                <td><a href="logado.jsp?id=<%=id%>&nome=<%=nome%>&email=
                       <%=email%>&senha=<%=senha%>">Editar</a></td>
            </tr>
        <% }
            rs.close();
            stmt.close();
            conn.close();
        %>
        </table>
        <form action="UpdateLogin" method="post">
            <table>
                <tr>
                    <td><strong>Id</strong></td>
                    <td><strong>Nome</strong></td>
                    <td><strong>Email</strong></td>
                    <td><strong>Senha</strong></td>
                </tr>
                <tr>
                    <td><input type="text" name="id" size="2" value="<%=request.getParameter("id")%>"></td>
                    <td><input type="text" name="nome" size="35" value="<%=request.getParameter("nome")%>"></td>
                    <td><input type="text" name="email" size="35" value="<%=request.getParameter("email")%>"></td>
                    <td><input type="text" name="senha" size="10" value="<%=request.getParameter("senha")%>"></td>
                    <input type="hidden" name="ac" value="atualizar">
                </tr>
            </table>
                <input type="submit" value="atualizar">
        </form>
    <br><br>
    <a href="remover.jsp">Sair</a>
    </body>
</html>
