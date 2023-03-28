package com.example.demo.dao;

import com.example.demo.eneity.Building;
import com.example.demo.eneity.Unit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UnitDao {
    @Autowired
    JdbcTemplate template;
    public int getCount() {
        int count = template.queryForObject("select count(*) from unit", Integer.class);
        return count;
    }

    public List<Unit> getAllUnits(int page, int limit) {
        List<Unit> list = template.query("select * from unit limit ?,?" ,new Object[]{(page-1)*limit,limit},
                new BeanPropertyRowMapper(Unit.class));
        if (list!=null){
            for (Unit unit:list){
                List<Building> building = template.query("select * from building where id = ?" ,new Object[]{unit.getBuilding_id()},
                        new BeanPropertyRowMapper(Building.class));
                unit.setBuilding(building.get(0));
            }
            return list;
        }else{
            return null;
        }
    }

    public int addUnit(Unit unit) {
        return template.update("insert into unit values(null,?,?)",
                unit.getName(),unit.getBuilding_id());
    }

    public int updateUnit(Unit unit) {
        return template.update("update unit set `name` = ? ,`building_id` = ? where id = ?",
                unit.getName(),unit.getBuilding_id(),unit.getId());
    }

    public int delUnit(int id) {
        return template.update("DELETE from unit where id=?",id);
    }

    public List<Unit> findUnit(int page, int limit, String name) {
        List<Unit> list = template.query("select * from unit where name like '%"+name+"%'  limit ?,?" ,new Object[]{(page-1)*limit,limit},
                new BeanPropertyRowMapper(Unit.class));
        if (list!=null){
            for (Unit unit:list){
                List<Building> building = template.query("select * from building where id = ?" ,new Object[]{unit.getBuilding_id()},
                        new BeanPropertyRowMapper(Building.class));
                unit.setBuilding(building.get(0));
            }
            return list;
        }else{
            return null;
        }
    }

    public int getCount(String name) {
        int count = template.queryForObject("select count(*) from unit where name like '%"+name+"%' ", Integer.class);
        return count;
    }

    public List<Unit> getAllUnits() {
        List<Unit> list = template.query("select * from unit" ,
                new BeanPropertyRowMapper(Unit.class));
        if (list!=null){
            for (Unit unit:list){
                List<Building> building = template.query("select * from building where id = ?" ,new Object[]{unit.getBuilding_id()},
                        new BeanPropertyRowMapper(Building.class));
                unit.setBuilding(building.get(0));
            }
            return list;
        }else{
            return null;
        }
    }
}
