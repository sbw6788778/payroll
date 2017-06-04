package com.payroll.service;
import java.util.Calendar;
import java.util.Date;
public class WeeklySchedule implements PaymentSchedule {
	private String messege="��֧��";
	public String getMessege() {
		return messege;
	}
	public void setMessege(String messege) {
		this.messege = messege;
	}
	public  boolean isPayDate(Date date) {
		Calendar ca=Calendar.getInstance();
		ca.setTime(date);
		return ca.get(Calendar.DAY_OF_WEEK)==Calendar.FRIDAY;
	}
	public Date getPayPeriodStartDate(Date date){
		Calendar ca = Calendar.getInstance();
		ca.setTime(date);
		ca.add(Calendar.DATE, -6);
		return ca.getTime();
	}
	public String toString(){
		return "��֧��";
	}
}
