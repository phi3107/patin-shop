package vn.edu.hcmuaf.fit.entity;

import vn.edu.hcmuaf.fit.entity.Product;
import vn.edu.hcmuaf.fit.db.DBConnect;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class Product_new {

    public static List<Product> getProduct_new() {
        Statement st = null;

        try {
            st = DBConnect.connect();
            ResultSet rs = st.executeQuery("select * from products_all");
            List<Product> re = new LinkedList();

            while(rs.next()) {
                re.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getLong(7), rs.getLong(8), rs.getString(9), rs.getLong(10)));
            }

            rs.close();
            st.close();
            return re;
        } catch (SQLException | ClassNotFoundException var3) {
            var3.printStackTrace();
            return new LinkedList();
        }
    }
}


