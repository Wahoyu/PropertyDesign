package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.eneity.Car;
import com.example.demo.eneity.Room;
import com.example.demo.eneity.Unit;
import com.example.demo.mapper.CarMapper;
import com.example.demo.service.CarService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CarServiceImpl implements CarService {
    @Resource
    CarMapper mapper;

    public int getCount() {
        int i = Math.toIntExact(mapper.selectCount(null));
        return i;
    }

    public List<Car> getAllCars(int page, int limit) {
        Page<Car> carPage = new Page<>(page,limit);
        List<Car> carList = mapper.selectPage(carPage,null).getRecords();
        return carList;
    }

    public int addCar(Car car) {
        return mapper.insert(car);
    }

    public int updateCar(Car car) {
        return mapper.updateById(car);
    }

    public int delCar(int id) {
        return mapper.deleteById(id);
    }

    public int getCount(String name) {
        QueryWrapper<Car> wrapper = new QueryWrapper<>();
        wrapper.like("name",name);
        int i = Math.toIntExact(mapper.selectCount(wrapper));
        return i;
    }

    public List<Car> findCar(int page, int limit, String name) {

        //Page
        Page<Car> page1 = new Page<>(page,limit);

        //Wrapper
        QueryWrapper<Car> wrapper = new QueryWrapper<>();
        wrapper.like("name",name);

        //List
        List<Car> carList = mapper.selectPage(page1,wrapper).getRecords();

        return carList;
    }

    public List<Car> getAllFreeCars(int type) {
        QueryWrapper<Car> wrapper = new QueryWrapper<>();

        //Wrapper
        wrapper
                .eq("status",0)
                .like("type",type);

        //List
        List<Car> carList = mapper.selectList(wrapper);

        return carList;
    }

    public int getFreeCount() {
        QueryWrapper<Car> wrapper = new QueryWrapper<>();

        //Wrapper
        wrapper
                .eq("status",0);

        //List
        int i = Math.toIntExact(mapper.selectCount(wrapper));

        return i;
    }

    //查询所有的空闲车位
    public List<Car> getFreeCars(int page, int limit) {
        //分页查询
        Page<Car> p = new Page<>(page, limit);
        //
        QueryWrapper<Car> wrapper1 = new QueryWrapper<>();
        wrapper1.eq("status", 0);

        List<Car> list = mapper.selectPage(p,wrapper1).getRecords();

        return list;
    }
}
