package com.example.demo.dao;

import com.example.demo.eneity.Room;
import com.example.demo.eneity.Unit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RoomDao {
    @Autowired
    JdbcTemplate template;
    public int getCount() {
        int count = template.queryForObject("select count(*) from room", Integer.class);
        return count;
    }

    public List<Room> getAllRooms(int page, int limit) {
        List<Room> list = template.query("select * from room limit ?,?" ,new Object[]{(page-1)*limit,limit},
                new BeanPropertyRowMapper(Room.class));
        if (list!=null){
            for (Room room:list){
                List<Unit> unit = template.query("select * from unit where id = ?" ,new Object[]{room.getUnit_id()},
                        new BeanPropertyRowMapper(Unit.class));
                room.setUnit(unit.get(0));
            }
            return list;
        }else{
            return null;
        }
    }

    public int addRoom(Room room) {
        return template.update("insert into room values(null,?,?,0,?)",
                room.getName(),room.getArea(),room.getUnit_id());
    }

    public int updateRoom(Room room) {
        return template.update("update room set `name` = ? ,`area` = ? ,`unit_id` = ? where id = ?",
                room.getName(),room.getArea(),room.getUnit_id(),room.getId());
    }

    public int delRoom(int id) {
        return template.update("DELETE from room where id=?",id);
    }

    public List<Room> findRoom(int page, int limit, String name) {
        List<Room> list = template.query("select * from room where status = "+Integer.parseInt(name)+" limit ?,?" ,new Object[]{(page-1)*limit,limit},
                new BeanPropertyRowMapper(Room.class));
        if (list!=null){
            for (Room room:list){
                List<Unit> unit = template.query("select * from unit where id = ?" ,new Object[]{room.getUnit_id()},
                        new BeanPropertyRowMapper(Unit.class));
                room.setUnit(unit.get(0));
            }
            return list;
        }else{
            return null;
        }
    }

    public int getCount(String name) {
        int count = template.queryForObject("select count(*) from room where name like '%"+name+"%' ", Integer.class);
        return count;
    }

    public List<Room> getAllFreeRooms(int unit_id) {
        List<Room> list = template.query("select * from room where status = 0 and unit_id = " +unit_id,
                new BeanPropertyRowMapper(Room.class));
        if (list!=null){
            return list;
        }else{
            return null;
        }
    }

    public int getFreeCount() {
        int count = template.queryForObject("select count(*) from room where status = 0", Integer.class);
        return count;
    }
}
