package com.payroll.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.payroll.service.ServiceChargeTransaction;

@Controller
public class AddServiceCharge {
	@Autowired
	ServiceChargeTransaction serviceChargeTransaction;
	@RequestMapping("addServiceCharge")
	public String addServiceCharge(String memberId,String date,String amount){
		serviceChargeTransaction.setMemberID(Integer.valueOf(memberId));
		System.out.println(memberId);
		serviceChargeTransaction.setAmount(Double.valueOf(amount));
		String[] a=date.split("-");
		Integer[] b=new Integer[3];
		for(int i=0;i<3;i++){
			b[i]=Integer.parseInt(a[i]);
		}
		Date d=new Date(b[0]-1900,b[1]-1,b[2]);
		serviceChargeTransaction.setDate(d);
		serviceChargeTransaction.execute();
		return "redirect:/personalMessege";
	}
}
