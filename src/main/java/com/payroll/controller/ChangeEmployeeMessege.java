package com.payroll.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.payroll.service.ChangeAddressTransaction;
import com.payroll.service.ChangeDirectTransaction;
import com.payroll.service.ChangeMailTransaction;
import com.payroll.service.ChangeNameTransaction;

@Controller
@RequestMapping("change")
public class ChangeEmployeeMessege {
	@Autowired
	ChangeNameTransaction changeName;
	@Autowired
	ChangeAddressTransaction changeAddress;
	@Autowired
	ChangeMailTransaction mailMethod;
	@Autowired
	ChangeDirectTransaction bankMethod;
	@RequestMapping(value="name")
	public String changeName(String id,String name){
		changeName.setId(Integer.valueOf(id));
		System.out.println(name);
		changeName.setNewName(name);
		changeName.execute();
		return "redirect:/personalMessege";
	}
	@RequestMapping(value="address")
	public String changeAddress(String id,String address){
		changeAddress.setId(Integer.valueOf(id));
		changeAddress.setNewAddress(address);
		changeAddress.execute();
		return "redirect:/personalMessege";
	}
	@RequestMapping(value="mailmethod")
	public String changeMailMethod(String id,String address){
		mailMethod.setId(Integer.valueOf(id));
		mailMethod.setAddress(address);
		mailMethod.execute();
		return "redirect:/personalMessege";
	}
	@RequestMapping(value="bankmethod")
	public String changeBankMethod(String id,String bank,String account){
		bankMethod.setId(Integer.valueOf(id));
		bankMethod.setBank(bank);
		bankMethod.setAccount(account);
		bankMethod.execute();
		return "redirect:/personalMessege";
	}
}
