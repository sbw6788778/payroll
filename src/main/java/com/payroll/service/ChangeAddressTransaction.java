package com.payroll.service;

import org.springframework.stereotype.Service;

@Service
public class ChangeAddressTransaction extends ChangeEmployeeTransaction {
	private String newAddress;
	public ChangeAddressTransaction() {
		// TODO Auto-generated constructor stub
	}
	public String getNewAddress() {
		return newAddress;
	}
	public void setNewAddress(String newAddress) {
		this.newAddress = newAddress;
	}
	protected void change(Employee e){
		database.changeAddress(e.getId(),newAddress);
	}

}
