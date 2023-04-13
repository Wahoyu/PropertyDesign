package com.example.demo.dao;

import com.example.demo.eneity.Building;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BuildingDao {
    @Autowired
    JdbcTemplate template;

    //添加楼栋
    public int addBuilding(Building building) {
        return template.update("insert into building values(null,?,?)",
                building.getName(),building.getType());
    }

    //更改楼栋信息
    public int updateBuilding(Building building) {
        return template.update("update building set `name` = ? ,`type` = ? where id = ?",
                building.getName(),building.getType(),building.getId());
    }

    //删除楼栋信息
    public int delBuilding(int id) {
        return template.update("DELETE from building where id=?",id);
    }

    //相似名字
    public int getCount(String name) {
        int count = template.queryForObject("select count(*) from building where name like '%"+name+"%' ", Integer.class);
        return count;
    }

    //分页查询building
    public List<Building> findBuilding(int page, int limit, String name) {
        List<Building> list = template.query("select * from building where name like '%"+name+"%' limit ?,?" ,new Object[]{(page-1)*limit,limit},
                new BeanPropertyRowMapper(Building.class));
        if (list!=null){
            return list;
        }else{
            return null;
        }
    }

    //获取所有buildings
    public List<Building> getAllBuildings() {
        List<Building> list = template.query("select * from building",
                new BeanPropertyRowMapper(Building.class));
        if (list!=null){
            return list;
        }else{
            return null;
        }
    }
}
