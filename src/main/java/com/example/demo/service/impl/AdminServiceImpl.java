package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.demo.eneity.Admin;
import com.example.demo.mapper.AdminMapper;
import com.example.demo.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Resource
    AdminMapper mapper;

    //Loading : Find admin object by email&password
    public Admin findAdmin(String email, String password) {
        QueryWrapper<Admin> wrapper = new QueryWrapper<>();
        wrapper.eq("email",email);
        wrapper.eq("password",password);

        List<Admin> list = mapper.selectList(wrapper);

        if (list!=null && list.size()>0){
            return list.get(0);
        }else{
            return null;
        }
    }

    //Update PassWord By AdminId
    public int updatePass(int id, String newPsw) {
        Admin admin = new Admin();
        admin.setId(id);
        admin.setPassword(newPsw);
        return mapper.updateById(admin);
    }
}
