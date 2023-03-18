package com.example.demo.service;

import com.example.demo.eneity.Gonggao;

import java.util.List;

public interface GonggaoService {

    public int getCount();

    public List<Gonggao> getAllGonggaos(int page, int limit);

    public int addGonggao(Gonggao gonggao);

    public int updateGonggao(Gonggao gonggao);

    public int delGonggao(int id);

    public int getCount(String name);

    public List<Gonggao> findGonggao(int page, int limit, String name);

    public Gonggao getGonggao();
}
