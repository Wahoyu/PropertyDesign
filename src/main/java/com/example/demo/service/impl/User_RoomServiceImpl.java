package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.eneity.Room;
import com.example.demo.eneity.User;
import com.example.demo.eneity.User_Room;
import com.example.demo.mapper.RoomMapper;
import com.example.demo.mapper.UserMapper;
import com.example.demo.mapper.User_RoomMapper;
import com.example.demo.service.User_RoomService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class User_RoomServiceImpl implements User_RoomService {
    @Resource
    User_RoomMapper mapper;
    @Resource
    UserMapper userMapper;
    @Resource
    RoomMapper roomMapper;

    //通过room_id查询user_room的数量
    public int getRoomRecordCount(int id) {
        QueryWrapper<User_Room> wrapper = new QueryWrapper<>();
        wrapper.eq("room_id", id);
        return Math.toIntExact(mapper.selectCount(wrapper));
    }

    //根据room_id对user_room进行分页查询,并将user和room对象注入到user_room对象中
    public List<User_Room> findRoomRecordById(int id, int page, int limit) {
        //根据room_id分页查询
        Page<User_Room> page1 = new Page<>(page, limit);

        QueryWrapper<User_Room> user_roomWrapper = new QueryWrapper<>();
        user_roomWrapper.eq("room_id", id);
        List<User_Room> user_roomList = mapper.selectList(user_roomWrapper);

        //注入user和room
        if (user_roomList != null) {
            for (User_Room user_room : user_roomList) {

                //通过user_id查询user并进行注入
                User user = userMapper.selectById(user_room.getUser_id());
                user_room.setUser(user);
                //通过room_id查询room并进行注入
                Room room = roomMapper.selectById(user_room.getRoom_id());
                user_room.setRoom(room);

            }
            return user_roomList;
        } else {
            return null;
        }
    }

    //根据user_id,查询某个人当前使用车位的数量
    public int findRoom(Integer user_id) {
        QueryWrapper<User_Room> wrapper = new QueryWrapper<>();
        wrapper.eq("user_id", user_id);
        wrapper.last("AND outTime is null");
        return Math.toIntExact(mapper.selectCount(wrapper));
    }

    public void outRoom(Integer user_id) {
        /*
        1. 取消user_id对应的绑定关系
        2. 将房屋的status改成0
         */

        //1
        QueryWrapper<User_Room> wrapper = new QueryWrapper<>();
        wrapper.eq("user_id", user_id);
        wrapper.last("AND outTime is null");
        User_Room user_room = mapper.selectOne(wrapper);
        user_room.setOutTime(new Date());
        mapper.updateById(user_room);

        //2
        QueryWrapper<Room> roomWrapper = new QueryWrapper<>();
        wrapper.eq("id", user_room.getRoom_id());
        Room room = roomMapper.selectList(roomWrapper).get(0);
        room.setStatus(0);
        roomMapper.updateById(room);
    }

    public int fenpei(Integer user_id, Integer room_id) {
        /*
        1. 添加user_room对象
        2. 更改车位状态
         */

        //1
        User_Room user_room = new User_Room();
        user_room.setUser_id(user_id);
        user_room.setRoom_id(room_id);
        user_room.setInTime(new Date());
        mapper.insert(user_room);

        //2
        QueryWrapper<Room> wrapper = new QueryWrapper<>();
        wrapper.eq("id", room_id);
        Room room = roomMapper.selectOne(wrapper);
        room.setStatus(1);
        return roomMapper.updateById(room);
    }


    public int stopRoomByUserId(int id) {
        /*
        1. 取消user_id对应的绑定关系
        2. 将房屋的status改成0
         */

        //1
        QueryWrapper<User_Room> wrapper = new QueryWrapper<>();
        wrapper.eq("user_id", id);
        wrapper.last("AND outTime is null");
        User_Room user_room = mapper.selectOne(wrapper);
        user_room.setOutTime(new Date());
        mapper.updateById(user_room);

        //2
        QueryWrapper<Room> roomWrapper = new QueryWrapper<>();
        wrapper.eq("id", user_room.getRoom_id());
        Room room = roomMapper.selectList(roomWrapper).get(0);
        room.setStatus(0);
        return roomMapper.updateById(room);
    }

    //目前拥有的房子的数量
    @Override
    public int getCountByUserId(Integer id) {
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("user_id", id);
        wrapper.last("AND outTime is null");
        return Math.toIntExact(mapper.selectCount(wrapper));

    }
}
