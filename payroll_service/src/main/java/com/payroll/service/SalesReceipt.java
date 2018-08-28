package com.payroll.service;

import java.util.Date;

public class SalesReceipt {
    private Date Date;
    private double Amount;

    public SalesReceipt(Date date, double amount) {
        this.Date = date;
        this.Amount = amount;
    }

    public SalesReceipt() {
        // TODO Auto-generated constructor stub
    }

    public Date getDate() {
        return this.Date;
    }

    public double getAmount() {
        return this.Amount;
    }

}
