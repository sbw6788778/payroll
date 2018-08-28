package com.payroll.service;

import java.util.Date;

import org.springframework.stereotype.Service;

@Service
public class TimeCardTransaction extends Transaction {
    private Date date;
    private double hours;
    private int id;

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public double getHours() {
        return hours;
    }

    public void setHours(double hours) {
        this.hours = hours;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void execute() {
        Employee e = database.GetEmployee(this.id);
        if (e != null) {
            HourlyClassification hc = (HourlyClassification) e.getClassification();
            if (hc != null) {
                database.addTimeCard(id, new TimeCard(date, hours));
            }
        }

    }
}
