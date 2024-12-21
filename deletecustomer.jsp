<%-- 
    Document   : deletecustomer
    Created on : Dec 7, 2023, 11:09:59 PM
    Author     : lenovo
--%>

<%@page import="java.util.List"%>
<%@page import="Model.calculateBean"%>
<%@page import="Controller.Connect"%>
<%@page import="Controller.Connect"%>
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

            select {
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
            <form id="login-form" action="deletecustomer1.jsp" method="post">
                <label for="options">Meter no:
                <select id="options" name="options">

                    <%
                        
                        List<calculateBean> options = Connect.fetchmeterno();

                        try {
                            for (calculateBean meter : options) {
                                out.println("<option value=\"" + meter.getMeterno() + "\">" + meter.getMeterno() + "</option>");
                            }

                        } catch (Exception e) {

                        }


                    %>

                </select></label>

                <button type="submit">Proceed</button>
            </form>
        </div>

       
    </body>
</html>


