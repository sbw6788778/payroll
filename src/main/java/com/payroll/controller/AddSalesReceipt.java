package com.payroll.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.payroll.service.SalesReceiptTransaction;

@Controller
public class AddSalesReceipt {
	@Autowired
	SalesReceiptTransaction salesReceiptTransaction;
	@RequestMapping("addSalesReceipt")
	public String addSalesReceipt(String id,String amount,String date){
		salesReceiptTransaction.setId(Integer.valueOf(id));
		salesReceiptTransaction.setAmount(Double.valueOf(amount));
		String[] a=date.split("-");
		Integer[] b=new Integer[3];
		for(int i=0;i<3;i++){
			b[i]=Integer.parseInt(a[i]);
		}
		Date d=new Date(b[0]-1900,b[1]-1,b[2]);
		salesReceiptTransaction.setDate(d);
		salesReceiptTransaction.execute();
		return "redirect:/personalMessege"; 
	}
}
