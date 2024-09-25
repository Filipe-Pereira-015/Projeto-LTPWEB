
package br.com.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class CriarConexao {
    
    public static Connection getConexao() throws SQLException {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("conectou");
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/Login", "root", "root"); 
        } catch (SQLException e){
            throw new SQLException(e);
        } catch (ClassNotFoundException e1) {
            throw new SQLException(e1);
        }
    }  
    
}
