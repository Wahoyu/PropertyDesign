package com.example.demo.service;

import com.example.demo.eneity.Admin;

public interface AdminService {
    public Admin findAdmin(String email, String password);

    public int updatePass(int id, String newPsw);
}
