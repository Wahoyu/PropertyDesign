package com.example.demo.service;

import com.example.demo.eneity.Car;
import com.example.demo.eneity.Room;

import java.util.List;

public interface CarService {
    public int getCount();

    public List<Car> getAllCars(int page, int limit);

    public int addCar(Car car);

    public int updateCar(Car car);

    public int delCar(int id);

    public int getCount(String name);

    public List<Car> findCar(int page, int limit, String name);

    public List<Car> getAllFreeCars(int type);

    public int getFreeCount();
    public List<Car> getFreeCars(int page, int limit);
}
