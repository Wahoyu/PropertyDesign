package com.example.demo.service;

import com.example.demo.bean.Repair;

import java.util.List;

public interface RepairService {

    public int getCount();

    public List<Repair> getAllRepairs(int page, int limit);

    public int addRepair(Repair repair);

    public int updateRepair(Repair repair);

    public int delRepair(int id);

    public int getCount(String name);

    public List<Repair> findRepair(int page, int limit, String name);

    public int getCountByUserId(Integer id);

    public List<Repair> getAllRepairsByUser(int page, int limit, Integer id);

}
