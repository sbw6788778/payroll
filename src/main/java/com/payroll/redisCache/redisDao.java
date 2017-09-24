package com.payroll.redisCache;


import com.payroll.service.EmployeeRegisterMessage;

public interface redisDao {
	/**
	 * 缓存先设置只能存储employeeRegisterMessage对象
	 * @return
	 */
	public EmployeeRegisterMessage getEmployee();
	public void setEmployee();
	public void removeEmployee();
	public void removeAllEmployee();
	
}
