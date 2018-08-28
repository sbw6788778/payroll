package com.payroll.service;

import java.util.Calendar;
import java.util.Date;

//˫�ܽ���
public class BiweeklySchedule implements PaymentSchedule {
    private String messege = "双周支付";

    public String getMessege() {
        return messege;
    }

    public void setMessege(String messege) {
        this.messege = messege;
    }

    public boolean isPayDate(Date date) {
        Calendar ca = Calendar.getInstance();
        ca.setTime(date);
        return (ca.get(Calendar.DAY_OF_WEEK) == Calendar.FRIDAY) && (ca.get(Calendar.DATE) % 2 == 0);
    }

    public Date getPayPeriodStartDate(Date date) {
        Calendar ca = Calendar.getInstance();
        ca.setTime(date);
        ca.add(Calendar.DATE, -13);
        return ca.getTime();
    }

    public String toString() {
        return "双周支付";
    }
}
