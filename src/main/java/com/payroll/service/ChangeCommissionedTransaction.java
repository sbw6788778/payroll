package com.payroll.service;

import org.springframework.stereotype.Service;

@Service
public class ChangeCommissionedTransaction extends ChangeClassificationTransaction{
	private double salary;
	private double commissionRate;
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
	public ChangeCommissionedTransaction() {
		// TODO Auto-generated constructor stub
	}
	protected PaymentClassification classification(){
		return new CommissionedClassification(salary,commissionRate);
	}
	protected  PaymentSchedule schedule(){
		return new BiweeklySchedule();
	}

}
