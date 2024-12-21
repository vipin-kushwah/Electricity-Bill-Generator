<%-- 
    Document   : userValidation
    Created on : Dec 8, 2023, 12:04:24 AM
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
        <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            session.setAttribute("username", username);
            session.setAttribute("password", password);
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = Connect.getConnection();
                PreparedStatement p = con.prepareStatement("Select * from user where username=?");
                p.setString(1, username);
                ResultSet rs = p.executeQuery();
                if (rs.next()) {
                    String e = rs.getString("password");
                    if (password.equals(e)) {
                        response.sendRedirect("userhome.jsp");
                    } else {
                        response.sendRedirect("ulogin.jsp");
                    }

                } else {
                    response.sendRedirect("welcome.jsp");
                }

            } catch (Exception e) {
                out.print(e);
            }


        %>
    </body>
</html>

    </body>
</html>
