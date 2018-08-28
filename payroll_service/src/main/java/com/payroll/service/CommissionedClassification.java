package com.payroll.service;

import java.util.Hashtable;
import java.util.Date;

public class CommissionedClassification implements PaymentClassification {
    private double BasePay;
    private double CommissionRate;
    private String messege = "绩效工";

    public String getMessege() {
        return messege;
    }

    public void setMessege(String messege) {
        this.messege = messege;
    }

    public void setBasePay(double basePay) {
        BasePay = basePay;
    }

    public void setCommissionRate(double commissionRate) {
        CommissionRate = commissionRate;
    }

    private Hashtable<Date, SalesReceipt> salesReceipt = new Hashtable<Date, SalesReceipt>();

    public CommissionedClassification(double salary, double commissionrate) {
        this.BasePay = salary;
        this.CommissionRate = commissionrate;
    }

    public CommissionedClassification() {
        // TODO Auto-generated constructor stub
    }

    public double getBasePay() {
        return this.BasePay;
    }

    public double getCommissionRate() {
        return this.CommissionRate;
    }

    public void addSalesReceipt(SalesReceipt s) {
        this.salesReceipt.put(s.getDate(), s);
    }

    ;

    public SalesReceipt getSalesReceipt(Date d) {
        return salesReceipt.get(d);
    }

    public double calculatePay(Paycheck paycheck) {
        double amount = 0;
        for (Date d : salesReceipt.keySet()) {
            amount += salesReceipt.get(d).getAmount();
        }
        return BasePay + CommissionRate * amount;

    }

    public String toString() {
        return "绩效工";
    }

}
