package com.payroll.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.payroll.dao.PayrollSystemDaoImpl;

@Controller
public class RegisterController {
	@Autowired
	PayrollSystemDaoImpl payrollDao;
	@RequestMapping("/Register")
	public String register(String id,String username,String password,String email){
		int empId=Integer.parseInt(id);
		if((payrollDao.GetEmployee(empId)==null)||(payrollDao.getIdByUsername(username)!=0)){
			return "register";
		}
		else{
			payrollDao.AddRegisterMessage(empId, username, password, email);
			return "index";
		}
	}
}
