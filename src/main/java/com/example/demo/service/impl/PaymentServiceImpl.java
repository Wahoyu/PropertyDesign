package com.example.demo.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.eneity.Payment;
import com.example.demo.dao.PaymentDao;
import com.example.demo.mapper.PaymentMapper;
import com.example.demo.service.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class PaymentServiceImpl implements PaymentService {
    @Autowired
    PaymentDao dao;

    @Resource
    PaymentMapper mapper;

    //获取全部收费项数量
    public int getCount() {
        return Math.toIntExact(mapper.selectCount(null));
    }

    //分页查看收费项
    public List<Payment> getAllPayments(int page, int limit) {
        Page<Payment> page1 = new Page<>(page, limit);
        List<Payment> payments = mapper.selectPage(page1, null).getRecords();
        return payments;
    }

    //添加收费项
    public int addPayment(Payment payment) {
        return dao.addPayment(payment);
    }

    //更新收费项信息
    public int updatePayment(Payment payment) {
        return dao.updatePayment(payment);
    }

    //删除收费项信息
    public int delPayment(int id) {
        return dao.delPayment(id);
    }

    //通过name属性模糊查询,收费项数目
    public int getCount(String name) {
        return dao.getCount(name);
    }

    //根据name模糊,分页查询收费项信息
    public List<Payment> findPayment(int page, int limit, String name) {
        return dao.findPayment(page,limit,name);
    }

    //查看所有的收费项信息select *
    public List<Payment> getAllPayments() {
        return dao.getAllPayments();
    }
}
