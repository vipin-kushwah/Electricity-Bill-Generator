<%-- 
    Document   : payment
    Created on : Nov 29, 2023, 10:59:53 PM
    Author     : lenovo
--%>

<%@page import="java.sql.*"%>
<%@page import="controller.Connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user = request.getParameter("username");
            String month = request.getParameter("month");
            String meterno= null;
            try{
               Connection con=Connect.getConnection();
               PreparedStatement p = con.prepareStatement("select * from user where username=?");
                p.setString(1, user);
                ResultSet rs = p.executeQuery();
                while (rs.next()) {
                    meterno=rs.getString("meterno");
                }
               p=con.prepareStatement("update bill set status=? where meterno=? and month=?");
               p.setString(1, "Paid");
               p.setString(2, meterno);
               p.setString(3,month);
               p.executeUpdate();
               response.sendRedirect("paymentsuccess.jsp");
            }catch(Exception e){
                out.print(e);
            }
        %>
    </body>
</html>
