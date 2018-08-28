package com.payroll.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.payroll.service.Employee;
import com.payroll.service.SeachEmployee; 
@Controller
@RequestMapping("/employees")
public class SearchEmployeeById {
	@Autowired
	SeachEmployee searchEmployee;
	@RequestMapping(method=RequestMethod.GET)
	@ResponseBody
	public Employee searchEmployee(@RequestParam(value="id")int id){
		searchEmployee.setId(id);
		searchEmployee.execute();
		Employee e=searchEmployee.getEmployee();
		return  e;
	}
}
