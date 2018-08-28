package com.payroll.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.payroll.service.EmployeeUser;

@Controller
public class ShowPersonalMessege {
	@RequestMapping("personalMessege")
	@ResponseBody
	public EmployeeUser showmessege(HttpServletRequest request){
		EmployeeUser u= (EmployeeUser)request.getSession().getAttribute("user");
		u.setEmployeeMessegeAndEmail();
		return u;
	}
}
