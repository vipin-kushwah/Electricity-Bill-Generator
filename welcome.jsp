<%-- 
    Document   : welcome
    Created on : Dec 4, 2023, 2:53:55 PM
    Author     : lenovo
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles.css">
        <title>Power Pulse</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                font-size: 30px;
                background-image: url(icon/wel.jpeg);
                background-repeat: no-repeat;
                background-size:cover;
                width: 100%;
            }

            .navbar {
                background-color: whitesmoke;
                width: auto;
                height: 90px;
                padding: 10px;
                box-sizing: border-box;
                border-radius: 200px;
                display: block;
                text-transform: uppercase;
                font-weight: bold;
                text-align: center;
                margin-top: 30px;
                margin-left: 20px;
                margin-right: 20px;
            }

            .navbar a {
                float: left;
                display: block;
                color: black;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                margin-left: 20px;
            }

            .navbar a:hover {
                background-color:darkgray;
                color: white;
                border-radius: 200px;
            }

            .navbar a.active {
                background-color: darkgray;
                color: white;
                border-radius: 200px;
            }

        </style>
    </head>
    <body>

        <div class="navbar">
            <a href="alogin.jsp">Admin Login</a>
            <a href="ulogin.jsp">User Login</a>
            <a href="uregistration.jsp">Registration</a>
            <a href="about.jsp">About us</a>
        </div>

    </body>
</html>

