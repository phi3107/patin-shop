package vn.edu.hcmuaf.fit.context;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBContext {
    public Connection getConnection() throws Exception{
        String url = "jdbc:mysql://localhost/patin_shop";
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url, "root", "");
    }
}
