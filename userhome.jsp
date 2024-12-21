<%-- 
    Document   : userhome
    Created on : Dec 8, 2023, 12:05:37 AM
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
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                font-size: 30px;
                background-image: url(icon/wel.jpeg);
                background-repeat: no-repeat;
                background-size:cover;
                width: 100%;

            }

            .menubar{
                background-color: whitesmoke;
                text-align: center;
                border-radius: 200px;
                text-transform: uppercase;
                font-weight: bold;
                margin-top: 30px;
                margin-left: 20px;
                margin-right: 20px;
            }
            .menubar ul{
                display: inline-flex;
                list-style: none;
                color: black;

            }
            .menubar ul li{ 
                width: 180px;
                margin: 15px;
                padding: 15px;

            }
            .menubar ul li a{ 
                text-decoration: none;
                color: black;
            }
            .active,.menubar ul li:hover{
                background: darkgray;
                border-radius: 200px;

            }
            .submenu1{
                display: none;
            }
            .menubar ul li:hover .submenu1{
                display: block;
                position: absolute;
                background: whitesmoke;
                margin-top: 15px;
                margin-left: -15px;
                width: 400px
            } 
            .menubar ul li:hover .submenu1 ul{
                display: block;
                margin: 10px;

            }
            .menubar ul li:hover .submenu1 ul li{
                width: 350px;
                padding: 10px;
                border-bottom: 1px dotted black;
                background: transparent;
                border-radius: 0;
                text-align: left;
            }
            .menubar ul li:hover .submenu1 ul li:last-child{
                border-bottom: none;
            }
            .menubar ul li:hover .submenu1 ul li{
                color: black;
                text-transform: uppercase;
                font-weight: bold;
            }


        </style>
    </head>
    <body>
        <%
           String username = request.getParameter("username");
           session.setAttribute("user", username);
        %>
        <div class="menubar">

            <ul>
                <li class="active"><a href="">Info</a>
                    <div class="submenu1">
                        <ul>
                            <li><a href="update0.jsp">Update Info</a></li>
                            <li><a href="view.jsp">View Info</a></li>
                        </ul>
                    </div>

                </li>
                <li><a href="">User</a>
                    <div class="submenu1">
                        <ul>
                            <li><a href="billdetails.jsp" >Bill Details</a></li>
                            <li><a href="paybill.jsp">Pay Bill</a></li>
                        </ul>
                    </div>                
                </li>
                <li><a href="">Report</a>
                    <div class="submenu1">
                        <ul>
                            <li><a href="generatebill.jsp">Generate Bill</a></li>
                        </ul>
                    </div>                
                </li>
                <li><a href="">Utility</a>
                    <div class="submenu1">
                        <ul>
                            <li><a href="Browser.jsp" target="_Blank">Browse</a></li>
                            <li><a href="Calculator.jsp" target="_Blank">Calculator</a></li>
                            <li><a href="notpad.jsp" target="_Blank">Notepad</a></li>
                        </ul>
                    </div>                
                </li>
                <li><a href="Logout.jsp">Logout</a></li>
            </ul>
        </div>     


    </body>
</html>


