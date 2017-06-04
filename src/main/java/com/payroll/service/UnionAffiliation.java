package com.payroll.service;

import java.util.Hashtable;

import org.springframework.stereotype.Service;

import java.util.Date;

public class UnionAffiliation extends Affiliation {
	private String messege="工会成员";
	public String getMessege() {
		return messege;
	}
	public void setMessege(String messege) {
		this.messege = messege;
	}
	public double getDues() {
		return dues;
	}
	public void setDues(double dues) {
		this.dues = dues;
	}
	public Hashtable<Date, ServiceCharge> getServiceCharge() {
		return serviceCharge;
	}
	public void setServiceCharge(Hashtable<Date, ServiceCharge> serviceCharge) {
		this.serviceCharge = serviceCharge;
	}
	public void setMemId(int memId) {
		this.memId = memId;
	}
	private double dues;
	private int memId;
	private Hashtable<Date,ServiceCharge> serviceCharge=new Hashtable<Date,ServiceCharge>();
	public UnionAffiliation() {
		// TODO Auto-generated constructor stub
	}
	public  UnionAffiliation(int memId, double dues){
		this.dues=dues;
		this.memId=memId;
	}
	public void addServiceCharge(Date d,ServiceCharge s){
		this.serviceCharge.put(d, s);
	}
	public ServiceCharge getServiceCharge(Date d){
		return serviceCharge.get(d);
	}
	public int getMemId(){
		return this.memId;
	}
	public double calculateDeductions(Paycheck p){
		double totlePay=0.0;
		for(Date d:serviceCharge.keySet()){
			if(DateUtil.isInPayPeriod(d, p.getStartDate(), p.getDateTime()))
				totlePay=totlePay+serviceCharge.get(d).getCharge();
		}
		PaymentClassification pc= database.GetUnionMember(memId).getClassification();
		if (pc instanceof SalariedClassification)
			totlePay=4*this.dues+totlePay;
		else if(pc instanceof HourlyClassification)
			totlePay=this.dues+totlePay;
		else if(pc instanceof CommissionedClassification)
			totlePay=2*this.dues+totlePay;
		return totlePay;
	}
	public String toString(){
		return "工会成员";
	}
}
