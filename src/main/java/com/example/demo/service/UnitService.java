package com.example.demo.service;

import com.example.demo.eneity.Unit;

import java.util.List;

public interface UnitService {

    public int getCount();

    public List<Unit> getAllUnits(int page, int limit);

    public int addUnit(Unit unit);

    public int updateUnit(Unit unit);

    public int delUnit(int id);

    public List<Unit> findUnit(int page, int limit, String name);

    public int getCount(String name);

    public List<Unit> getAllUnits();
}
