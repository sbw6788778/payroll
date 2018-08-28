package com.payroll.service;

import org.springframework.stereotype.Service;

@Service
public class AddCommissionedEmployee extends AddEmployeeTransaction {
    private double salary;

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public double getCommissionRate() {
        return commissionRate;
    }

    public void setCommissionRate(double commissionRate) {
        this.commissionRate = commissionRate;
    }

    private double commissionRate;

    protected PaymentClassification makeClassification() {
        return new CommissionedClassification(salary, commissionRate);
    }

    protected PaymentSchedule makeSchedule() {
        return new BiweeklySchedule();
    }
}
