package com.payroll.service;

import java.util.Date;

public interface PaymentSchedule {
    boolean isPayDate(Date date);

    String toString();

    Date getPayPeriodStartDate(Date date);
}
