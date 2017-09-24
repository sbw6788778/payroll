package com.payroll.service;

public abstract class ChangeMethodTransaction extends ChangeEmployeeTransaction {
	public void change(Employee e){
		e.setMethod(getMethod());
		database.changeMethod(e);
	}

	protected abstract PaymentMethod getMethod();
}
