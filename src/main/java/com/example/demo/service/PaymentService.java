package com.example.demo.service;

import com.example.demo.eneity.Payment;

import java.util.List;

public interface PaymentService {
    public int getCount();

    public List<Payment> getAllPayments(int page, int limit);

    public int addPayment(Payment payment);

    public int updatePayment(Payment payment);

    public int delPayment(int id);

    public int getCount(String name);

    public List<Payment> findPayment(int page, int limit, String name);

    public List<Payment> getAllPayments();
}
