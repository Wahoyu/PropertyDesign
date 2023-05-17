package com.example.demo.service;

import com.example.demo.eneity.User_Car;

import java.util.List;

public interface User_CarService {
    public int getCarRecordCount(int id);

    public List<User_Car> findCarRecordById(int id, int page, int limit);

    public int findCar(Integer user_id);

    public void delUserCar(Integer user_id);

    public int fenpei(Integer user_id, Integer car_id);

    public int stopCarByUserId(int id);
}
