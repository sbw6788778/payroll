package com.payroll.service;

import org.springframework.stereotype.Service;

@Service
public class AddHourlyEmployee extends AddEmployeeTransaction {
    private double hourlyRate;

    public double getHourlyRate() {
        return hourlyRate;
    }

    public void setHourlyRate(double hourlyRate) {
        this.hourlyRate = hourlyRate;
    }

    protected PaymentClassification makeClassification() {
        return new HourlyClassification(hourlyRate);
    }

    protected PaymentSchedule makeSchedule() {
        return new WeeklySchedule();
    }
}
