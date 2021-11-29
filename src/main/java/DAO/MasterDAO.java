package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MasterDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/sakila?useSSl=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "1111";
    private String Driver = "com.mysql.cj.jdbc.Driver";

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName(Driver);
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }
}
