/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

/**
 *
 * @author lenovo
 */
public class calculateBill {
    static int totalbill = 0;
    static int amount=0;
    static int meterrent = 10;
    static int costperunit = 9;
    static int fixedcharge = 120;
    static int energycharge = 0;
    static int servicecharge = 40;
    static int subsidy = 325;

    public static void bill(int unitconsume) {

        if (unitconsume >= 1 && unitconsume <= 100) {
             amount = unitconsume * costperunit;
            energycharge = unitconsume * 6;
            totalbill = amount + energycharge + meterrent + fixedcharge + servicecharge - subsidy;
        } else if (unitconsume >= 101 && unitconsume <= 200) {
             amount = unitconsume * costperunit;
            energycharge = unitconsume * 7;
            totalbill = amount + energycharge + meterrent + fixedcharge + servicecharge - subsidy;
        } else if (unitconsume >= 201 && unitconsume <= 300) {
             amount = unitconsume * costperunit;
            energycharge = unitconsume * 8;
            totalbill = amount + energycharge + meterrent + fixedcharge + servicecharge - subsidy;
        } else {
             amount = unitconsume * costperunit;
            energycharge = unitconsume * 9;
            totalbill = amount + energycharge + meterrent + fixedcharge + servicecharge - subsidy;
        }

    }
}
