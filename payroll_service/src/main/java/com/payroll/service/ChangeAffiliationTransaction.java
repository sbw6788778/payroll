package com.payroll.service;

public abstract class ChangeAffiliationTransaction extends ChangeEmployeeTransaction {

    public ChangeAffiliationTransaction() {
        // TODO Auto-generated constructor stub
    }

    protected void change(Employee e) {
        recordMembership(e);
        e.setAffiliation(affiliation());
    }

    protected abstract Affiliation affiliation();

    protected abstract void recordMembership(Employee e);
}
