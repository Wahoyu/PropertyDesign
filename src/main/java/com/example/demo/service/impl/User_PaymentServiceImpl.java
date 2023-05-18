package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.eneity.Payment;
import com.example.demo.eneity.User;
import com.example.demo.eneity.User_Car;
import com.example.demo.eneity.User_Payment;
import com.example.demo.dao.User_PaymentDao;
import com.example.demo.mapper.PaymentMapper;
import com.example.demo.mapper.UserMapper;
import com.example.demo.mapper.User_PaymentMapper;
import com.example.demo.service.User_PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class User_PaymentServiceImpl implements User_PaymentService {
    @Autowired
    User_PaymentDao dao;
    @Resource
    User_PaymentMapper mapper;

    @Resource
    UserMapper userMapper;
    @Resource
    PaymentMapper paymentMapper;

    //添加用户缴费单
    public int fenpei(Integer user_id, Integer payment_id, String value) {
        User_Payment user_payment = new User_Payment();
        user_payment.setUser_id(user_id);
        user_payment.setPayment_id(payment_id);
        user_payment.setValue(value);
        user_payment.setTime(new Date());
        user_payment.setStatus(0);
        return mapper.insert(user_payment);
    }

    //查询数据总数
    public int getCount() {
        return Math.toIntExact(mapper.selectCount(null));
    }

    //根据状态进行模糊查询count

    public int getCount(String name) {
        QueryWrapper<User_Payment> wrapper = new QueryWrapper<>();
        wrapper.like("status", name);
        return Math.toIntExact(mapper.selectCount(wrapper));
    }
    //分页查询

    public List<User_Payment> getAllPaymentDetails(int page, int limit) {
        Page<User_Payment> page1 = new Page<>(page, limit);
        List<User_Payment> userPaymentList = mapper.selectPage(page1, null).getRecords();

        //注入user和payment
        if (userPaymentList!=null){
            for (User_Payment user_payment:userPaymentList){

                User user = userMapper.selectById(user_payment.getUser_id());
                Payment payment = paymentMapper.selectById(user_payment.getPayment_id());

                user_payment.setUser(user);
                user_payment.setPayment(payment);
            }
            System.out.println(userPaymentList);
            return userPaymentList;
        }else{
            return null;
        }
    }

    //根据缴费状态模糊进行分页查询
    public List<User_Payment> getAllPaymentDetails(int page, int limit, String name) {
        Page<User_Payment> page1 = new Page<>(page, limit);
        QueryWrapper<User_Payment> wrapper1 = new QueryWrapper<>();
        wrapper1.like("status", name);
        List<User_Payment> userPaymentList = mapper.selectPage(page1, wrapper1).getRecords();

        //注入user和payment
        if (userPaymentList!=null){
            for (User_Payment user_payment:userPaymentList){

                User user = userMapper.selectById(user_payment.getUser_id());
                Payment payment = paymentMapper.selectById(user_payment.getPayment_id());

                user_payment.setUser(user);
                user_payment.setPayment(payment);
            }
            return userPaymentList;
        }else{
            return null;
        }
    }

    //根据某个人的id,分页查询缴费信息
    public List<User_Payment> getAllPaymentDetails(int page, int limit, int user_id) {
        Page<User_Payment> page1 = new Page<>(page, limit);
        QueryWrapper<User_Payment> wrapper1 = new QueryWrapper<>();
        wrapper1.eq("user_id", user_id);
        List<User_Payment> userPaymentList = mapper.selectPage(page1, wrapper1).getRecords();

        //注入user和payment
        if (userPaymentList!=null){
            for (User_Payment user_payment:userPaymentList){

                User user = userMapper.selectById(user_payment.getUser_id());
                Payment payment = paymentMapper.selectById(user_payment.getPayment_id());

                user_payment.setUser(user);
                user_payment.setPayment(payment);
            }
            return userPaymentList;
        }else{
            return null;
        }
    }

    //查询status为0的数量
    public int getFreeCount() {
        QueryWrapper<User_Payment> wrapper = new QueryWrapper<>();
        wrapper.eq("status", 0);
        return Math.toIntExact(mapper.selectCount(wrapper));
    }

    //查询某个user_id的User_Payment的数量
    public int getCountByUserId(Integer id) {
        QueryWrapper<User_Payment> wrapper = new QueryWrapper<>();
        wrapper.eq("user_id", id);
        return Math.toIntExact(mapper.selectCount(wrapper));
    }

    public int getCount(int user_id) {
        QueryWrapper<User_Payment> wrapper = new QueryWrapper<>();
        wrapper.eq("user_id", user_id);
        return Math.toIntExact(mapper.selectCount(wrapper));
    }

    //用户缴费后,将status改为1
    public int jiaofei(int id) {
        User_Payment userPayment = mapper.selectById(id);
        userPayment.setStatus(1);
        return mapper.updateById(userPayment);
    }
}
