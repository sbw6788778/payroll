package com.payroll.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.payroll.service.ChangeAffiliationTransaction;
import com.payroll.service.ChangeMemberTransaction;
import com.payroll.service.ChangeUnaffiliatedTransaction;

@Controller
@RequestMapping("changeAffiliation")
public class ChangeAffiliation {
	@Autowired
	ChangeMemberTransaction changeMemberTransaction;
	@Autowired
	ChangeUnaffiliatedTransaction changeUnaffiliatedTransaction;
	@RequestMapping(value="unaffiliation")
	public String unaffiliation(String id){
		changeUnaffiliatedTransaction.setId(Integer.valueOf(id));
		changeUnaffiliatedTransaction.execute();
		return "redirect:/personalMessege";
	} 
	@RequestMapping(value="affiliation")
	public String affiliation(String id,String dues,String memId){
		changeMemberTransaction.setId(Integer.valueOf(id));
		changeMemberTransaction.setDues(Double.valueOf(dues));
		changeMemberTransaction.setMemId(Integer.valueOf(memId));
		changeMemberTransaction.execute();
		return "redirect:/personalMessege";
	}
	
}
