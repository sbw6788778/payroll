package com.payroll.service;

import java.util.Date;

public class Paycheck {
    private Date dateTime;
    private double grossPay;
    //�����
    private double deductions;
    //��֧��
    private double netPay;
    private Date payPeriodStartDate;

    public Paycheck(Date t, Date s) {
        this.dateTime = t;
        this.payPeriodStartDate = s;
    }

    public Date getDateTime() {
        return this.dateTime;
    }

    public Date getStartDate() {
        return payPeriodStartDate;
    }

    public double getGrossPay() {
        return this.grossPay;
    }

    public Paycheck() {
    }

    public void setGrossPay(double g) {
        this.grossPay = g;
    }

    public void setDeductions(double e) {
        this.deductions = e;
    }

    public double getDeductions() {
        return this.deductions;
    }

    public void setNetPay(double n) {
        this.netPay = n;
    }

    public double getNetPay() {
        return this.netPay;
    }


}
