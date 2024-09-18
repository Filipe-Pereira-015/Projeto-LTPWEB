/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.login;

import br.com.conexao.CriarConexao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author laboratorio
 */
public class UpdateLoginServlet extends HttpServlet{
    
    private static final long serialVersionUID = 1L;
        public UpdateLoginServlet(){
            super();
        }
        
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
            PrintWriter writer = response.getWriter();
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");
            String id = request.getParameter("id");
            
            Connection con;
            try {
                con = CriarConexao.getConexao();
                
                Usuario u = new Usuario();
                u.setNome(nome);
                u.setEmail(email);
                u.setSenha(senha);
                u.setId(Integer.valueOf(id));
                
                UsuarioDao dao = new UsuarioDao(con);
                dao.atualizar(u);                
                request.getRequestDispatcher("logado.jsp").forward(request, response);
            } catch (SQLException e){
                e.printStackTrace();
            }
        }
}
