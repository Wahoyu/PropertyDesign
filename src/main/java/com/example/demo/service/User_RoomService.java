package com.example.demo.service;

import com.example.demo.eneity.User_Room;
import org.springframework.jdbc.core.BeanPropertyRowMapper;

import java.text.SimpleDateFormat;
import java.util.*;

public interface User_RoomService {

    public int getRoomRecordCount(int id);

    public List<User_Room> findRoomRecordById(int id, int page, int limit);

    public int findRoom(Integer user_id);

    public void outRoom(Integer user_id);

    public int fenpei(Integer user_id, Integer room_id);

    public int stopRoomByUserId(int id);

    int getCountByUserId(Integer id);

    TreeMap<String, Integer> countUserRoomByMonth();

}
