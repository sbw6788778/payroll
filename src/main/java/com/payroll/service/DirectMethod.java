package com.payroll.service;

public class DirectMethod implements PaymentMethod {
	public void setBank(String bank) {
		Bank = bank;
	}
	public void setAccount(String account) {
		Account = account;
	}
	private String messege="存入银行";
	public String getMessege() {
		return messege;
	}
	public void setMessege(String messege) {
		this.messege = messege;
	}
	private String Bank;
	private String Account;
	private Paycheck paycheck;
	public String getBank(){
		return this.Bank;
	}
	public String getAccount(){
		return this.Account;
	}
	public void pay(Paycheck c){
		this.paycheck=c;
	}
	public String toString(){
		return "存入银行";
	}
}
