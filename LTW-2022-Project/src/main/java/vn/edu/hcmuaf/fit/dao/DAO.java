package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.context.DBContext;
import vn.edu.hcmuaf.fit.entity.Product;
import vn.edu.hcmuaf.fit.entity.TypeOfProduct;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct(){
        List<Product> list = new ArrayList<Product>();
        String query = "select * from sanpham";

        try {
            conn = new DBContext().getConnection(); //ket noi mysql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(13)
                ));
            }
        }catch (Exception e){

        }
        return list;
    }
    public List<TypeOfProduct> getAllTypeOfProduct(){
        List<TypeOfProduct> list = new ArrayList<TypeOfProduct>();
        String query = "select * from loaisp";

        try {
            conn = new DBContext().getConnection(); //ket noi mysql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new TypeOfProduct(
                        rs.getString(1),
                        rs.getString(2)
                ));
            }
        }catch (Exception e){

        }
        return list;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<TypeOfProduct> list = dao.getAllTypeOfProduct();
        for (TypeOfProduct t : list){
            System.out.println(t.getName());
        }
    }
}
