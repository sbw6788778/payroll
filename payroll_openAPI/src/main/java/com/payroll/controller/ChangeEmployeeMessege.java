package com.payroll.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.payroll.service.ChangeAddressTransaction;
import com.payroll.service.ChangeDirectTransaction;
import com.payroll.service.ChangeMailTransaction;
import com.payroll.service.ChangeNameTransaction;
import com.payroll.service.Employee;
import com.payroll.service.EmployeeUser;

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
	@RequestMapping(value="userProfile")
	@ResponseBody
        public String changeBankMethod(HttpServletRequest req,String name,String address,String mailAddress,String bank,String account){
		EmployeeUser user= (EmployeeUser)(req.getSession().getAttribute("user"));
		if(user==null){
			return "fail";
		}
		int eid=user.getEmployeeMessege().getEmpId();
		if(!name.equals("")){
                	changeName.setId(eid);
        	        changeName.setNewName(name);
	                changeName.execute();

		}
		if(!address.equals("")){
				changeAddress.setId(eid);
                changeAddress.setNewAddress(address);
               	 changeAddress.execute();
		}
		if(mailAddress!=null&&!mailAddress.equals("")){
				mailMethod.setId(eid);
                mailMethod.setAddress(mailAddress);
                mailMethod.execute();
		}
		if(bank!=null&&(!bank.equals(""))||(account!=null&&!account.equals(""))){
				bankMethod.setId(eid);
                bankMethod.setBank(bank);
                bankMethod.setAccount(account);
                bankMethod.execute();
		}
                return "success";
        }

}
