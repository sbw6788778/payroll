package com.payroll.service;

import org.springframework.stereotype.Service;

@Service
public class SeachEmployee extends Transaction {
    int id;
    Employee employee;

    public Employee getEmployee() {
        return employee;
    }

    @Override
    public void execute() {
        // TODO Auto-generated method stub
        employee = database.GetEmployee(id);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
