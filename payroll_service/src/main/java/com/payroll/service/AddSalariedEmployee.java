package com.payroll.service;

import org.springframework.stereotype.Service;

@Service
public class AddSalariedEmployee extends AddEmployeeTransaction {
    private double salary;

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    protected PaymentClassification makeClassification() {
        return new SalariedClassification(salary);
    }

    protected PaymentSchedule makeSchedule() {
        return new MonthlySchedule();
    }


}
