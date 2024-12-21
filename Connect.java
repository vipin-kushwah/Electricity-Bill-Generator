
package Controller;

import Model.billingBean;
import Model.calculateBean;
import Model.metreBean;
import Model.updateBean;
import Model.userBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Connect {
    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/uvesh","root","");
        } catch (Exception e) {
            System.out.println(e);
        }
        return con;
    }
    
    public static List<userBean> getAllRecords() {
        List<userBean> list = new ArrayList<>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from user ");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                userBean u = new userBean();
                u.setMeterno(rs.getString("meterno"));
                u.setName(rs.getString("name"));
                u.setUsername(rs.getString("username"));
                u.setContactnumber(rs.getString("contactnumber"));
                u.setEmail(rs.getString("email"));
                u.setAddress(rs.getString("address"));
                u.setCity(rs.getString("city"));
                u.setState(rs.getString("state"));
                u.setPassword(rs.getString("password"));
                u.setPincode(rs.getString("pincode"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
   
    
     public static List<calculateBean> fetchmeterno() {
        List<calculateBean> options = new ArrayList<>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from user");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String meterno = rs.getString("meterno");
                options.add(new calculateBean(meterno));
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return options;
    }
     
     public static List<calculateBean> fetch(String opp) {
        List<calculateBean> options = new ArrayList<>();
        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from user where meterno=?");
            ps.setString(1, opp);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String username=rs.getString("username");
                String contactnumber = rs.getString("contactnumber");
                String email = rs.getString("email");
                String address = rs.getString("address");
                String city = rs.getString("city");
                String state = rs.getString("state");
                String pincode = rs.getString("pincode");
                options.add(new calculateBean(name,username,contactnumber,email,address,city,state,pincode ));
            }
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return options;
    }
   public static List<updateBean> getAllRecord(String username) {
        List<updateBean> list = new ArrayList<>();

        try {
            Connection con = getConnection();
            PreparedStatement ps = con.prepareStatement("select * from user where username=? ");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                updateBean u = new updateBean();
                u.setMeterno(rs.getString("meterno"));
                u.setName(rs.getString("name"));
                u.setUsername(rs.getString("username"));
                u.setContactnumber(rs.getString("contactnumber"));
                u.setEmail(rs.getString("email"));
                u.setAddress(rs.getString("address"));
                u.setCity(rs.getString("city"));
                u.setState(rs.getString("state"));
                u.setPassword(rs.getString("password"));
                u.setPincode(rs.getString("pincode"));
                list.add(u);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
   
   
}
