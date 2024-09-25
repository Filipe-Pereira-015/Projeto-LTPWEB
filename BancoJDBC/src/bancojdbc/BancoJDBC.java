/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bancojdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;
/**
 *
 * @author laboratorio
 */
public class BancoJDBC{
private Connection con;
private Statement stmt;

public BancoJDBC(){
try{
Class.forName("com.mysql.jdbc.Driver");
System.out.println("Driver encontrado!");
} catch(ClassNotFoundException e){
System.out.println("Driver não encontrado!" + e);
System.out.println("Error: "+ e.getMessage());
}
String url = "jdbc:mysql://localhost:3306/banco";
String user = "root";
String password = "";
try{
con=DriverManager.getConnection(url,user,password);
stmt = con.createStatement();
}catch(SQLException e){
System.out.println("Error: "+ e.getMessage());
}
}

private void listarRegistros(){
try{
ResultSet rs;
rs = stmt.executeQuery("SELECT * FROM Empregado");
while ( rs.next() ) {
int matricula = rs.getInt("matricula");
String nome = rs.getString("nome");
String telefone =rs.getString("telefone");
float salario = rs.getFloat("salario");
System.out.println(matricula + "\t" + nome + "\t" + telefone + "\t" + salario);
}
}catch(SQLException e){
System.out.println("Erro: "+ e.getMessage()); } 
}

private void inserirRegistros(int mat, String n, String tel, String sal){
try{
stmt.executeUpdate("INSERT INTO Empregado VALUES ("+mat+",'"+n+"','"+tel+"','"+sal+"')");
}catch(SQLException e){
System.out.println("Erro: "+ e.getMessage());
}
}
private void alterarRegistros(String sal, int mat){
try{
stmt.executeUpdate("UPDATE Empregado SET salario= '"+sal+"' WHERE matricula="+mat+"");
}catch(SQLException e){
System.out.println("Erro: "+ e.getMessage());
}
}
private void apagarRegistros(int mat){
try{
stmt.executeUpdate("DELETE FROM Empregado WHEREmatricula="+mat+"");
}catch(SQLException e){
System.out.println("Erro: "+ e.getMessage());
} }

public static void main(String[] args) {
BancoJDBC bancoJDBC = new BancoJDBC();
int valor = 0;

System.out.println(" 1 - inserir \n 2 - alterar \n 3 - listar \n 4 - excluir \n 5 - sair \nDigite sua opção");
System.in.mark(valor);

}
}
