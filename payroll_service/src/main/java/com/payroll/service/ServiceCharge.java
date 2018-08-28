package com.payroll.service;

import java.util.Date;

public class ServiceCharge {
    private Date Date;
    private double Amount;

    public ServiceCharge(Date date, double amount) {
        this.Date = date;
        this.Amount = amount;
    }

    public ServiceCharge() {
        // TODO Auto-generated constructor stub
    }

    public Date getDate() {
        return Date;
    }

    public double getCharge() {
        return Amount;
    }

}
