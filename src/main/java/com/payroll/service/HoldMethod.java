package com.payroll.service;

public class HoldMethod implements PaymentMethod {
	private Paycheck paycheck;
	private String messege="֧Ʊ�����ڳ�����Ա";
	public String getMessege() {
		return messege;
	}
	public void setMessege(String messege) {
		this.messege = messege;
	}
	public void pay(Paycheck c){
		this.paycheck=c;
	}
	public String toString(){
		return "֧Ʊ�����ڳ�����Ա";
	}
}
