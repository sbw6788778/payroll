package com.payroll.service;

import java.io.InvalidObjectException;
import java.util.Date;

import org.springframework.stereotype.Service;
@Service
public class ServiceChargeTransaction extends Transaction{
	private Date date;
	private double amount;
	private int memberID;

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public int getMemberID() {
		return memberID;
	}

	public void setMemberID(int memberID) {
		this.memberID = memberID;
	}

	public void execute() {
		Employee e=database.GetUnionMember(memberID);
		
		if(e!=null){
			UnionAffiliation  ua=null;
			if(e.getAffiliation() instanceof UnionAffiliation)
				ua=(UnionAffiliation)e.getAffiliation();
			if(ua!=null){
				ua.addServiceCharge(date,new ServiceCharge(date,amount));
				database.addServiceCharge(memberID,new ServiceCharge(date,amount));
			}
		}
	}
	
}
