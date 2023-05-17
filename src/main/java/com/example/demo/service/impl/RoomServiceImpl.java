package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.eneity.Building;
import com.example.demo.eneity.Room;
import com.example.demo.dao.RoomDao;
import com.example.demo.eneity.Unit;
import com.example.demo.mapper.RoomMapper;
import com.example.demo.mapper.UnitMapper;
import com.example.demo.service.RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class RoomServiceImpl implements RoomService {
    @Autowired
    RoomDao dao;
    @Resource
    UnitMapper unitMapper;
    @Resource
    RoomMapper mapper;

    //查询所有的房屋总数
    public int getCount() {
        return Math.toIntExact(mapper.selectCount(null));
    }

    //分页查询所有的房屋信息
    public List<Room> getAllRooms(int page, int limit) {
        //分页查询
        Page<Room> p = new Page<>(page, limit);
        List<Room> list = mapper.selectPage(p,null).getRecords();
        System.out.println(list);

        //如果list不为空,添加user
        if (list!=null){
            for (Room room:list){
                QueryWrapper<Unit> wrapper = new QueryWrapper<>();
                wrapper.eq("id", room.getUnit_id());
                Unit unit = unitMapper.selectOne(wrapper);
                room.setUnit(unit);
            }
            return list;
        }else{
            return null;
        }
    }

    //添加房屋信息
    public int addRoom(Room room) {
        return mapper.insert(room);
    }

    //更新房屋信息
    public int updateRoom(Room room) {
        return mapper.updateById(room);
    }

    //删除房屋信息
    public int delRoom(int id) {
        return mapper.deleteById(id);
    }

    //通过名称模糊查询,分页查询房屋
    public List<Room> findRoom(int page, int limit, String name) {
        return dao.findRoom(page,limit,name);
    }

    //通过名字模糊查询,查询总数
    public int getCount(String name) {
        return dao.getCount(name);
    }

    //查询某个单元中的所有的空闲房屋
    public List<Room> getAllFreeRooms(int unit_id) {
        return dao.getAllFreeRooms(unit_id);
    }

    //查询所有的空闲房屋的数量
    public int getFreeCount() {
        return dao.getFreeCount();
    }
}
