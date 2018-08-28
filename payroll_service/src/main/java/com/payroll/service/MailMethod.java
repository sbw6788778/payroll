package com.payroll.service;

public class MailMethod implements PaymentMethod {
    private String Address;
    private String messege = "支票邮寄";

    public String getMessege() {
        return messege;
    }

    public void setMessege(String messege) {
        this.messege = messege;
    }

    public void setAddress(String address) {
        this.Address = address;
    }

    public MailMethod(String Address) {
        // TODO Auto-generated constructor stub
        this.Address = Address;
    }

    public MailMethod() {
        // TODO Auto-generated constructor stub
    }

    private Paycheck paycheck;

    public String getAddress() {
        return this.Address;
    }

    public void pay(Paycheck c) {
        this.paycheck = c;
    }

    public String toString() {
        return "支票邮寄";
    }
}
