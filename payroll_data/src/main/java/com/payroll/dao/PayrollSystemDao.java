package com.payroll.dao;

import java.util.List;

import com.payroll.service.Employee;
import com.payroll.service.SalesReceipt;
import com.payroll.service.ServiceCharge;
import com.payroll.service.TimeCard;

public interface PayrollSystemDao {
    void AddEmployee(int id, Employee employee);

    Employee GetEmployee(int id);

    void DeleteEmployee(int id);

    Employee GetUnionMember(int id);

    void addUnionMember(int memId, double dues, Employee e);

    void removeUnionMember(int memId);

    List<Integer> GetAllEmployeeIds();

    void addTimeCard(int id, TimeCard t);

    void addSalesReceipt(int id, SalesReceipt sr);

    void changeAddress(int id, String address);

    void changeName(int id, String newName);

    void changeMethod(Employee e);

    public void addServiceCharge(int memId, ServiceCharge sc);
}

