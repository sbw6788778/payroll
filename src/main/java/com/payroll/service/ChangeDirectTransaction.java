package com.payroll.service;

import org.springframework.stereotype.Service;

@Service
public class ChangeDirectTransaction extends ChangeMethodTransaction {
	private String bank;
	private String account;
	public String getBank() {
		return bank;
	}
	public ChangeDirectTransaction() {
		// TODO Auto-generated constructor stub
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	protected PaymentMethod getMethod(){
		DirectMethod m=new DirectMethod();
		m.setBank(bank);m.setAccount(account);
		return m;
	}

}
