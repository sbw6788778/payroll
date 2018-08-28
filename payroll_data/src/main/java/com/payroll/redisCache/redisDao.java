package com.payroll.redisCache;



import com.payroll.service.EmployeeUser;

public interface redisDao {
	/**
	 * 缓存先设置只能存储employeeRegisterMessage对象
	 * @return
	 */
	public EmployeeUser getEmployee(int id);
	public void setEmployee(int id ,EmployeeUser e);
	public void removeEmployee(int id);
	public void removeAllEmployee();
	
}
