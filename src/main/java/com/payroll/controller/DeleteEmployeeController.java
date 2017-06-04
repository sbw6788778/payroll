package com.payroll.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.payroll.service.DeleteEmployeeTransaction;

@Controller
public class DeleteEmployeeController {
	@Autowired
	DeleteEmployeeTransaction deleteEmployeeTransaction;
	@RequestMapping("DeleteEmployee")
	public String deleteEmployee(String id){
		deleteEmployeeTransaction.setId(Integer.valueOf(id));
		deleteEmployeeTransaction.execute();
		return "adminFunction";
	}
}
