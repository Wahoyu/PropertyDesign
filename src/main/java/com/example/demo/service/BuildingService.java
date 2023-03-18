package com.example.demo.service;

import com.example.demo.bean.Building;

import java.util.List;

public interface BuildingService {
    public int getCount();

    public List<Building> getAllBuildings(int page, int limit);

    public int addBuilding(Building building);

    public int updateBuilding(Building building);

    public int delBuilding(int id);

    public int getCount(String name);

    public List<Building> findBuilding(int page, int limit, String name);

    public List<Building> getAllBuildings();
}
