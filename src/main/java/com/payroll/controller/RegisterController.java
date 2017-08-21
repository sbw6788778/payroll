package com.payroll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.payroll.dao.PayrollSystemDaoImpl;
import com.payroll.service.EmployeeRegisterMessage;

@Controller
public class RegisterController {
	@Autowired
	PayrollSystemDaoImpl payrollDao;
	@RequestMapping(value="/Register",produces="application/text;charset=UTF-8")
	@ResponseBody
	public String register(@Valid EmployeeRegisterMessage employee,BindingResult result,HttpServletResponse response){
		//valid the form data format and make sure not to be null;
		if(result.hasErrors()){
			String errorMessage=result.getFieldError().getDefaultMessage();
			return errorMessage;
		}
		int empId=Integer.parseInt(employee.getId());
		if(payrollDao.GetEmployee(empId)==null){
			return "没有这个id的员工";
		}
		else if(payrollDao.getRegisterMessage(empId)!=null){
			return "该员工号已经注册了";
		}
		else if((payrollDao.getIdByUsername(employee.getUsername())!=0)){
			return "用户名已经被注册";
		}
		else{
			payrollDao.AddRegisterMessage(employee);
			return "success";
		}
	}
}
