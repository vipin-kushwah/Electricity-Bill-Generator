<%-- 
    Document   : alpha3
    Created on : Dec 8, 2023, 2:08:03 AM
    Author     : lenovo
--%>

<%@page import="Controller.Connect"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String username=request.getParameter("username");
            String email=request.getParameter("email");
            try{
                Connection con=Connect.getConnection();
                PreparedStatement p=con.prepareStatement("update admin set username=? where email=?");
                p.setString(1, username);
                p.setString(2, email);
                p.executeUpdate();
                request.getRequestDispatcher("alogin.jsp").forward(request, response);
            }catch(Exception e){
                out.print(e);
            }
        %>
    </body>
</html>
