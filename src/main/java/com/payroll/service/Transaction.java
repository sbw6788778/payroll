package com.payroll.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.payroll.dao.PayrollSystemDaoImpl;

public abstract class  Transaction {
	@Autowired
	protected PayrollSystemDaoImpl database;
	//要么申明异常要么处理异常
	public abstract void execute()throws Exception;

}
