package com.payroll.service;

import org.springframework.stereotype.Service;

@Service
public class ChangeHourlyTransaction extends ChangeClassificationTransaction {
    private double hourlyRate;

    public double getHourlyRate() {
        return hourlyRate;
    }

    public void setHourlyRate(double hourlyRate) {
        this.hourlyRate = hourlyRate;
    }

    protected PaymentClassification classification() {
        return new HourlyClassification(hourlyRate);
    }

    protected PaymentSchedule schedule() {
        return new WeeklySchedule();
    }

}
