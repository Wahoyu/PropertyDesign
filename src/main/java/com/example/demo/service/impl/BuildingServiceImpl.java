package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.eneity.Building;
import com.example.demo.dao.BuildingDao;
import com.example.demo.mapper.BuildingMapper;
import com.example.demo.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BuildingServiceImpl implements BuildingService {
    @Autowired
    BuildingDao dao;
    @Resource
    BuildingMapper mapper;

    //获取所有buildings的数量
    public int getCount() {
        QueryWrapper<Building> wrapper = new QueryWrapper<>();
        return Math.toIntExact(mapper.selectCount(wrapper));
    }

    //分页-查询所有的楼栋
    public List<Building> getAllBuildings(int page, int limit) {
        Page<Building> buildingPage = new Page<>(1,5);
        mapper.selectPage(buildingPage,null);

        List<Building> list = buildingPage.getRecords();

        if (list!=null){
            return list;
        }else{
            return null;
        }
    }

    //添加楼栋
    public int addBuilding(Building building) {
        return dao.addBuilding(building);
    }

    //更新楼栋信息
    public int updateBuilding(Building building) {
        return dao.updateBuilding(building);
    }

    //通过id删除楼栋
    public int delBuilding(int id) {
        return dao.delBuilding(id);
    }

    //建筑名的数量
    public int getCount(String name) {
        return dao.getCount(name);
    }

    //分页-通过名字查找建筑
    public List<Building> findBuilding(int page, int limit, String name) {
        return dao.findBuilding(page,limit,name);
    }

    //查询所有的建筑
    public List<Building> getAllBuildings() {
        List<Building> list = mapper.selectList(null);
        if (list!=null){
            return list;
        }else{
            return null;
        }
    }
}
