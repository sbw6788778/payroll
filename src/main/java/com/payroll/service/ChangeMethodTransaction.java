package com.payroll.service;

public abstract class ChangeMethodTransaction extends ChangeEmployeeTransaction {
	public void change(Employee e){
		e.setMethod(getMethod());
		database.changeMethod(e);
	}
	//要变成什么样？没输入啊
	protected abstract PaymentMethod getMethod();
}
