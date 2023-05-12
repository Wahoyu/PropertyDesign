package com.example.demo.service.impl;

import com.example.demo.eneity.Complain;
import com.example.demo.dao.ComplainDao;
import com.example.demo.mapper.ComplainMapper;
import com.example.demo.service.ComplainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ComplainServiceImpl implements ComplainService {
    @Autowired
    ComplainDao dao;

    @Autowired
    ComplainMapper mapper;

    public int getCount() {
        return Math.toIntExact(mapper.selectCount(null));
    }

    public List<Complain> getAllComplains(int page, int limit) {
        return dao.getAllComplains(page,limit);
    }

    public int addComplain(Complain complain) {
        return dao.addComplain(complain);
    }

    public int updateComplain(Complain complain) {
        return dao.updateComplain(complain);
    }

    public int delComplain(int id) {
        return dao.delComplain(id);
    }

    public int getCount(String name) {
        return dao.getCount(name);
    }

    public List<Complain> findComplain(int page, int limit, String name) {
        return dao.findComplain(page,limit,name);
    }

    public int getCountByUserId(Integer id) {
        return dao.getCountByUserId(id);
    }

    public int getCount(Integer id) {
        return dao.getCount(id);
    }

    public List<Complain> getAllComplainsByUser(int page, int limit, Integer id) {
        return dao.getAllComplainsByUser(page,limit,id);
    }
}