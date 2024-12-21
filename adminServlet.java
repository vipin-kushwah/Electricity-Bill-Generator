/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.adminBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lenovo
 */
public class adminServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String adminname = request.getParameter("adminname");
        String username = request.getParameter("username");
        String contactnumber = request.getParameter("contactnumber");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        PrintWriter out = response.getWriter();


        adminBean admin = new adminBean();
        admin.setAdminname(adminname);
        admin.setUsername(username);
        admin.setContactnumber(contactnumber);
        admin.setEmail(email);
        admin.setPassword(password);

       try {
            Connection con = Connect.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from admin where username=?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                request.getRequestDispatcher("auerror.jsp").forward(request, response);
            }

            ps = con.prepareStatement("select * from admin where email=?");
            ps.setString(1, email);
            rs = ps.executeQuery();
            if (rs.next()) {
                request.getRequestDispatcher("aeerror.jsp").forward(request, response);
            }

            ps = con.prepareStatement("insert into admin(adminname,username,contactnumber,email,password) values(?,?,?,?,?)");
            ps.setString(1, adminname);
            ps.setString(2, username);
            ps.setString(3, contactnumber);
            ps.setString(4, email);
            ps.setString(5, password);
            ps.executeUpdate();
            request.getRequestDispatcher("adminhome.jsp").forward(request, response);


        } catch (Exception e) {
            out.print(e);
        }

    }
}
