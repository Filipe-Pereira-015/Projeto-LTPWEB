/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.conexao;

import java.sql.Connection;
import java.sql.SQLException;

/**
 *
 * @author Jonathan
 */
public class Main {
    public static void main(String[] args) throws SQLException {
        Connection con = CriarConexao.getConexao();
    }
}
