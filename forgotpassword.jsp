<%-- 
    Document   : forgotpassword
    Created on : Dec 8, 2023, 1:59:56 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Power Pulse</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-image: url(icon/wel.jpeg);
                background-repeat: no-repeat;
                background-size:cover;
                width: 100%;
                margin: 0;
                display: flex;
                align-items: center;
                justify-content: center;
                height: 100vh;
            }

            #login-container {
                background-color:whitesmoke;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                width: 500px;
                text-align: center;
                font-size: 35px;
            }

            input {
                width: 100%;
                padding: 10px;
                margin: 8px 0;
                box-sizing: border-box;
                border: 1px solid #ccc;
                border-radius: 4px;
                font-size: 30px;
            }

            button {
                background-color: #4caf50;
                color: white;
                padding: 10px 15px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-size: 30px;
            }

            button:hover {
                background-color: #45a049;
            }
            a{
                text-decoration: none;
                font-size: 20px;
                
            }
        </style>
    </head>
    <body>

        <div id="login-container">
            <h2>Login</h2>
            <form id="login-form" action="alpha.jsp" method="post" 
                

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                <label for="email">Email:</label>
                <input type="text" id="email" name="email" required>
                
               

                <button type="submit">Login</button>
            </form>
        </div>

       
    </body>
</html>




