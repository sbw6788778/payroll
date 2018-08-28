package com.payroll.service;

import org.springframework.stereotype.Service;

@Service
public class ChangeMemberTransaction extends ChangeAffiliationTransaction {
    private int memId;
    private double dues;

    public int getMemId() {
        return memId;
    }

    public void setMemId(int memId) {
        this.memId = memId;
    }

    public double getDues() {
        return dues;
    }

    public void setDues(double dues) {
        this.dues = dues;
    }

    public ChangeMemberTransaction() {
        // TODO Auto-generated constructor stub
    }

    protected Affiliation affiliation() {
        return new UnionAffiliation(memId, dues);
    }

    protected void recordMembership(Employee e) {
        database.addUnionMember(memId, dues, e);
    }

}
