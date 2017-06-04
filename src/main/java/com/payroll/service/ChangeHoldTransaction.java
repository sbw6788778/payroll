package com.payroll.service;

public class ChangeHoldTransaction extends ChangeMethodTransaction {
	protected PaymentMethod getMethod(){
		return new HoldMethod();
	}
}
