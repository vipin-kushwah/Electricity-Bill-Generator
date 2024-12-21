<%-- 
    Document   : aeerror
    Created on : Dec 4, 2023, 5:58:21 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Power Pulse</title>
        <style>
            body{
                margin: 0;
                padding: 0;
                background: url(icon/wel.jpeg);
                background-size: cover;
            }
            div{
                width: 500px;
                height: 200px;
                background-color:whitesmoke;
                top: 50%;
                left:50%;
                position: absolute;
                transform: translate(-50%,-50%);
                box-sizing: border-box;
                padding: 40px 30px;
            }
            button{
                width: 450px;
                height: 40px;
                font-size: 20px;
                font-weight: 400;
                background-color:darkgrey;
            }
            button:hover{
                background-color: green;
                color: white;
            }
        </style>
    </head>
    <body link="black" vlink="black">
        <div>
            <h1>Email already exist</h1>
            <button type="submit"><a href="aregistration.jsp">Register Again</a></button>
        </div>
    </body>
</html>
