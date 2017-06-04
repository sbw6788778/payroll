package com.payroll.service;
import java.util.Date;
import java.util.Calendar;
public class MonthlySchedule implements PaymentSchedule {
	private String messege="月支付";
	public String getMessege() {
		return messege;
	}
	public void setMessege(String messege) {
		this.messege = messege;
	}
	private  boolean isLastDayOfMonth(Date date){
		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		calendar.set(Calendar.DATE, (calendar.get(Calendar.DATE) + 1));
		if (calendar.get(Calendar.DAY_OF_MONTH) == 1) {
			return true;
		}
		return false;
	}
	public  boolean isPayDate(Date date) {
		return isLastDayOfMonth(date);
	}
	public Date getPayPeriodStartDate(Date date){
		Calendar ca=Calendar.getInstance();
		ca.setTime(date);
		int month=ca.get(Calendar.MONTH);
		while(ca.get(Calendar.MONTH)==month){
			ca.add(Calendar.DATE, -1);
		}
		return ca.getTime();
	}
	public String toString (){
		return "月支付";
	}
}
