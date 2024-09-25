
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


public class CadastroLoginServlet extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    
    public CadastroLoginServlet() {
        super();
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter writer = response.getWriter();
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        
        Connection con;
        try {
            
            con = CriarConexao.getConexao();
            
            Usuario u = new Usuario();
            u.setEmail(email);
            u.setSenha(senha);
            
            UsuarioDao dao = new UsuarioDao(con);
            dao.adicionar(u);
            request.setAttribute("email", u.getEmail());
            request.getRequestDispatcher("cadastrado.jsp").forward(request, response);
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
  }
}