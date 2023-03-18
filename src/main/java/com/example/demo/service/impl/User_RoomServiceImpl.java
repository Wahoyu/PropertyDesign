package com.example.demo.service.impl;

import com.example.demo.eneity.User_Room;
import com.example.demo.dao.User_RoomDao;
import com.example.demo.service.User_RoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class User_RoomServiceImpl implements User_RoomService {
    @Autowired
    User_RoomDao dao;
    public int getRoomRecordCount(int id) {
        return dao.getRoomRecordCount(id);
    }

    public List<User_Room> findRoomRecordById(int id, int page, int limit) {
        return dao.findRoomRecordById(id,page,limit);
    }

    public int findRoom(Integer user_id) {
        return dao.findRoom(user_id);
    }

    public void outRoom(Integer user_id) {
        dao.outRoom(user_id);
    }

    public int fenpei(Integer user_id, Integer room_id) {
        return dao.fenpei(user_id,room_id);
    }

    public int stopRoomByUserId(int id) {
        return dao.stopRoomByUserId(id);
    }
}
