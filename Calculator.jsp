<%-- 
    Document   : Calculator
    Created on : Nov 27, 2023, 7:57:41 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.*" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator Page</title>
        <style>

            body{
                margin: 0;
                padding: 0;
                background-color: whitesmoke;
                font-family: sans-serifs;
            }



        </style>
    </head>
    <body>
        <%
            Runtime.getRuntime().exec("calc.exe");
        %>
    </body>
</html>
