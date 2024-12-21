<%-- 
    Document   : update
    Created on : Dec 8, 2023, 12:12:47 AM
    Author     : lenovo
--%>

<%@page import="Model.updateBean"%>
<%@page import="Model.metreBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Controller.Connect"%>
<%@page import="Model.userBean"%>
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
                min-height: 590px;
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
                max-width: 100px;
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
            span{
                color: red;
            }
        </style>
    </head>
    <body>
        <%
            updateBean obj = null;
            
            String username = request.getParameter("username");
            List<updateBean> list = Connect.getAllRecord(username);
            Iterator i = list.iterator();
            while (i.hasNext()) {
                obj = (updateBean) i.next();
            }
           
        %>
        
        <div class="container">
            <header>Registration Here</header>
            <form action="updateServlet" method="post">
                <div class="form-first">
                    <div class="detail personal">
                        <span class="title">Personal Details</span>
                        <div class="fields">
                            <div class="input-field">
                                <label>Name:</label>
                                <input type="text" name="name" id="name"  value=<%=obj.getName()%> >
                                <span id="error"></span>
                           </div>
                            <div class="input-field">
                                <label>Username:</label>
                                <input type="text" name="username" id="username"  value=<%=obj.getUsername()%> readonly>
                                <span id="uerror"></span>
                            </div>
                            <div class="input-field">
                                <label>Contact Number:</label>
                                <input type="text" name="contactnumber" id="contactnumber"  value=<%=obj.getContactnumber()%> >
                                <span id="cerror"></span>
                            </div>
                            <br><br>
                            <div class="input-field">
                                <label>Email:</label>
                                <input type="email" name="email" id="email"  value=<%=obj.getEmail()%> >
                                <span id="eerror"></span>
                            </div>

                            <div class="input-field">
                                <label>Address:</label>
                                <input type="text" name="address" id="address"  value=<%=obj.getAddress()%>>
                                <span id="addresserror"></span>
                            </div>

                            <div class="input-field">
                                <label>City:</label>
                                <input type="text" name="city" id="city"  value=<%=obj.getCity()%>>
                                <span id="cityerror"></span>
                            </div>
                            <br><br>
                            <div class="input-field">
                                <label>State:</label>
                                <input type="text" name="state" id="state"  value=<%=obj.getState()%>>
                                <span id="stateerror"></span>
                            </div>

                            <div class="input-field">
                                <label>Password:</label>
                                <input type="password" name="password" id="password"  value="" readonly="">
                                <span id="passworderror"></span>
                            </div>

                            <div class="input-field">
                                <label>Confirm Password:</label>
                                <input type="password" name="confirmpassword" id="confirmpassword"  value="" readonly="">
                                <span id="conerror"></span>
                            </div>
                            <br><br>
                        </div>
                    </div>
                </div>
                <div class="form-second">
                    <div class="detail personal">
                        <span class="title">Meter Info</span>
                        <div class="fields">
                            <div class="input-field">
                                <label>Meter No:</label>
                                <input type="text" name="meterno" id="meterno"  value=<%=obj.getMeterno()%> readonly>
                            </div>
                            <div class="input-field">
                                <label>Pincode:</label>
                                <input type="text" name="pincode" id="pincode" value=<%=obj.getPincode()%>>
                                <span id="pinerror"></span>
                            </div>
                            <div class="input-field">
                                <label for="meterlocation">Choose a Meter Location:</label>

                                <select id="meterlocation" name="meterlocation">
                                    <option value="">select one option</option>
                                    <option value="Inside">Inside</option>
                                    <option value="outside">outside</option>
                                </select>
                            </div>
                            <div class="input-field">
                                <label for="metertype">Choose a Meter Type:</label>

                                <select id="metertype" name="metertype">
                                    <option value="">select one option</option>
                                    <option value="Solar Meter">Solar Meter</option>
                                    <option value="Electric Meter">Electric Meter</option>
                                    <option value="Smart Meter">Smart Meter</option>
                                </select>
                            </div>
                            <div class="input-field">
                                <label for="phasecode">Choose Phase Code:</label>

                                <select id="phasecode" name="phasecode">
                                    <option value="">select one option</option>
                                    <option value="011">011</option>
                                    <option value="022">022</option>
                                    <option value="033">033</option>
                                    <option value="044">044</option>
                                    <option value="055">055</option>
                                    <option value="066">066</option>
                                    <option value="077">077</option>
                                    <option value="088">088</option>
                                    <option value="099">099</option>
                                </select>
                            </div>

                            <div class="input-field">
                                <label for="billtype">Choose a Bill Type:</label>

                                <select id="billtype" name="billtype">
                                    <option value="">select one option</option>
                                    <option value="Home">Home</option>
                                    <option value="Industrial">Industrial</option>
                                </select>
                            </div>


                            <div class="button">
                                <input type="submit" value="Submit">
                            </div>


                        </div>
                    </div>
                </div>
            </form>
        </div>

        <script>
            function myFun() {
                var name = document.getElementById("name").value;
                var username = document.getElementById("username").value;
                var contactnumber = document.getElementById("contactnumber").value;
                var email = document.getElementById("email").value;
                var address = document.getElementById("address").value;
                var city = document.getElementById("city").value;
                var state = document.getElementById("state").value;
                var password = document.getElementById("password").value;
                var pincode = document.getElementById("pincode").value;
                var cpass=document.getElementById("confirmpassword").value;

                var namechecker = /^[A-Za-z ]{3,30}$/;
                var passwordchecker = /^(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*])[a-zA-z0-9!@#$%^&*]{8,32}$/;
                var userchecker = /^[A-Za-z0-9_. ]{5,30}$/;
                var emailchecker = /^[A-za-z_.0-9]{3,}@[A-za-z]{2,}[.]{1}[A-za-z.]{2,8}$/;
                var mobilechecker = /^[6789]{1}[0-9]{9}$/;
                var addresschecker = /^[A-Za-z0-9-| ]{1,}$/;
                var citychecker = /^[A-Za-z ]{3,}$/;
                var statechecker = /^[A-Za-z ]{3,}$/;
                var pincodechecker = /^[1-9]{1}[0-9]{5}$/;

         
                if (namechecker.test(name)) {
                    document.getElementById("error").innerHTML = "";
                    return true;
                } else {
                    alert("name contain only alphabets and length must be greater than 3 and less than 30 character ");
                    return false;
                }
                
                if (userchecker.test(username)) {
                    document.getElementById("uerror").innerHTML = "";
                    return true;
                } else {
                    alert("username contain alphabets, digits, underscore(_), dot(.) space only and length must be greater than 5 and less than30");
                    return false;
                }
                
                if (mobilechecker.test(contactnumber)) {
                    document.getElementById("cerror").innerHTML = "";
                    return true;
                } else {
                    alert("mobile number must be of 10 digit and contain only number");
                    return false;
                }
                if (emailchecker.test(email)) {
                    document.getElementById("eerror").innerHTML = "";
                    return true;
                } else {
                    alert("enter valid email");
                    return false;
                }
                if (addresschecker.test(address)) {
                    document.getElementById("addresserror").innerHTML = "";
                    return true;
                } else {
                    alert("enter valid address");
                    return false;
                }
                if (citychecker.test(city)) {
                    document.getElementById("cityerror").innerHTML = "";
                    return true;
                } else {
                    alert("enter valid city");
                    return false;
                }
                if (statechecker.test(state)) {
                    document.getElementById("stateerror").innerHTML = "";
                    return true;
                } else {
                    alert("enter valid state");
                    return false;
                }
                if (passwordchecker.test(password)) {
                    document.getElementById("passworderror").innerHTML = "";
                    return true;
                } else {
                    alert("password must contain 1digit 1specialcharacter 1uppercase 1lowercase and length must be greater than 8 and less than 32");
                    return false;
                }
                if (pincodechecker.test(pincode)) {
                    document.getElementById("pinerror").innerHTML = "";
                    return true;
                } else {
                    alert("enter valid pincode");
                    return false;
                }
                if(cpass!=password){
                    alert("password do not match");
                    return false;
                }



            }

        </script>




    </body>
</html>

