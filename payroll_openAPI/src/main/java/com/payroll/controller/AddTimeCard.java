package com.payroll.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.payroll.service.EmployeeUser;
import com.payroll.service.TimeCardTransaction;

@Controller
public class AddTimeCard {
	@Autowired
	TimeCardTransaction timeCardTransaction;
	@RequestMapping("addTimeCard")
	@ResponseBody
	public String addTimeCard(HttpServletRequest req,String hours,String date){
		EmployeeUser user= (EmployeeUser)(req.getSession().getAttribute("user"));
		if(user==null){
			return "fail";
		}
		int id=user.getEmployeeMessege().getEmpId();
		timeCardTransaction.setId(id);
		timeCardTransaction.setHours(Double.valueOf(hours));
		String[] a=date.split("-");
		Integer[] b=new Integer[3];
		for(int i=0;i<3;i++){
			b[i]=Integer.parseInt(a[i]);
		}
		Date d=new Date(b[0]-1900,b[1]-1,b[2]);
		timeCardTransaction.setDate(d);
		timeCardTransaction.execute();
		return "success"; 
	}
}
