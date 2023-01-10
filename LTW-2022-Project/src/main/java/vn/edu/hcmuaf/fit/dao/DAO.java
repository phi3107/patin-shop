package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.context.DBContext;
import vn.edu.hcmuaf.fit.entity.Brand;
import vn.edu.hcmuaf.fit.entity.Product;
import vn.edu.hcmuaf.fit.entity.TypeOfProduct;
import vn.edu.hcmuaf.fit.entity.User;

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
    public List<Brand> getAllBrand(){
        List<Brand> list = new ArrayList<Brand>();
        String query = "select * from thuonghieu";

        try {
            conn = new DBContext().getConnection(); //ket noi mysql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Brand(
                        rs.getString(1),
                        rs.getString(2)
                ));
            }
        }catch (Exception e){

        }
        return list;
    }
    public List<Product> getAllProductByTID(String tid){
        List<Product> list = new ArrayList<Product>();
        String query = "select * from sanpham where id_loaisp = ?";

        try {
            conn = new DBContext().getConnection(); //ket noi mysql
            ps = conn.prepareStatement(query);
            ps.setString(1,tid);
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

    public List<Product> getAllProductByBID(String bid){
        List<Product> list = new ArrayList<Product>();
        String query = "select * from sanpham where id_thuonghieu = ?";

        try {
            conn = new DBContext().getConnection(); //ket noi mysql
            ps = conn.prepareStatement(query);
            ps.setString(1,bid);
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
    public Product getProductByPID(String pid){
        String query = "select * from sanpham where id_sp = ?";
        Product p =null;
        try {
            conn = new DBContext().getConnection(); //ket noi mysql
            ps = conn.prepareStatement(query);
            ps.setString(1,pid);
            rs = ps.executeQuery();
            while (rs.next()){
                p = new Product(
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
                );
            }
        }catch (Exception e){

        }
        return p;
    }
    public List<String> getColorByPID(String pid){
        String query = "select * from color where id_sp = ?";
        List<String> list = new ArrayList<String>();
        try {
            conn = new DBContext().getConnection(); //ket noi mysql
            ps = conn.prepareStatement(query);
            ps.setString(1,pid);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(rs.getString(3));
            }
        }catch (Exception e){

        }
        return list;
    }
    public List<String> getSizeByPID(String pid){
        String query = "select * from size where id_sp = ?";
        List<String> list = new ArrayList<String>();
        try {
            conn = new DBContext().getConnection(); //ket noi mysql
            ps = conn.prepareStatement(query);
            ps.setString(1,pid);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(rs.getString(3));
            }
        }catch (Exception e){

        }
        return list;
    }
    public List<String> getImgByPID(String pid){
        String query = "select * from images where id_sp = ?";
        List<String> list = new ArrayList<String>();
        try {
            conn = new DBContext().getConnection(); //ket noi mysql
            ps = conn.prepareStatement(query);
            ps.setString(1,pid);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(rs.getString(3));
            }
        }catch (Exception e){

        }
        return list;
    }
    public List<Product> searchByName(String txtSearch){
        List<Product> list = new ArrayList<Product>();
        String query = "select * from sanpham where ten_sp like ?";

        try {
            conn = new DBContext().getConnection(); //ket noi mysql
            ps = conn.prepareStatement(query);
            ps.setString(1,"%"+txtSearch+"%");
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
    public User login (String email, String pass){
        String query = "select * from user where email = ? and mat_khau = ?";
        try {
            conn = new DBContext().getConnection(); //ket noi mysql
            ps = conn.prepareStatement(query);
            ps.setString(1,email);
            ps.setString(2,pass);
            rs = ps.executeQuery();
            while (rs.next()){
                return new User(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8)
                );
            }
        }catch (Exception e){

        }
        return null;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
//        List<Brand> list = dao.getAllBrand();
//        for (Brand t : list){
//            System.out.println(t.getName());
//        }
        User u = dao.login("admin@gmail.com", "admin369");
        System.out.println(u.getFullName());
    }
}
