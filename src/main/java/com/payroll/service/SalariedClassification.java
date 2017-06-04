package com.payroll.service;
public class SalariedClassification implements PaymentClassification {
	private double MonthlyPay;
	private String messege="编制员工";
	public String getMessege() {
		return messege;
	}
	public void setMessege(String messege) {
		this.messege = messege;
	}
	public SalariedClassification(double salary){
		this.MonthlyPay=salary;
	}
	public SalariedClassification() {
		// TODO Auto-generated constructor stub
	}
	public double getSalary(){
		return this.MonthlyPay;
	}
	public double calculatePay(Paycheck paycheck) {
		return MonthlyPay;

	}
	public double getMonthlyPay() {
		return MonthlyPay;
	}
	public void setMonthlyPay(double monthlyPay) {
		MonthlyPay = monthlyPay;
	}
	public String toString(){
		return "编制员工";
	}

}
