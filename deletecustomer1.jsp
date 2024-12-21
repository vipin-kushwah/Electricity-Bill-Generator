<%-- 
    Document   : deletecustomer1
    Created on : Dec 7, 2023, 11:40:25 PM
    Author     : lenovo
--%>

<%@page import="java.sql.*"%>
<%@page import="Controller.Connect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String meter = request.getParameter("options");
            try{
                Connection con=Connect.getConnection();
                PreparedStatement ps=con.prepareStatement("delete from user where meterno=?");
                ps.setString(1, meter);
                ps.executeUpdate();
                response.sendRedirect("customerDetails.jsp");
            }catch(Exception e){
                out.print(e);
            }
        %>
    </body>
</html>
