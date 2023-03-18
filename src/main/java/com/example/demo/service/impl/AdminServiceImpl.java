package com.example.demo.service.impl;

import com.example.demo.bean.Admin;
import com.example.demo.dao.AdminDao;
import com.example.demo.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    AdminDao dao;

    public Admin findAdmin(String email, String password) {
        return dao.findAdmin(email,password);
    }

    public int updatePass(int id, String newPsw) {
        return dao.updatePass(id,newPsw);
    }
}
