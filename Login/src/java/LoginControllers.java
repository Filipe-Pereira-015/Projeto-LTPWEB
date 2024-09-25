import br.com.conexao.CriarConexao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginControllers extends HttpServlet {
    
    // Private static final long serialVersionUID = 1L; // Uncomment if needed

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String emailBuscado = "";
        String senhaBuscada = "";
        Connection con = null; // Initialize connection
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String sql = "SELECT * FROM tb_login WHERE email = ? AND senha = ?"; // Fixed typo from 'were' to 'where'

        try {
            con = CriarConexao.getConexao();
            try (PreparedStatement stmt = con.prepareStatement(sql)) {
                stmt.setString(1, email);
                stmt.setString(2, senha);

                try (ResultSet rs = stmt.executeQuery()) {
                    if (rs.next()) { // Use if instead of while for a single user check
                        emailBuscado = rs.getString("email");
                        senhaBuscada = rs.getString("senha"); // Fixed variable scope issue
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            request.getRequestDispatcher("errodeusuario.jsp").forward(request, response); // Forward on error
            return; // Exit method after error
        } finally {
            if (con != null) {
                try {
                    con.close(); // Close connection in finally block
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        if (emailBuscado.equals(email) && senhaBuscada.equals(senha)) { // Change to && for correct validation
            HttpSession session = request.getSession();
            session.setAttribute("email", email);
            request.getRequestDispatcher("logado.jsp").forward(request, response);
        } else {
            System.out.println(emailBuscado + "-" + email);
            System.out.println(senhaBuscada + "-" + senha);
            request.getRequestDispatcher("errodeusuario.jsp").forward(request, response);
        }
    }
}