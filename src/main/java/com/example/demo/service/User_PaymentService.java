package com.example.demo.service;

import com.example.demo.eneity.User_Payment;

import java.util.List;

public interface User_PaymentService {
    public int fenpei(Integer user_id, Integer payment_id, String value);

    public int getCount();

    public List<User_Payment> getAllPaymentDetails(int page, int limit);

    public int getCount(String name);

    public List<User_Payment> getAllPaymentDetails(int page, int limit, String name);

    public List<User_Payment> getAllPaymentDetails(int page, int limit, int user_id);

    public int getFreeCount();

    public int getCountByUserId(Integer id);

    public int getCount(int user_id);

    public int payForIt(int id);

    public int delPay(int id);
}
