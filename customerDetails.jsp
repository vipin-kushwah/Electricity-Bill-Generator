<%-- 
    Document   : customerDetails
    Created on : Dec 7, 2023, 6:44:43 PM
    Author     : lenovo
--%>

<%@page import="java.util.List"%>
<%@page import="Model.userBean"%>
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
            List<userBean> list = Connect.getAllRecords();
            request.setAttribute("list", list);
        %>
        <table border="1" width="90%">  
            <tr><th>Meter no</th><th>Name</th><th>Username</th><th>Contact Number</th><th>Email</th><th>Address</th>
                <th>City</th><th>State</th><th>Pincode</th></tr>  
                    <c:forEach items="${list}" var="u">  
                <tr><td>${u.getMeterno()}</td><td>${u.getName()}</td><td>${u.getUsername()}</td>  
                    <td>${u.getContactnumber()}</td><td>${u.getEmail()}</td><td>${u.getAddress()}</td><td>${u.getCity()}</td><td>${u.getState()}</td><td>${u.getPincode()}</td></tr>   
                </c:forEach>  
        </table>  
    </body>
</html>
