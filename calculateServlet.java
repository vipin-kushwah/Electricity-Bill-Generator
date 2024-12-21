/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.billingBean;
import Model.taxBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lenovo
 */
public class calculateServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String meterno = request.getParameter("meterno");
        String address = request.getParameter("address");
        String unitconsume = request.getParameter("unitconsume");
        String month = request.getParameter("month");

        String u = unitconsume;
        int u1 = Integer.parseInt(u);
        calculateBill.bill(u1);

        int a = calculateBill.totalbill;
        String totalbill = Integer.toString(a);
        String amount = Integer.toString(calculateBill.amount);
        int c = calculateBill.costperunit;
        String cost = Integer.toString(c);
        int c1 = calculateBill.meterrent;
        String rent = Integer.toString(c1);
        int c2 = calculateBill.fixedcharge;
        String fixed = Integer.toString(c2);
        int c3 = calculateBill.energycharge;
        String energy = Integer.toString(c3);
        int c4 = calculateBill.servicecharge;
        String service = Integer.toString(c4);
        int c5 = calculateBill.subsidy;
        String subsidy = Integer.toString(c5);
        String status = "NotPaid";

        billingBean tx = new billingBean();
        tx.setMeterno(meterno);
        tx.setUnitconsume(unitconsume);
        tx.setAmount(amount);
        tx.setMonth(month);
        tx.setAddress(address);
        tx.setTotalbill(totalbill);
        tx.setStatus(status);

        taxBean bt = new taxBean();
        bt.setMeterno(meterno);
        bt.setMonth(month);
        bt.setCostperunit(cost);
        bt.setMeterrent(rent);
        bt.setFixedcharge(fixed);
        bt.setEnergycharge(energy);
        bt.setServicecharge(service);
        bt.setSubsidy(subsidy);

        try {
            Connection con = Connect.getConnection();
            PreparedStatement ps = con.prepareStatement("insert into bill(meterno,unitconsume,month,address,amount,totalbill,status) values(?,?,?,?,?,?,?)");
            ps.setString(1, meterno);
            ps.setString(2, unitconsume);
            ps.setString(3, month);
            ps.setString(4, address);
            ps.setString(5, amount);
            ps.setString(6, totalbill);
            ps.setString(7, status);
            ps.executeUpdate();
            
            
            ps = con.prepareStatement("insert into tax(meterno,month,costperunit,meterrent,fixedcharge,energycharge,servicecharge,subsidy) values(?,?,?,?,?,?,?,?)");
            ps.setString(1, meterno);
            ps.setString(2, month);
            ps.setString(3, cost);
            ps.setString(4, rent);
            ps.setString(5, fixed);
            ps.setString(6, energy);
            ps.setString(7, service);
            ps.setString(8, subsidy);
            ps.executeUpdate();
            
             request.getRequestDispatcher("adminhome.jsp").forward(request, response);
        } catch (Exception e) {
            out.println(e);
        }

    }
}
