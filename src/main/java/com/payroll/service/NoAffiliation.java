package com.payroll.service;

public class NoAffiliation extends Affiliation {
	private String messege="�ǹ����Ա";
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
		return "�ǹ����Ա";
	}

}
