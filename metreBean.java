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
public class metreBean {
    private int id;
    private String meterno;
    private String meterlocation;
    private String metertype;
    private String phasecode;
    private String billtype;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMeterno() {
        return meterno;
    }

    public void setMeterno(String meterno) {
        this.meterno = meterno;
    }

    public String getMeterlocation() {
        return meterlocation;
    }

    public void setMeterlocation(String meterlocation) {
        this.meterlocation = meterlocation;
    }

    public String getMetertype() {
        return metertype;
    }

    public void setMetertype(String metertype) {
        this.metertype = metertype;
    }

    public String getPhasecode() {
        return phasecode;
    }

    public void setPhasecode(String phasecode) {
        this.phasecode = phasecode;
    }

    public String getBilltype() {
        return billtype;
    }

    public void setBilltype(String billtype) {
        this.billtype = billtype;
    }
    
    
}
