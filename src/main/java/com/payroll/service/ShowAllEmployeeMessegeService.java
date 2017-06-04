package com.payroll.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Service;

import com.payroll.dao.PayrollSystemDaoImpl;

@Service
public class ShowAllEmployeeMessegeService extends Transaction{
	private List<Employee> employees=new ArrayList();
	public List<Employee> getEmployees() {
		return employees;
	}
	@Override
	public void execute(){
		// TODO Auto-generated method stub
		employees.clear();
		List<Integer> s=database.GetAllEmployeeIds();
		for(Integer i:s){
			employees.add(database.GetEmployee(i));
		}
	}
}
