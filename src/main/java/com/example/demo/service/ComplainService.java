package com.example.demo.service;

import com.example.demo.eneity.Complain;

import java.util.List;

public interface ComplainService {
    public int getCount();

    public List<Complain> getAllComplains(int page, int limit);

    public int addComplain(Complain complain);

    public int updateComplain(Complain complain);

    public int delComplain(int id);

    public int getCount(String name);

    public List<Complain> findComplain(int page, int limit, String name);

    public int getCountByUserId(Integer id);

    public int getCount(Integer id);

    public List<Complain> getAllComplainsByUser(int page, int limit, Integer id);
}
