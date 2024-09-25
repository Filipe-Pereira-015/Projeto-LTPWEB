
package br.com.conexao;

import java.sql.Connection;
import java.sql.SQLException;

public class Main {
    
    public static void Main (String[] args) throws SQLException {
    
        Connection con = CriarConexao.getConexao();
    }
}