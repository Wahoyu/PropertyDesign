package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.eneity.Car;
import com.example.demo.eneity.User;
import com.example.demo.eneity.User_Car;
import com.example.demo.eneity.User_Room;
import com.example.demo.mapper.CarMapper;
import com.example.demo.mapper.UserMapper;
import com.example.demo.mapper.User_CarMapper;
import com.example.demo.service.User_CarService;
import com.example.demo.util.MonthMap;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TreeMap;

@Service
public class User_CarServiceImpl implements User_CarService {
    @Resource
    User_CarMapper mapper;
    @Resource
    UserMapper userMapper;
    @Resource
    CarMapper carMapper;

    //通过car_id查询user_car的数量
    public int getCarRecordCount(int id) {
        QueryWrapper<User_Car> wrapper = new QueryWrapper<>();
        wrapper.eq("car_id", id);
        return Math.toIntExact(mapper.selectCount(wrapper));
    }

    //根据car_id对user_car进行分页查询,并将user和car对象注入到user_car对象中
    public List<User_Car> findCarRecordById(int id, int page, int limit) {

        //根据car_id分页查询
        Page<User_Car> page1 = new Page<>(page, limit);
        QueryWrapper<User_Car> user_carWrapper = new QueryWrapper<>();
        user_carWrapper.eq("car_id", id);
        List<User_Car> user_carList = mapper.selectList(user_carWrapper);

        //注入user和car
        if (user_carList!=null){
            for (User_Car user_car:user_carList){

                //通过user_id查询user并进行注入
                User user = userMapper.selectById(user_car.getUser_id());
                user_car.setUser(user);
                //通过car_id查询car并进行注入
                Car car = carMapper.selectById(user_car.getCar_id());
                user_car.setCar(car);

            }
            return user_carList;
        }else{
            return null;
        }

    }

    //根据user_id,查询某个人当前使用车位的数量
    public int findCar(Integer user_id) {
        QueryWrapper<User_Car> wrapper = new QueryWrapper<>();
        wrapper.eq("user_id", user_id);
        wrapper.last("AND outTime is null");
        return Math.toIntExact(mapper.selectCount(wrapper));
    }

    //解除用户与车位的绑定关系
    public void delUserCar(Integer user_id) {
        /*
        1. 取消user_id对应的绑定关系
        2. 将车位的status改成0
         */

        //1
        QueryWrapper<User_Car> wrapper = new QueryWrapper<>();
        wrapper.eq("user_id", user_id);
        wrapper.last("AND outTime is null");
        User_Car user_car = mapper.selectOne(wrapper);
        user_car.setOutTime(new Date());
        mapper.updateById(user_car);

        //2
        QueryWrapper<Car> carWrapper = new QueryWrapper<>();
        wrapper.eq("id", user_car.getCar_id());
        Car car = carMapper.selectList(carWrapper).get(0);
        car.setStatus(0);
        carMapper.updateById(car);
    }

    //给用户分配车位信息(添加用户和车位的绑定关系)
    public int addUserCar(Integer user_id, Integer car_id) {
        /*
        1. 添加user_car对象
        2. 更改车位状态
         */

        //1
        User_Car user_car = new User_Car();
        user_car.setUser_id(user_id);
        user_car.setCar_id(car_id);
        user_car.setInTime(new Date());
        mapper.insert(user_car);

        //2
        QueryWrapper<Car> wrapper = new QueryWrapper<>();
        wrapper.eq("id", car_id);
        Car car = carMapper.selectOne(wrapper);
        car.setStatus(1);
        return carMapper.updateById(car);
    }

    public int stopCarByUserId(int id) {
        /*
        1. 取消user_id对应的绑定关系
        2. 将车位的status改成0
         */

        //1
        QueryWrapper<User_Car> wrapper = new QueryWrapper<>();
        wrapper.eq("user_id", id);
        wrapper.last("AND outTime is null");
        User_Car user_car = mapper.selectOne(wrapper);
        user_car.setOutTime(new Date());
        mapper.updateById(user_car);

        //2
        QueryWrapper<Car> carWrapper = new QueryWrapper<>();
        wrapper.eq("id", user_car.getCar_id());
        Car car = carMapper.selectList(carWrapper).get(0);
        car.setStatus(0);
        return carMapper.updateById(car);
    }

    //目前拥有的用户的数量
    @Override
    public int getCountByUserId(Integer id) {
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("user_id", id);
        wrapper.last("AND outTime is null");
        return Math.toIntExact(mapper.selectCount(wrapper));

    }

    //用户租房信息统计折线图
    public TreeMap<String, Integer> countUserCarByMonth() {

        // 搜索所有的User_Room
        List<User_Car> list = mapper.selectList(null);

        //
        TreeMap<String, Integer> map = new MonthMap().createMonthMap();

        for (User_Car uc : list) {

            // 在this获取到月份
            Calendar cal = Calendar.getInstance();
            cal.setTime(uc.getInTime());
            String month = new SimpleDateFormat("MM").format(cal.getTime());

            // 向map添加元素
            map.put("x_"+month, map.get("x_"+month) + 1);
        }
        return map;
    }
}
