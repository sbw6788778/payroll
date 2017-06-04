package com.payroll.service;

import org.springframework.stereotype.Service;

@Service
public class ChangeSalariedTransaction extends ChangeClassificationTransaction {
	private double salary;

	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
	protected PaymentClassification classification(){
		return new SalariedClassification(salary);
	}
	protected  PaymentSchedule schedule(){
		return new MonthlySchedule();
	}
}
