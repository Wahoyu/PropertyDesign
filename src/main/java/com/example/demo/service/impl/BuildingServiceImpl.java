package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.eneity.Building;
import com.example.demo.mapper.BuildingMapper;
import com.example.demo.service.BuildingService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BuildingServiceImpl implements BuildingService {
    @Resource
    BuildingMapper mapper;

    //获取所有buildings的数量
    public int getCount() {
        QueryWrapper<Building> wrapper = new QueryWrapper<>();
        return Math.toIntExact(mapper.selectCount(wrapper));
    }

    //分页-查询所有的楼栋
    public List<Building> getAllBuildings(int page, int limit) {
        Page<Building> buildingPage = new Page<>(page,limit);
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
        building.setId(getCount()+1);
        Integer result = mapper.insert(building);
        return result;
    }

    //更新楼栋信息
    public int updateBuilding(Building building) {
        int i = mapper.updateById(building);
        return i;
    }

    //通过id删除楼栋
    public int delBuilding(int id) {
        int i = mapper.deleteById(id);
        return i;
    }

    //相似建筑名的数量
    public int getCount(String name) {
        QueryWrapper<Building> wrapper = new QueryWrapper<>();
        //此处使用MybatisPlus模糊查询,类似查询 %name%
        wrapper.like("name",name);
        Long count = mapper.selectCount(wrapper);
        int i = Math.toIntExact(count);
        return i;
    }

    //分页-通过名字查找建筑
    public List<Building> findBuilding(int page, int limit, String name) {

        //生成page对象
        Page<Building> p = new Page<>(page,limit);

        //生成条件构造器
        QueryWrapper<Building> wrapper = new QueryWrapper<>();
        wrapper.like("name",name);

        List<Building> buildings = mapper.selectPage(p,wrapper).getRecords();

        if (buildings!=null){
            return buildings;
        }else{
            return null;
        }
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
