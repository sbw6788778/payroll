package com.payroll.service;

import org.springframework.stereotype.Service;

@Service
public class ChangeMailTransaction extends ChangeMethodTransaction {
	private String address;
	public ChangeMailTransaction() {
		// TODO Auto-generated constructor stub
	}
	protected PaymentMethod getMethod(){
		return new MailMethod(address);
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}	
