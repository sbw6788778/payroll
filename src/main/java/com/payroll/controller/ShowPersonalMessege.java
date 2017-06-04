package com.payroll.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.payroll.service.EmployeeUser;

@Controller
public class ShowPersonalMessege {
	@RequestMapping("personalMessege")
	public String showmessege(HttpServletRequest request,ModelMap m){
		EmployeeUser u= (EmployeeUser)request.getSession().getAttribute("user");
		if(u==null) System.out.println("¿ÕµÄ");
		u.setEmployeeMessegeAndEmail();
		m.addAttribute("user", u);
		return "employeeFunction";
	}
}
