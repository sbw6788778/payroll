package com.payroll.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.payroll.service.TimeCardTransaction;

@Controller
public class AddTimeCard {
	@Autowired
	TimeCardTransaction timeCardTransaction;
	@RequestMapping("addTimeCard")
	public String addTimeCard(String id,String hours,String date){
		timeCardTransaction.setId(Integer.valueOf(id));
		timeCardTransaction.setHours(Double.valueOf(hours));
		String[] a=date.split("-");
		Integer[] b=new Integer[3];
		for(int i=0;i<3;i++){
			b[i]=Integer.parseInt(a[i]);
		}
		Date d=new Date(b[0]-1900,b[1]-1,b[2]);
		timeCardTransaction.setDate(d);
		timeCardTransaction.execute();
		return "redirect:/personalMessege"; 
	}
}
