package com.payroll.service;
import java.util.Date;

import org.springframework.stereotype.Service;
@Service
public class SalesReceiptTransaction extends Transaction {
	private Date date;
	private int id;
	private double amount;
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public void execute(){
		Employee e=database.GetEmployee(id);
		if(e!=null){
			CommissionedClassification cc=(CommissionedClassification)e.getClassification();
			if(cc!=null)
				database.addSalesReceipt(id,new SalesReceipt(date,amount));
		}
		
	}

}
