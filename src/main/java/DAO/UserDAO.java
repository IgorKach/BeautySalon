package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import MODEL.user;

import javax.xml.registry.infomodel.User;

public class UserDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/sakila?useSSl=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "1111";
    private String Driver = "com.mysql.cj.jdbc.Driver";
    private static final String InsertUsersSql = "Insert into user" +
            "(name, email, phone) values" + "(?,?,?)";


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

    public void InsertUser(user user) {
        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(InsertUsersSql)){
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPhone());
    }
        catch (Exception e){
        e.printStackTrace();
        }
    }

}
