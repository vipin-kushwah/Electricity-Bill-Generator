<%-- 
    Document   : depositDetails
    Created on : Dec 7, 2023, 6:58:16 PM
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
            select{
                width: 100%;
                padding: 10px;
                margin: 8px 0;
                box-sizing: border-box;
                border: 1px solid #ccc;
                border-radius: 4px;
                font-size: 30px;  
            }
        </style>
    </head>
    <body>
        <div id="login-container">
            <form id="login-form" action="depositDetails1.jsp" method="post" >
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
                <label for="month">Month :</label>
                <select name="month">
                    <option value="select product" >select month</option>
                    <option value="january" > January</option>
                    <option value="February">February</option>
                    <option  value="March"> March</option>
                    <option value="April"> April</option>
                    <option value="May"> May</option>
                    <option value="June"> June</option>
                    <option value="July"> July </option>
                    <option value="August"> August</option>
                    <option value="September"> September</option>
                    <option value="October"> October</option>
                    <option value="November"> November</option>
                    <option value="December"> December</option>

                </select><br>
                <button type="submit">Proceed</button>
            </form>
        </div>
    </body>
</html>