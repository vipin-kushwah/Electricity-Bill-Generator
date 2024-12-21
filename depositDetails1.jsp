<%-- 
    Document   : depositDetails1.jsp
    Created on : Dec 7, 2023, 10:06:04 PM
    Author     : lenovo
--%>

<%@page import="java.sql.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Model.billingBean"%>
<%@page import="Controller.Connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            String meterno = request.getParameter("options");
            String month = request.getParameter("month");
            String unitconsume = null;
            String amount = null;
            String address = null;
            String totalbill = null;
            String status = null;
            try {
                Connection con = Connect.getConnection();
                PreparedStatement ps = con.prepareStatement("select * from bill where meterno=? and month=?");
                ps.setString(1, meterno);
                ps.setString(2, month);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    unitconsume = rs.getString("unitconsume");
                    address = rs.getString("address");
                    amount = rs.getString("amount");
                    totalbill = rs.getString("totalbill");
                    status = rs.getString("status");
                }
            } catch (Exception e) {
                out.print(e);
            }
        %>
        <table border="1" width="90%">  
            <tr><th>Meter Number</th><th>Unit Consume</th><th>Month</th><th>Address</th><th>Amount</th><th>Total Bill</th>
                <th>Status</th></tr>  
            <tr><td><%=meterno%></td><td><%=unitconsume%></td><td><%=month%></td>  
                <td><%=address%></td><td><%=amount%></td><td><%=totalbill%></td><td><%=status%></td></tr>   

        </table> 
    </body>
</html>
