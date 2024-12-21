<%-- 
    Document   : billdetails1
    Created on : Dec 8, 2023, 1:16:33 AM
    Author     : lenovo
--%>

<%@page import="Controller.Connect"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Power Pulse</title>
        <style>
            *{
                margin: 0;
                padding: 20px;
                box-sizing: border-box;
            }
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                font-size: 30px;
                background-image: url(icon/wel.jpeg);
                background-repeat: no-repeat;
                background-size:cover;
                width: 100%;
            }
            th{
                background-color: whitesmoke;
                color: black;
                
            }
            td{
                background-color: whitesmoke;
               
            }

        </style>
    </head>
    <body>
        <%
            String user = request.getParameter("username");
            String month = request.getParameter("month");
            String name = null;
            String meterno=null;
            String contactnumber = null;
            String email = null;
            String address = null;
            String city = null;
            try {
                Connection con = Connect.getConnection();
                PreparedStatement p = con.prepareStatement("select * from user where username=?");
                p.setString(1, user);
                ResultSet rs = p.executeQuery();
                while (rs.next()) {
                    meterno=rs.getString("meterno");
                }
                con.prepareStatement("select * from bill where meterno=?");
                p.setString(1, meterno);
                rs = p.executeQuery();
                while (rs.next()) {
                    name = rs.getString("unitconsume");
                    contactnumber = rs.getString("address");
                    email = rs.getString("amount");
                    address = rs.getString("totalbill");
                    city = rs.getString("status");
                }
            } catch (Exception e) {
                out.print(e);
            }
        %>
         <table border="1" width="90%">  
            <tr><th>Meter no</th><th>Unit Consume</th><th>Month</th><th>Address</th><th>Amount</th><th>Total Bill</th>
                <th>Status</th></tr>  
            <tr><th><%=meterno%></th><th><%=name%></th><th><%=month%></th><th><%=contactnumber%></th><th><%=email%></th><th><%=address%></th>
                <th><%=city%></th></tr>  
        </table>  
    </body>
</html>

