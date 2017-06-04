package com.payroll.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.payroll.service.ChangeCommissionedTransaction;
import com.payroll.service.ChangeHourlyTransaction;
import com.payroll.service.ChangeSalariedTransaction;

@Controller
@RequestMapping("changeClassification")
public class ChangeClassification {
	@Autowired
	ChangeHourlyTransaction changeHourlyTransaction;
	@Autowired
	ChangeSalariedTransaction changeSalariedTransaction;
	@Autowired
	ChangeCommissionedTransaction ChangeCommissionedTransaction;
	@RequestMapping(value="toHourlyClassification")
	public String toHourlyClassification(String id,String hourlyRate){
		changeHourlyTransaction.setId(Integer.valueOf(id));
		changeHourlyTransaction.setHourlyRate(Double.valueOf(hourlyRate));
		changeHourlyTransaction.execute();
		return "redirect:/showAllEmployeeMessege";
	}
	@RequestMapping(value="toSalariedClassification")
	public String toSalariedClassification(String id,String salary){
		changeSalariedTransaction.setId(Integer.valueOf(id));
		changeSalariedTransaction.setSalary(Double.valueOf(salary));
		changeSalariedTransaction.execute();
		return "redirect:/showAllEmployeeMessege";
	}
	@RequestMapping(value="toCommissionedClassification")
	public String toCommissionedClassification(String id,String salary,String commissionRate){
		ChangeCommissionedTransaction.setId(Integer.valueOf(id));
		ChangeCommissionedTransaction.setSalary(Double.valueOf(salary));
		ChangeCommissionedTransaction.setCommissionRate(Double.valueOf(commissionRate));
		ChangeCommissionedTransaction.execute();
		return "redirect:/showAllEmployeeMessege";
	}
}
