package com.example.demo.service;

import com.example.demo.eneity.Room;

import java.util.List;

public interface RoomService {

    public int getCount();

    public List<Room> getAllRooms(int page, int limit);

    public int addRoom(Room room);

    public int updateRoom(Room room);

    public int delRoom(int id);

    public List<Room> findRoom(int page, int limit, String name);

    public int getCount(String name);

    public List<Room> getAllFreeRooms(int unit_id);

    public int getFreeCount();
}
