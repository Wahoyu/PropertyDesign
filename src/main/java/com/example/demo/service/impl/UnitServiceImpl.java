package com.example.demo.service.impl;

import com.example.demo.dao.UnitDao;
import com.example.demo.eneity.Unit;
import com.example.demo.dao.UnitDao;
import com.example.demo.eneity.Unit;
import com.example.demo.service.UnitService;
import com.example.demo.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UnitServiceImpl implements UnitService {
    @Autowired
    UnitDao dao;
    public int getCount() {
        return dao.getCount();
    }

    public List<Unit> getAllUnits(int page, int limit) {
        return dao.getAllUnits(page,limit);
    }

    public int addUnit(Unit unit) {
        return dao.addUnit(unit);
    }

    public int updateUnit(Unit unit) {
        return dao.updateUnit(unit);
    }

    public int delUnit(int id) {
        return dao.delUnit(id);
    }

    public List<Unit> findUnit(int page, int limit, String name) {
        return dao.findUnit(page,limit,name);
    }

    public int getCount(String name) {
        return dao.getCount(name);
    }

    public List<Unit> getAllUnits() {
        return dao.getAllUnits();
    }
}
