package com.payroll.service;

import org.springframework.stereotype.Service;

@Service
public class ChangeNameTransaction extends ChangeEmployeeTransaction {
	private String newName;
	public String getNewName() {
		return newName;
	}
	public void setNewName(String newName) {
		this.newName = newName;
	}
	protected void change(Employee e){
		database.changeName(e.getId(),newName);
	}

}
