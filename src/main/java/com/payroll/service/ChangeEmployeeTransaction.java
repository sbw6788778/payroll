package com.payroll.service;

import java.io.InvalidObjectException;

public abstract class ChangeEmployeeTransaction extends Transaction {
	protected int id;
	public ChangeEmployeeTransaction(int id) {
		// TODO Auto-generated constructor stub
		this.id=id;
	}
	public ChangeEmployeeTransaction() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public void execute(){
		Employee e=database.GetEmployee(id);
		if(e==null)
			return;
		change(e);
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	protected abstract void change(Employee e);

}
