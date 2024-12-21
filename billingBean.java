/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author lenovo
 */
public class billingBean {
    private String meterno;
    private String unitconsume;
    private String month;
    private String address;
    private String amount;
    private String totalbill;
    private String status;

    public billingBean() {
    }

    public billingBean(String meterno, String unitconsume, String month, String address, String amount, String totalbill, String status) {
        this.meterno = meterno;
        this.unitconsume = unitconsume;
        this.month = month;
        this.address = address;
        this.amount = amount;
        this.totalbill = totalbill;
        this.status = status;
    }

    public String getMeterno() {
        return meterno;
    }

    public void setMeterno(String meterno) {
        this.meterno = meterno;
    }

    public String getUnitconsume() {
        return unitconsume;
    }

    public void setUnitconsume(String unitconsume) {
        this.unitconsume = unitconsume;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getTotalbill() {
        return totalbill;
    }

    public void setTotalbill(String totalbill) {
        this.totalbill = totalbill;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
}
