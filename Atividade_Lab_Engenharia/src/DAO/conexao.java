package DAO;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;

public class conexao extends HttpServlet {

    public conexao() {

    }

    public static Connection getConectaMYSQL() {
        try {
        final String DRIVER = "com.mysql.jdbc.Driver";
        Class.forName(DRIVER);
        final String Usuario = "root";
        final String Senha = "root";
        final String url = "jdbc:mysql://localhost:3306/Autentica";

        Connection con = DriverManager.getConnection(url, Usuario, Senha);
        return con;

        }catch (ClassNotFoundException | SQLException e){
            System.out.println("Banco não encontrado");
            return null;
        }
    }
}