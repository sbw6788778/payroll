package com.payroll.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.payroll.dao.PayrollSystemDao;
import com.payroll.dao.PayrollSystemDaoImpl;

public abstract class Affiliation {
    @Autowired
    protected PayrollSystemDaoImpl database;

    public abstract double calculateDeductions(Paycheck p);
}
