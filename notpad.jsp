<%-- 
    Document   : notpad
    Created on : Nov 29, 2023, 4:32:35 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notepad Page</title>
        <style>

            body{
                margin: 0;
                padding: 0;
                background-color: whitesmoke;
                font-family: sans-serifs;
            }
 


        </style>
    </head>
    <body>
        <%
            Runtime.getRuntime().exec("notepad.exe");
        %>
   
           
       
    </body>
</html>
