<%-- 
    Document   : view1
    Created on : Dec 8, 2023, 12:57:10 AM
    Author     : lenovo
--%>

<%@page import="java.sql.*"%>
<%@page import="Controller.Connect"%>
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
            String name = null;
            String meterno=null;
            String username = null;
            String contactnumber = null;
            String email = null;
            String address = null;
            String city = null;
            String state = null;
            String pincode = null;
            try {
                Connection con = Connect.getConnection();
                PreparedStatement p = con.prepareStatement("select * from user where username=?");
                p.setString(1, user);
                ResultSet rs = p.executeQuery();
                while (rs.next()) {
                    meterno=rs.getString("meterno");
                    name = rs.getString("name");
                    username = rs.getString("username");
                    contactnumber = rs.getString("contactnumber");
                    email = rs.getString("email");
                    address = rs.getString("address");
                    city = rs.getString("city");
                    state = rs.getString("state");
                    pincode = rs.getString("pincode");
                }
            } catch (Exception e) {
                out.print(e);
            }
        %>
         <table border="1" width="90%">  
            <tr><th>Meter no</th><th>Name</th><th>Username</th><th>Contact Number</th><th>Email</th><th>Address</th>
                <th>City</th><th>State</th><th>Pincode</th></tr>  
            <tr><th><%=meterno%></th><th><%=name%></th><th><%=username%></th><th><%=contactnumber%></th><th><%=email%></th><th><%=address%></th>
                <th><%=city%></th><th><%=state%></th><th><%=pincode%></th></tr>  
        </table>  
    </body>
</html>
