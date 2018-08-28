package com.payroll.service;

public abstract class AddEmployeeTransaction extends Transaction {
    protected int empid;
    protected String name;

    public int getEmpid() {
        return empid;
    }

    public void setEmpid(int empid) {
        this.empid = empid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    protected String address;

    protected abstract PaymentClassification makeClassification();

    protected abstract PaymentSchedule makeSchedule();

    //������Ա����ӵ����ݿ�
    public void execute() {
        PaymentClassification pc = makeClassification();
        PaymentSchedule ps = makeSchedule();
        //Ĭ���ǳ�����Ա����֧Ʊ
        HoldMethod pm = new HoldMethod();
        Employee e = new Employee(empid, name, address);
        e.setClassification(pc);
        e.setSchedule(ps);
        e.setMethod(pm);
        database.AddEmployee(empid, e);
    }

}
