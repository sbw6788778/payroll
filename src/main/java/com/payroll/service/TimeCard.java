package com.payroll.service;
import java.util.Date;
public class TimeCard {
	private Date Date;
	private double Hours;
	public TimeCard(Date date,double hours){
		this.Date=date;
		this.Hours=hours;
	}
	public TimeCard() {
		// TODO Auto-generated constructor stub
	}
	public double getHours(){
		return Hours;
	}
	public Date getDate(){
		return Date;
	}
}
