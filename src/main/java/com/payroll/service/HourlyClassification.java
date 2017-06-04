package com.payroll.service;
import java.util.Date;
import java.util.Calendar;
import java.util.Hashtable;
import java.util.Calendar;
public class HourlyClassification implements PaymentClassification {
	//ÿСʱ�ı���
	private String messege="Сʱ��";
	public String getMessege() {
		return messege;
	}
	public void setMessege(String messege) {
		this.messege = messege;
	}
	private double HourlyRate;
	private Hashtable<Date, TimeCard>  timeCard=new Hashtable<Date, TimeCard>();
	public HourlyClassification(double salary){
		this.HourlyRate=salary;
	}
	public HourlyClassification() {
		// TODO Auto-generated constructor stub
	}
	public void addTimeCard(TimeCard c){
		this.timeCard.put(c.getDate(), c);
	}
	public TimeCard getTimeCard(Date date){
		return timeCard.get(date);
	}
	public double getHourlyRate(){
		return this.HourlyRate;
	}
	public double calculatePay(Paycheck paycheck) {
		double totalPay=0.0;
		for(Date t:timeCard.keySet()){
			//�жϴ��ʱ����Ƿ������֧��������
			if(DateUtil.isInPayPeriod(timeCard.get(t).getDate(),paycheck.getStartDate(),paycheck.getDateTime()))
				totalPay+=calculatePayForTimeCard(timeCard.get(t));
		}
		return totalPay;
	}
	private double calculatePayForTimeCard(TimeCard card){
		double overtimeHours=Math.max(0, card.getHours()-8);
		double normalHours=card.getHours()-overtimeHours;
		return HourlyRate*normalHours+HourlyRate*1.5*overtimeHours;
	}
	public String toString(){
		return "Сʱ��";
	}

}
