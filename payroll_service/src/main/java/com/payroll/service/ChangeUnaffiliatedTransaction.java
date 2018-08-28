package com.payroll.service;

import org.springframework.stereotype.Service;

@Service
public class ChangeUnaffiliatedTransaction extends ChangeAffiliationTransaction {

    protected Affiliation affiliation() {
        return new NoAffiliation();
    }

    protected void recordMembership(Employee e) {
        UnionAffiliation unionAffiliation = (UnionAffiliation) e.getAffiliation();
        int memId = unionAffiliation.getMemId();
        database.removeUnionMember(memId);
    }
}
