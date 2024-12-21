<%-- 
    Document   : alpha2
    Created on : Dec 1, 2023, 1:57:10 AM
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
                PreparedStatement p=con.prepareStatement("update user set username=? where email=?");
                p.setString(1, username);
                p.setString(2, email);
                p.executeUpdate();
                request.getRequestDispatcher("ulogin.jsp").forward(request, response);
            }catch(Exception e){
                out.print(e);
            }
        %>
        
    </body>
</html>
