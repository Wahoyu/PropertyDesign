package com.example.demo.service;

import com.example.demo.eneity.Tousu;

import java.util.List;

public interface TousuService {
    public int getCount();

    public List<Tousu> getAllTousus(int page, int limit);

    public int addTousu(Tousu tousu);

    public int updateTousu(Tousu tousu);

    public int delTousu(int id);

    public int getCount(String name);

    public List<Tousu> findTousu(int page, int limit, String name);

    public int getCountByUserId(Integer id);

    public int getCount(Integer id);

    public List<Tousu> getAllToususByUser(int page, int limit, Integer id);
}
