<%-- 
    Document   : generatebill1
    Created on : Dec 8, 2023, 1:46:29 AM
    Author     : lenovo
--%>

<%@page import="Controller.Connect"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <style>
            body{
                background-color: lightseagreen;
                left: 0px;
                top: 0px;
            }
            div{
                width: auto;
                height: 1100px;
                background: white;
                color: darkred;
                top: 50%;
                left: 50%;
                position: absolute;
                transform: translate(-50%,-50%);
                box-sizing: border-box;
                padding: 0px 30px;
                font-size: 30px;
            }
            h1{
                text-align: center;
            }
            button{
                font-size: 30px;
            }
        </style>
    </head>
    <body>
        <div>
       <%
                String user = request.getParameter("username");
                String month = request.getParameter("month");
                String status = null;
                String name = null;
                String email = null;
                String type = null;
                String address = null;
                String contactnumber = null;
                String unitconsume = null;
                String amount = null;
                String totalbill = null;
                String meterno =null;
                String costperunit = null;
                String meterrent = null;
                String fixedcharges = null;
                String energycharge = null;
                String servicecharge =null;
                String subsidy =null;
                

                try {
                    Connection con = Connect.getConnection();

                    PreparedStatement ps = con.prepareStatement("select * from user where username=?");
                    ps.setString(1, user);
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        meterno = rs.getString("meterno");
                        name = rs.getString("name");
                        email = rs.getString("email");
                        type = rs.getString("type");
                        address = rs.getString("address");
                        contactnumber = rs.getString("contactnumber");
                    }

                    ps = con.prepareStatement("select * from bill where meterno=? and month=?");
                    ps.setString(1, meterno);
                    ps.setString(2, month);
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        unitconsume = rs.getString("unitconsume");
                        amount = rs.getString("amount");
                        totalbill = rs.getString("totalbill");
                    }
                    ps = con.prepareStatement("select * from tax where meterno=? and month=?");
                    ps.setString(1, meterno);
                    ps.setString(2, month);
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        costperunit = rs.getString("costperunit");
                        meterrent = rs.getString("meterrent");
                        fixedcharges = rs.getString("fixedcharge");
                        energycharge = rs.getString("energycharge");
                        servicecharge = rs.getString("servicecharge");
                        subsidy = rs.getString("subsidy");
                    }
                    out.println("<h1>Power Pulse</h1>");
                    out.println("<h2>ELECTRICITY BILL GENERATED FOR THE MONTH OF " + month);
                    out.println("</h2>");
                    out.println("\n");
                    out.println("");
                    out.println("");
                    out.println("<br>");
                    out.println("Customer Name");
                    out.println(":" + name);
                    out.println("<br>");
                    out.println("Meter Number    ");
                    out.println("&nbsp&nbsp&nbsp:" + meterno);
                    out.println("<br>");
                    out.println("Email           ");
                    out.println("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:" + email);
                    out.println("<br>");
                    out.println("Type            ");
                    out.println("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:" + type);
                    out.println("<br>");
                    out.println("Address         ");
                    out.println("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:" + address);
                    out.println("<br>");
                    out.println("Contact Number  ");
                    out.println(":" + contactnumber);
                    out.println("<br>");
                    out.println("---------------------------------------------------------------------------");
                    out.println("\n");
                    out.println("<br>");
                    out.println("Unit Consume    ");
                    out.println("&nbsp&nbsp&nbsp&nbsp:" + unitconsume);
                    out.println("<br>");
                    out.println("Costper Unit    ");
                    out.println("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:" + costperunit);
                    out.println("<br>");
                    out.println("Amount          ");
                    out.println("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:" + amount);
                    out.println("<br>");
                    out.println("Meter Rent      ");
                    out.println("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:" + meterrent);
                    out.println("<br>");
                    out.println("Fixed Charges   ");
                    out.println("&nbsp&nbsp&nbsp:" + fixedcharges);
                    out.println("<br>");
                    out.println("Energy Charges  ");
                    out.println("&nbsp:" + energycharge);
                    out.println("<br>");
                    out.println("Service Charges ");
                    out.println("&nbsp:" + servicecharge);
                    out.println("<br>");
                    out.println("Subsidy         ");
                    out.println("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:" + subsidy);
                    out.println("<br>");
                    out.println("---------------------------------------------------------------------------");
                    out.println("<br>");
                    out.println("Total Bill      ");
                    out.println("&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:" + totalbill);
                    out.println("<br>");

                } catch (Exception e) {
                    out.print(e);
                }

            %>
             <button onclick="window.print()">Print</button>
        </div>
    </body>
</html>
