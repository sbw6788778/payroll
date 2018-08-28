package com.payroll.service;


import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Hashtable;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Service
public class CalculatePayCheckAndSendEmail {
    @Autowired
    PaydayTransaction paydayTransaction;
    @Autowired
    JavaMailSenderImpl mailSender;

    @Scheduled(cron = "0 0 0 * * ?")
    public void calculate() {
        Calendar c = Calendar.getInstance();
        paydayTransaction.setPayDate(c.getTime());
        paydayTransaction.execute();
        Hashtable<Integer, Paycheck> paychecks = paydayTransaction.getPaychecks();
        if (paychecks == null)
            return;
        for (Integer id : paychecks.keySet()) {
            String email = paydayTransaction.database.getEmailById(id);
            if (email == null)
                continue;
            sendEmail(email, paychecks.get(id));

        }
    }

    public void sendEmail(String email, Paycheck paycheck) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("jjhgkhkjgjh@163.com");
        message.setTo(email);
        message.setSubject("�����˵�");
        Date date = paycheck.getDateTime();
        SimpleDateFormat timeFormater = new SimpleDateFormat("yyyy-MM-dd");
        String time = timeFormater.format(date);
        message.setText("����:" + time + "�ܵ�нˮ��" + paycheck.getGrossPay() + "������" + paycheck.getDeductions() + "��нˮ" + paycheck.getNetPay());
        mailSender.send(message);
    }
}