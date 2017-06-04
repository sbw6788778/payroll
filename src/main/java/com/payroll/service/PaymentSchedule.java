package com.payroll.service;
import java.util.Date;
public interface PaymentSchedule {
	 public boolean isPayDate(Date date);
	 public String toString();
	 public Date getPayPeriodStartDate(Date date);
}
