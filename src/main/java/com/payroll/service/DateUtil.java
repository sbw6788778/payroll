package com.payroll.service;
import java.util.Date;

public class DateUtil {
	public static boolean isInPayPeriod(Date date,Date startDate,Date endDate){
		return date.before(endDate)&&date.after(startDate);
	}
}
