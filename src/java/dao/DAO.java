/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Bill;
import entity.BillDetail;
import entity.Cart;
import entity.Category;
import entity.Item;
import entity.Product;
import entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class DAO {
    // load du lieu tu db len 

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    // lay tat c? product 
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product order by category_id asc";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Product(
                        rs.getString(1),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }

        } catch (Exception e) {
        }

        return list;
    }

    // lay tat ca category 
    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from category";
        
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Category(rs.getString(1), rs.getString(2)));
            }

        } catch (Exception e) {
        }

        return list;
    }

    // select product by category ID 
    public List<Product> getProductByCategoryID(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product where category_id = ? ";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Product(
                        rs.getString(1),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }

        } catch (Exception e) {
        }

        return list;
    }

    // llay san pham bnag id 
    public Product getProductByID(String id) {
        String query = "select * from product where product_id = ?";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new Product(
                        rs.getString(1),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7));
            }

        } catch (Exception e) {
        }
        return null;
    }

    // search 
    public List<Product> searchProductByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where [product_name] like ?";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Product(
                        rs.getString(1),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }

        } catch (Exception e) {
        }

        return list;
    }
    // test 

    public User login(String user, String pass) {

        String query = "select * from users\n"
                + "where [user_email] = ?\n"
                + "and [user_pass] = ?";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
            }
        } catch (Exception e) {
        }

        return null;
    }

    // lay tat ca cac users 
    public ArrayList<User> getAllUser() {
        ArrayList<User> list = new ArrayList<>();
        String query = "select * from users ";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5)));
            }

        } catch (Exception e) {
            System.out.println("failed");
        }

        return list;
    }

    // check user exist 
    public User checkAccountExist(String user) {

        String query = "select * from users\n"
                + "where [user_email] = ?\n";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
            }
        } catch (Exception e) {
        }

        return null;
    }

    // signup 
    public void signup(String name, String user, String pass) {
        String query = "insert into users ( [user_name], [user_email], [user_pass], isAdmin)\n"
                + "values ( ?, ?, ?, 'FALSE') ";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);

            //list.add(new User());
            ps.setString(1, name);
            ps.setString(2, user);
            ps.setString(3, pass);

            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void insertUser(String user, String email, String pass) {
        //ArrayList<User> list = new ArrayList<>();
        String query = "insert into users ( [user_name], [user_email], [user_pass], isAdmin)\n"
                + "values ( ?, ?, ?, 'FALSE') ";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);

            //list.add(new User());
            ps.setString(1, user);
            ps.setString(2, email);
            ps.setString(3, pass);

            ps.executeUpdate();

        } catch (Exception e) {
        }

    }

    // get product by sell id 
    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product \n"
                + "where sell = ? \n"
                + "order by category_id asc";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Product(
                        rs.getString(1),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getString(7)));
            }

        } catch (Exception e) {
            System.out.println("failed");
        }

        return list;
    }

    // delet product 
    public void deleteProduct(String pid) {
        String query = "delete from product \n"
                + "where product_id = ?";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println("failed");
        }

    }

    // add 
    public void addProduct(String id, String category, String name, String price,
            String description, String quantity, String img) {

        String query = "INSERT [dbo].[product] ([product_id], "
                + "[category_id], [product_name], "
                + "[product_price], [product_describe], "
                + "[quantity], [img], sell) \n"
                + "VALUES (?, ?, ?, ?, ?, ?, ?, 1)";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, category);
            ps.setString(3, name);
            ps.setString(4, price);
            ps.setString(5, description);
            ps.setString(6, quantity);
            ps.setString(7, img);

            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println("failed");
        }

    }

    // delet user 
    public void deleteUser(String uid) {
        String query = "delete from users\n"
                + "where [user_id] = ?";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, uid);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println("failed");
        }

    }
    
    
    // edit profile 
    public User editProfile(String name, String user, String pass) {
        String query = "update users \n"
                + "set \n"
                + "[user_name] = ?, \n"
                + "[user_email]=?,\n"
                + "[user_pass]=?\n"
                + "where [user_id] = ?";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, user);
            ps.setString(3, pass);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("failed!");
        }
        return null;
    }

    // edit 
    // add 
    public void editProduct(String category, String name, String price,
            String description, String quantity, String img, String id) {

        String query = "update product\n"
                + "set\n"
                + "[category_id] = ?, \n"
                + "[product_name] = ?,\n"
                + "[product_price] = ?,\n"
                + "[product_describe] = ?,\n"
                + "[quantity] = ?,\n"
                + "[img] = ?,\n"
                + "[sell] = 1\n"
                + "where [product_id] = ?";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, img);
            ps.setString(2, category);
            ps.setString(3, name);
            ps.setString(4, price);
            ps.setString(5, description);
            ps.setString(6, quantity);
            ps.setString(7, id);

            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println("failed");
        }

    }
    
    // get user by id
        // llay san pham bnag id 
    public User getUserByID(String uid) {
        String query = "select * from users where user_id = ?";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, uid);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new User(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(6));
            }

        } catch (Exception e) {
            System.out.println("failed");
        }
        return null;
    }
    
    // edit User manager 
    // edit profile 
    public User editUserManager(String name, String user, String pass) {
        String query = "update users \n"
                + "set \n"
                + "[user_name] = ?, \n"
                + "[user_email]=?,\n"
                + "[user_pass]=?\n"
                + "where [user_id] = ?";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, user);
            ps.setString(3, pass);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("failed!");
        }
        return null;
    }
    
    // add order bill
    public void addOrder(User u, Cart cart, String payment, String address, int phone) {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        
        try {
            String sql="insert into [bill] values(?,?,?,?,?,?)";
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            ps.setInt(1, u.getUser_id());
            ps.setDouble(2, cart.getTotalMoney());
            ps.setString(3, payment);
            ps.setString(4, address);
            ps.setString(5, date);
            ps.setInt(6, phone);
            ps.executeUpdate();
            
            String sql1="select top 1 bill_id from [bill] order by bill_id desc";
            ps = con.prepareStatement(sql1);
            rs = ps.executeQuery();
            
            if(rs.next()){
                int bill_id=rs.getInt(1);
                for(Item i:cart.getItems()){
                String sql2="insert into [bill_detail] values(?,?,?,?,?,?)";
                double total = i.getQuantity()*i.getProduct().getProduct_price();
                ps = con.prepareStatement(sql2);
                ps.setInt(1, bill_id);
                ps.setString(2, i.getProduct().getProduct_id());
                ps.setInt(3, i.getQuantity());
                ps.setDouble(4, total);
                ps.executeUpdate();
            }
            }

            String sql3 = "update product set quantity = quantity - ? "
                        + "where product_id = ?";
            ps = con.prepareStatement(sql3);
            for(Item i:cart.getItems()){
                ps.setInt(1, i.getQuantity());
                ps.setString(2, i.getProduct().getProduct_id());
                ps.executeUpdate();
            }

        } catch (Exception e) {
        }
    }
    
    
        public Bill getBill() {
        List<Bill> list = new ArrayList<>();
        String sql = "select top 1 bill_id, total, date from [bill] order by bill_id desc";
        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                //return(new Bill(rs.getInt(1),rs.getFloat(2), rs.getDate(3)));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return null;
    }
    
        
        // get product by sell id 
    public List<Bill> getAllBill() {
        List<Bill> list = new ArrayList<>();
        String query = "select * from bill";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Bill(rs.getInt(1), rs.getInt(2), rs.getFloat(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getInt(7)));
            }

        } catch (Exception e) {
            System.out.println("failed");
        }

        return list;
    }
    
    // get bill detail
    public List<BillDetail> getAllBillDetail() {
        List<BillDetail> list = new ArrayList<>();
        String query = "select * from [bill_detail]";

        try {
            con = new DBContext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new BillDetail(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getFloat(5)));
            }

        } catch (Exception e) {
            System.out.println("failed");
        }

        return list;
    }

    public static void main(String[] args) {

        DAO dao = new DAO();
        List<BillDetail> list = new ArrayList<>();
        
        list = dao.getAllBillDetail();
        
        for (BillDetail o : list) {
            System.out.println(o);
        }
    }

}
