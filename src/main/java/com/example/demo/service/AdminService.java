package com.example.demo.service;

import com.example.demo.bean.Admin;

public interface AdminService {
    public Admin findAdmin(String email, String password);

    public int updatePass(int id, String newPsw);
}
