package vn.edu.hcmuaf.fit.dao;

import javafx.application.Application;
import javafx.stage.Stage;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;



import vn.edu.hcmuaf.fit.db.DBConnect;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class AdminDAO {
        private static AdminDAO adminDAO;

        // constructor null
        private AdminDAO() {
        }

        public static AdminDAO getInstance() {
            if (adminDAO == null) {
                adminDAO = new AdminDAO();
            }
            return adminDAO;
        }

        public long sameSql(String sql) {
            long result = 0;
            try {
                PreparedStatement psupdate = DBConnect.connect().getConnection().prepareStatement(sql);
                ResultSet rs = psupdate.executeQuery();
                while (rs.next()) {
                    result = rs.getInt(1);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                return 0;
            }
            return result;
        }



        public static void main(String[] args) {
            }
    }

