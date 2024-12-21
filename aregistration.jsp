<%-- 
    Document   : aregistration
    Created on : Dec 4, 2023, 3:31:42 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Power Pulse</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                font-size: 40px;
                margin: 0;
                padding: 20px;
                background-image: url(icon/wel.jpeg);
                background-repeat: no-repeat;
                background-size:cover;
                width: 100%;
            }

            .container {
                max-width: 600px;
                margin: 0 auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            label {
                display: block;
                margin-bottom: 8px;
            }

            input {
                width: 100%;
                height: 50px;
                padding: 8px;
                margin-bottom: 16px;
                box-sizing: border-box;
                font-size: 30px;
            }

            button {
                background-color: #4CAF50;
                color: #fff;
                padding: 10px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                width: 100%;
                height: 50px;
                font-size: 30px;
            }

            button:hover {
                background-color: #45a049;
            }

            span{
                color: red;

            }

        </style>
    </head>
    <body>
        <div class="container">
            <h2>Registration Form</h2>
            <form id="registrationForm" action="adminServlet" onsubmit="return validateForm()" method="post">
                <label for="adminname">Name</label>
                <input type="text" id="adminname" name="adminname" value="" >
                <span id="error"></span>

                <label for="username">Username:</label>
                <input type="text" id="username" name="username" value="" >
                <span id="uerror"></span>

                <label for="contactnumber">Contact Number</label>
                <input type="text" id="contactnumber" name="contactnumber" value="">
                <span id="merror"></span>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="" >
                <span id="eerror"></span>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" value="" >
                <span id="perror"></span>

                <label for="confirmPassword">Confirm Password:</label>
                <input type="password" id="confirmPassword" name="confirmPassword" value="">
                <span id="cerror"></span>

                <button type="submit">Register</button>
            </form>
        </div>

        <script>
            function validateForm() {
            var adminname = document.getElementById("adminname").value;
            var username = document.getElementById("username").value;
            var contactnumber = document.getElementById("contactnumber").value;
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;
            var confirmPassword = document.getElementById("confirmPassword").value;
            var namechecker = /^[A-Za-z ]{3,30}$/;
            var passwordchecker = /^(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*])[a-zA-z0-9!@#$%^&*]{8,32}$/;
            var userchecker = /^[A-Za-z0-9_. ]{5,30}$/;
            var emailchecker = /^[A-za-z_.0-9]{3,}@[A-za-z]{2,}[.]{1}[A-za-z.]{2,8}$/;
            var mobilechecker = /^[6789]{1}[0-9]{9}$/;
            if (namechecker.test(adminname)) {
            document.getElementById("error").innerHTML = "";
            retutn true;
            } else {
            document.getElementById("error").innerHTML = "name contain only alphabets and length must be greater than 3 and less than 30 character ";
            return false;
            }
            if (userchecker.test(username)) {
            document.getElementById("uerror").innerHTML = "";
            retutn true;
            } else {
            document.getElementById("uerror").innerHTML = "username contain alphabets, digits, underscore(_), dot(.) space only and length must be greater than 5 and less than30";
            return false;
            }
            if (mobilechecker.test(contactnumber)) {
            document.getElementById("merror").innerHTML = "";
            retutn true;
            } else {
            document.getElementById("merror").innerHTML = "Invalid contact number";
            return false;
            }
            if (emailchecker.test(email)) {
            document.getElementById("eerror").innerHTML = "";
            retutn true;
            } else {
            document.getElementById("eerror").innerHTML = "email is wrong";
            return false;
            }
            if (passwordchecker.test(password)) {
            document.getElementById("perror").innerHTML = "";
            retutn true;
            } else {
            document.getElementById("perror").innerHTML = "password must contain 1digit 1specialcharacter 1uppercase 1lowercase and length must be greater than 8 and less than 32";
            return false;
            }
            if (confirmPassword == password) {
            document.getElementById("cerror").innerHTML = "";
            retutn true;
            } else {
            document.getElementById("cerror").innerHTML = "password do not match";
            return false;
            }

            }
        </script>
    </body>
</html>


