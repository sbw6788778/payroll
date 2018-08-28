package com.payroll.service;

import java.util.Date;

public class Employee {
    private int EmpId;
    private String Name;
    private String Address;
    private PaymentClassification classification;
    private PaymentSchedule schedule;
    private PaymentMethod method;
    private Affiliation affiliation = new NoAffiliation();

    public Employee(int empid, String name, String address) {
        this.EmpId = empid;
        this.Name = name;
        this.Address = address;
    }

    public Employee() {
        // TODO Auto-generated constructor stub
    }

    public int getId() {
        return this.EmpId;
    }

    public int getEmpId() {
        return EmpId;
    }

    public void setEmpId(int empId) {
        EmpId = empId;
    }

    public String getName() {
        return Name;
    }

    public void setName(String nam) {
        this.Name = nam;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String name) {
        this.Address = name;
    }

    public PaymentClassification getClassification() {
        return classification;
    }

    public void setClassification(PaymentClassification a) {
        this.classification = a;
    }

    public PaymentSchedule getSchedule() {
        return schedule;
    }

    public void setSchedule(PaymentSchedule a) {
        this.schedule = a;
    }

    public PaymentMethod getMethod() {
        return method;
    }

    public void setMethod(PaymentMethod a) {
        this.method = a;
    }

    public Affiliation getAffiliation() {
        return affiliation;
    }

    public void setAffiliation(Affiliation name) {
        this.affiliation = name;
    }

    public boolean isPayDate(Date date) {
        return schedule.isPayDate(date);
    }

    public void payday(Paycheck paycheck) {
        double grossPay = classification.calculatePay(paycheck);
        double deductions = affiliation.calculateDeductions(paycheck);
        double netPay = grossPay - deductions;
        paycheck.setGrossPay(grossPay);
        paycheck.setDeductions(deductions);
        paycheck.setNetPay(netPay);
        method.pay(paycheck);
    }

    public Date getPayPeriodStartDate(Date date) {
        return schedule.getPayPeriodStartDate(date);
    }

}
