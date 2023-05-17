package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.eneity.*;
import com.example.demo.eneity.Unit;
import com.example.demo.mapper.BuildingMapper;
import com.example.demo.mapper.UnitMapper;
import com.example.demo.service.UnitService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UnitServiceImpl implements UnitService {
    @Resource
    UnitMapper mapper;

    @Resource
    BuildingMapper buildingMapper;

    //查询所有的单元总数
    public int getCount() {
        return Math.toIntExact(mapper.selectCount(null));
    }

    //分页查询单元信息
    public List<Unit> getAllUnits(int page, int limit) {
        //分页查询
        Page<Unit> p = new Page<>(page, limit);
        List<Unit> list = mapper.selectPage(p,null).getRecords();
        System.out.println(list);

        //如果list不为空,添加user
        if (list!=null){
            for (Unit unit:list){
                QueryWrapper<Building> wrapper = new QueryWrapper<>();
                wrapper.eq("id", unit.getBuilding_id());
                Building building = buildingMapper.selectOne(wrapper);
                unit.setBuilding(building);
            }
            return list;
        }else{
            return null;
        }
    }

    //添加单元信息
    public int addUnit(Unit unit) {
        return mapper.insert(unit);
    }

    //更新单元信息
    public int updateUnit(Unit unit) {
        return mapper.updateById(unit);
    }

    //删除单元信息
    public int delUnit(int id) {
        return mapper.deleteById(id);
    }

    //通过名字模糊查询单元,分页显示
    public List<Unit> findUnit(int page, int limit, String name) {
        //分页查询
        Page<Unit> p = new Page<>(page, limit);

        //名字模糊查询
        QueryWrapper<Unit> wrapper2 = new QueryWrapper<>();
        wrapper2.like("name", name);

        List<Unit> list = mapper.selectPage(p,wrapper2).getRecords();
        System.out.println(list);

        //如果list不为空,添加user
        if (list!=null){
            for (Unit unit:list){
                QueryWrapper<Building> wrapper = new QueryWrapper<>();
                wrapper.eq("id", unit.getBuilding_id());
                Building building = buildingMapper.selectOne(wrapper);
                unit.setBuilding(building);
            }
            return list;
        }else{
            return null;
        }
    }

    //根据名字模糊查询,总数
    public int getCount(String name) {
        QueryWrapper<Unit> wrapper = new QueryWrapper<>();
        wrapper.like("name", name);
        return Math.toIntExact(mapper.selectCount(wrapper));
    }

    //获取到所有单元的列表信息
    public List<Unit> getAllUnits() {
        List<Unit> list = mapper.selectList(null);
        //如果list不为空,添加user
        if (list!=null){
            for (Unit unit:list){
                QueryWrapper<Building> wrapper = new QueryWrapper<>();
                wrapper.eq("id", unit.getBuilding_id());
                Building building = buildingMapper.selectOne(wrapper);
                unit.setBuilding(building);
            }
            return list;
        }else{
            return null;
        }
    }
}
