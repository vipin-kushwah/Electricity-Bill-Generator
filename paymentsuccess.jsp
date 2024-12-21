<%-- 
    Document   : paymentsuccess
    Created on : Nov 30, 2023, 8:50:01 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Success  Page</title>
        <style>
            body{
                font-family: Arial, sans-serif;
                background-image: url(icon/wel.jpeg);
                background-repeat: no-repeat;
                background-size:cover;
                width: 100%;
                margin: 0;
                
                height: 100vh;
            }
            img{
                margin: auto;
                margin-top: 40px;
                width: 40%;
                display: block;
                justify-content: center;
                align-items: center;
                height: 60vh;

            }

            button{
                top: 80%;
                display: block;
                margin: auto;
                width: 100px;
                height: 60px;
                background-color: green;
                color: black;
                font-size: 30px;
                padding: 0;
            }
        </style>
    </head>
    <body>

        <img src="icon/payment.jpg" alt="payment Succesfull">


        <button class="submit-btn"><a href="userhome.jsp"> Home </button>

    </body>
</html>
