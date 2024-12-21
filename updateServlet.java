/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.metreBean;
import Model.userBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lenovo
 */
public class updateServlet extends HttpServlet {

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       PrintWriter out=response.getWriter();
        String meterno = request.getParameter("meterno");
        String name = request.getParameter("name");
        String username = request.getParameter("username");
        String contactnumber = request.getParameter("contactnumber");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String password = request.getParameter("password");
        String pincode = request.getParameter("pincode");
        String meterlocation = request.getParameter("meterlocation");
        String metertype = request.getParameter("metertype");
        String phasecode = request.getParameter("phasecode");
        String billtype = request.getParameter("billtype");
         
        userBean b1=new userBean();
         b1.setMeterno(meterno);
         b1.setName(name);
         b1.setUsername(username);
         b1.setContactnumber(contactnumber);
         b1.setEmail(email);
         b1.setAddress(address);
         b1.setCity(city);
         b1.setState(state);
         b1.setPassword(password);
         b1.setPincode(pincode);
         
         metreBean b2=new metreBean();
         b2.setMeterno(meterno);
         b2.setMeterlocation(meterlocation);
         b2.setMetertype(metertype);
         b2.setPhasecode(phasecode);
         b2.setBilltype(billtype);
         
        try{
           Connection con=Connect.getConnection();
            
            PreparedStatement ps = con.prepareStatement("select * from user where username=?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                request.getRequestDispatcher("uuerror.jsp").forward(request, response);
            }

            ps = con.prepareStatement("select * from user where email=?");
            ps.setString(1, email);
            rs = ps.executeQuery();
            if (rs.next()) {
                request.getRequestDispatcher("ueerror.jsp").forward(request, response);
            }

           ps=con.prepareStatement(
                   "update user set name=?,username=?,contactnumber=?,email=?,"
                           + "address=?,city=?,state=?,pincode=? where meterno=?");
           
           ps.setString(1, name);
           ps.setString(2, username);
           ps.setString(3, contactnumber);
           ps.setString(4, email);
           ps.setString(5, address);
           ps.setString(6, city);
           ps.setString(7, state);
           ps.setString(8, pincode);
           ps.setString(9, meterno);
           ps.executeUpdate();
           
           ps=con.prepareStatement(
                   "update meterinfo set meterlocation=?,metertype=?,phasecode=?,billtype=? where meterno=?");
           
           ps.setString(1, meterlocation);
           ps.setString(2, metertype);
           ps.setString(3, phasecode);
           ps.setString(4, billtype);
           ps.setString(5, meterno);
           ps.executeUpdate();
           
           request.getRequestDispatcher("userhome.jsp").forward(request, response);
        }catch(Exception e){
            out.println(e);
        }
    }
}
