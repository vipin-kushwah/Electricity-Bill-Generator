<%-- 
    Document   : adminValidation
    Created on : Dec 7, 2023, 5:52:13 PM
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
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            session.setAttribute("username", username);
            session.setAttribute("password", password);
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = Connect.getConnection();
                PreparedStatement p = con.prepareStatement("Select * from admin where username=?");
                p.setString(1, username);
                ResultSet rs = p.executeQuery();
                if (rs.next()) {
                    String e = rs.getString("password");
                    if (password.equals(e)) {
                        response.sendRedirect("adminhome.jsp");
                    } else {
                        response.sendRedirect("alogin.jsp");
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
