package com.payroll.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.payroll.dao.PayrollSystemDaoImpl;
import com.payroll.service.Employee;
import com.payroll.service.EmployeeUser;

@Controller
@RequestMapping("/Login")
public class LoginController {
	@Autowired
	EmployeeUser u;
	@Autowired
	PayrollSystemDaoImpl payrollDao;
	@RequestMapping(value="/Admin")
	public String loginAdmin(HttpServletRequest request,@RequestParam("username") String username,@RequestParam("password") String password,ModelMap m){
		String result= payrollDao.loginAdminVerification(username, password);
		if(result.equals("������ȷ")){
			request.getSession().setAttribute("user",username);
			return "adminFunction";
		}
		else if(result.equals("�������")){
			return "index";
		}
		else {
			return "index";
		}
	}
	@RequestMapping(value="/Employee")
	public String loginEmployee(HttpServletRequest request,@RequestParam("username") String username,@RequestParam("password") String password,ModelMap m){
		u.setUsername(username);
		u.setPassword(password);
		String result=u.EmployeeVerification();
		if(result.equals("������ȷ")){
			request.getSession().setAttribute("user", u);
			return "redirect:/personalMessege";
		}
		else if(result.equals("�������")){
			return "index";
		}
		else {
			return "index";
		}
	}
}
