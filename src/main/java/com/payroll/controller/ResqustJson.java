package com.payroll.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.payroll.service.HourlyClassification;

@Controller
public class ResqustJson {
	@RequestMapping("requestJson")
	@ResponseBody
	public HourlyClassification requestJson(){
		return new HourlyClassification(1000);
	}
}
