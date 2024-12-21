<%-- 
    Document   : Logout
    Created on : Nov 27, 2023, 10:42:41 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
    <body>
       <%
           session.invalidate();
           request.getRequestDispatcher("welcome.jsp").forward(request, response);
       %>
    </body>
</html>
