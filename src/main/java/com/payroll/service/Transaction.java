package com.payroll.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.payroll.dao.PayrollSystemDaoImpl;

public abstract class  Transaction {
	@Autowired
	PayrollSystemDaoImpl database;
	//autowired canot be protected？
	public abstract void execute()throws Exception;

}
