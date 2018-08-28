package com.payroll.service;

public abstract class ChangeClassificationTransaction extends ChangeEmployeeTransaction {
    public ChangeClassificationTransaction(int id) {
        super(id);
    }

    protected void change(Employee e) {
        EmployeeUser u = database.getRegisterMessage(id);
        database.DeleteEmployee(id);
        e.setClassification(classification());
        e.setSchedule(schedule());
        database.AddEmployee(id, e);
        if (u != null)
            database.AddRegisterMessage(id, u.getUsername(), u.getPassword(), u.getEmail());
    }

    public ChangeClassificationTransaction() {
        // TODO Auto-generated constructor stub
    }

    protected abstract PaymentClassification classification();

    protected abstract PaymentSchedule schedule();
}
