package com.example.demo.service;

import com.example.demo.bean.Danyuan;

import java.util.List;

public interface DanyuanService {

    public int getCount();

    public List<Danyuan> getAllDanyuans(int page, int limit);

    public int addDanyuan(Danyuan danyuan);

    public int updateDanyuan(Danyuan danyuan);

    public int delDanyuan(int id);

    public List<Danyuan> findDanyuan(int page, int limit, String name);

    public int getCount(String name);

    public List<Danyuan> getAllDanyuans();
}
