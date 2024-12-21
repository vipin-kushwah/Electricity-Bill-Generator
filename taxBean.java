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
public class taxBean {
    private String meterno;
    private String month;
    private String costperunit;
    private String meterrent;
    private String fixedcharge;
    private String energycharge;
    private String servicecharge;
    private String subsidy;

    public String getMeterno() {
        return meterno;
    }

    public void setMeterno(String meterno) {
        this.meterno = meterno;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getCostperunit() {
        return costperunit;
    }

    public void setCostperunit(String costperunit) {
        this.costperunit = costperunit;
    }

    public String getMeterrent() {
        return meterrent;
    }

    public void setMeterrent(String meterrent) {
        this.meterrent = meterrent;
    }

    public String getFixedcharge() {
        return fixedcharge;
    }

    public void setFixedcharge(String fixedcharge) {
        this.fixedcharge = fixedcharge;
    }

    public String getEnergycharge() {
        return energycharge;
    }

    public void setEnergycharge(String energycharge) {
        this.energycharge = energycharge;
    }

    public String getServicecharge() {
        return servicecharge;
    }

    public void setServicecharge(String servicecharge) {
        this.servicecharge = servicecharge;
    }

    public String getSubsidy() {
        return subsidy;
    }

    public void setSubsidy(String subsidy) {
        this.subsidy = subsidy;
    }
    
    
}
