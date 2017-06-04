package com.payroll.service;

import org.springframework.stereotype.Service;

@Service
public class DeleteEmployeeTransaction extends Transaction{
	private int id ;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void execute(){
		database.DeleteEmployee(id);
	}
}
