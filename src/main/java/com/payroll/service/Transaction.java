package com.payroll.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.payroll.dao.PayrollSystemDaoImpl;

public abstract class  Transaction {
	@Autowired
	protected PayrollSystemDaoImpl database;
	//Ҫô�����쳣Ҫô�����쳣
	public abstract void execute()throws Exception;

}
