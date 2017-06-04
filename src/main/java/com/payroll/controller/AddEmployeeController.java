package com.payroll.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.payroll.service.AddCommissionedEmployee;
import com.payroll.service.AddHourlyEmployee;
import com.payroll.service.AddSalariedEmployee;

@Controller
@RequestMapping("addEmployee")
public class AddEmployeeController {
	@Autowired
	private AddCommissionedEmployee addCommissionedEmployee;
	@Autowired
	private AddHourlyEmployee addHourlyEmployee;
	@Autowired
	private AddSalariedEmployee addSalariedEmployee;
	
	@RequestMapping(value="AddCommissionEmployee")
	public String addCommissionEmployee(String id,String name,String address,String salary,String commissionRate){
		addCommissionedEmployee.setEmpid(Integer.valueOf(id));
		addCommissionedEmployee.setName(name);
		addCommissionedEmployee.setAddress(address);
		addCommissionedEmployee.setSalary(Double.valueOf(salary));
		addCommissionedEmployee.setCommissionRate(Double.valueOf(commissionRate));
		addCommissionedEmployee.execute();
		return "adminFunction";
	}
	@RequestMapping(value="AddHourlyEmployee")
	public String addHourlyEmployee(String id,String name,String address,String hourlyRate){
		addHourlyEmployee.setEmpid(Integer.valueOf(id));
		addHourlyEmployee.setName(name);
		addHourlyEmployee.setAddress(address);
		addHourlyEmployee.setHourlyRate(Double.valueOf(hourlyRate));
		addHourlyEmployee.execute();
		return "adminFunction";
	}
	@RequestMapping(value="AddSalaryEmployee")
	public String addSalaryEmployee(String id,String name,String address,String salary){
		addSalariedEmployee.setEmpid(Integer.valueOf(id));
		addSalariedEmployee.setName(name);
		addSalariedEmployee.setAddress(address);
		addSalariedEmployee.setSalary(Double.valueOf(salary));
		addSalariedEmployee.execute();
		return "adminFunction";
	}
}
