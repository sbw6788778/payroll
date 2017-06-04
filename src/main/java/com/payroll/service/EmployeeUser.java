package com.payroll.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import com.payroll.dao.PayrollSystemDaoImpl;
@Service
public class EmployeeUser {
	@Autowired
	private PayrollSystemDaoImpl payrollDao;
	private String Username;
	private String Password;
	private String Email;
	public String getPassword() {
		return Password;
	}
	public void setEmail(String email) {
		Email = email;
	}
	private Employee employeeMessege;
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getEmail() {
		return Email;
	}
	public Employee getEmployeeMessege() {
		return employeeMessege;
	}
	public void setEmployeeMessegeAndEmail() {
		int id=payrollDao.getIdByUsername(this.Username);
		this.employeeMessege=payrollDao.GetEmployee(id);
		this.Email=payrollDao.getEmailById(id);
	}
	public String EmployeeVerification(){
		return payrollDao.loginEmployeeVerification(Username, Password);
	}

}
