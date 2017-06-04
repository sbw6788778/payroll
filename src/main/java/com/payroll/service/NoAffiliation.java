package com.payroll.service;

public class NoAffiliation extends Affiliation {
	private String messege="非工会成员";
	public String getMessege() {
		return messege;
	}
	public void setMessege(String messege) {
		this.messege = messege;
	}
	public double calculateDeductions(Paycheck c){
		return 0;
	}
	public String toString(){
		return "非工会成员";
	}

}
