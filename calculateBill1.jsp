<%-- 
    Document   : calculateBill1
    Created on : Dec 7, 2023, 7:22:07 PM
    Author     : lenovo
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Controller.Connect"%>
<%@page import="java.util.List"%>
<%@page import="Model.calculateBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Power Pulse</title>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins',sans-serif;
            }
            body{
                min-height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                background-image: url(icon/wel.jpeg);
                background-repeat: no-repeat;
                background-size:cover;
                width: 100%;
            }
            .container{
                position: relative;
                max-width: 1900px;
                width: 100%;
                border-radius: 6px;
                padding: 30px;
                margin: 0 15px;
                background-color: whitesmoke;
                font-size: 35px;
            }
            .container header{
                position: relative;
                font-size: 40px;
                font-weight: 600;
                color: black;
            }
            .container header::before{
                content: "";
                position: absolute;
                left: 0;
                bottom: -2px;
                height: 3px;
                width: 330px;
                border-radius: 8px;
                background-color:whitesmoke;
            }
            .container form{
                position: relative;
                margin-top: 16px;
                min-height: 390px;
                background-color: whitesmoke;

            }
            .container form .detail{
                margin-top: 10px;
            }
            .container form .title{
                display: block;
                margin-bottom: 8px;
                font-size: 38px;
                font-weight: 500;
                margin: 6px 0;
                color:black;
            }
            input{
                font-size: 30px;
            }
            .container form .fields{
                display: flex;
                align-items: center;
                justify-content: space-between;
                flex-wrap: wrap;
            }
            form .fields .input-field{
                display: flex;
                flex-direction: column;
                margin: 4px 0;
                width: calc(100% / 3 - 15px);
            }
            .input-field label{
                font-size: 34px;
                font-weight: 500;
            }
            .input-field input{
                outline: none;
                font-size: 30px;
                border-radius: 5px;
                color: black;
                border: 1px solid black;
                padding: 0 15px;
                height: 42px;
                margin: 8px 0;
            }
            .button{
                display: block;
                align-items: center;
                justify-content: center;
                height: 55px;
                max-width: 120px;
                width: 100%;
                border: none;
                outline: none;
                color: black;
                font-size: 40px;
                margin: 25px 0;
                cursor: pointer;
                background-color: darkgray;
            }
            .button:hover{
                background-color: lightgray;
            }
            select{
                outline: none;
                font-size: 30px;
                border-radius: 5px;
                color: black;
                border: 1px solid black;
                padding: 0 15px;
                height: 42px;
                margin: 8px 0;
            }
            button{
                font-size: 35px;
                width: 100%;
            }
        </style>
    </head>
    <body>
        <%
            calculateBean obj = null;
            String opt = request.getParameter("options");
            session.setAttribute("meterno", opt);
            List<calculateBean> list = Connect.fetch(opt);
            Iterator i = list.iterator();
            while (i.hasNext()) {
                obj = (calculateBean) i.next();
            }
        %>
        <div class="container">
            <header>Registration Here</header>
            <form action="calculateServlet" method="post">
                <div class="form-first">
                    <div class="detail personal">
                        <span class="title">Personal Details</span>
                        <div class="fields">
                            <div class="input-field">
                                <label>Meter Number:</label>
                                <input type="text" name="meterno" id="meterno" value=<%=opt%> readonly>
                                <span id="error"></span>
                            </div>
                            <div class="input-field">
                                <label>Name:</label>
                                <input type="text" name="name" id="name" value=<%=obj.getName()%> readonly>
                                <span id="error"></span>
                            </div>
                            <div class="input-field">
                                <label>Contact Number:</label>
                                <input type="text" name="contactnumber" id="contactnumber"  value=<%=obj.getContactnumber()%> readonly>
                                <span id="cerror"></span>
                            </div>
                            <br><br>
                            <div class="input-field">
                                <label>Email:</label>
                                <input type="email" name="email" id="email" value=<%=obj.getEmail()%> readonly>
                                <span id="eerror"></span>
                            </div>

                            <div class="input-field">
                                <label>Address:</label>
                                <input type="text" name="address" id="address"  value=<%=obj.getAddress()%> readonly>
                                <span id="addresserror"></span>
                            </div>

                            <div class="input-field">
                                <label>City:</label>
                                <input type="text" name="city" id="city"  value=<%=obj.getCity()%> readonly>
                                <span id="cityerror"></span>
                            </div>
                            <br><br>
                            <div class="input-field">
                                <label>State:</label>
                                <input type="text" name="state" id="state" value=<%=obj.getState()%> readonly>
                                <span id="stateerror"></span>
                            </div>
                            <div class="input-field">
                                <label>Unit Consume:</label>
                                <input type="text" name="unitconsume" id="unitconsume" placeholder="enter unitconsume" required>
                                <span id="stateerror"></span>
                            </div>

                            <div class="input-field">
                                <label for="month">Month :</label>
                                <select name="month" required>
                                    <option value="select product" required >select month</option>
                                    <option value="january" required > January</option>
                                    <option value="February" required>February</option>
                                    <option  value="March" required> March</option>
                                    <option value="April" required> April</option>
                                    <option value="May" required> May</option>
                                    <option value="June" required> June</option>
                                    <option value="July" required> July </option>
                                    <option value="August" required> August</option>
                                    <option value="September" required> September</option>
                                    <option value="October" required> October</option>
                                    <option value="November" required> November</option>
                                    <option value="December" required> December</option>
                                </select>
                            </div>
                                <div class="button">
                                    <button type="submit">Submit</button></div>
                        </div>
                    </div>
                </div>

                </body>
                </html>

