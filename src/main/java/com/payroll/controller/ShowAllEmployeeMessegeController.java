package com.payroll.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.payroll.service.Employee;
import com.payroll.service.ShowAllEmployeeMessegeService;

@Controller
public class ShowAllEmployeeMessegeController {
	@Autowired
	ShowAllEmployeeMessegeService s;
	@RequestMapping("showAllEmployeeMessege")
	public String  showAllEmployeeMessege(Model m,HttpServletResponse response){
		response.setHeader("Cache-Control", "no-cache");
		s.execute();
		m.addAttribute("employees", s.getEmployees());
		return "showAllEmployeeMessege";
	}
}
