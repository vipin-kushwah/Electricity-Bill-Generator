<%-- 
    Document   : alogin
    Created on : Dec 7, 2023, 3:34:49 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
            <form id="login-form" action="adminValidation.jsp" method="post" onsubmit="return validateForm()">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                
                <a href="fusername.jsp">Forgot Password</a><br>
                <a href="fpassword.jsp">Forgot Username</a><br><br>

                <button type="submit">Login</button>
            </form>
        </div>

        <script>
            function validateForm() {
                var username = document.getElementById("username").value;
                var password = document.getElementById("password").value;

                if (username === "" || password === "") {
                    alert("Please enter both username and password.");
                    return false;
                } else {
                    // Perform further validation or submit the form
                    alert("Login successful!");
                    return true;
                    // You can redirect or perform other actions here
                }
            }
        </script>

    </body>
</html>

