package com.example.demo.controller;

import com.example.demo.eneity.ResBody;
import com.example.demo.eneity.User_Car;
import com.example.demo.service.User_CarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.TreeMap;

@RestController
public class User_CarController {
    @Autowired
    User_CarService service;

    @GetMapping("/api/findCarRecordById")
    public ResBody findCarRecordById(@RequestParam int id,@RequestParam int page,@RequestParam int limit){
        ResBody resBody = new ResBody();
        int count = service.getCarRecordCount(id);
        List<User_Car> list= service.findCarRecordById(id,page,limit);
        resBody.setCount(count);
        resBody.setData(list);
        resBody.setCode(0);
        return resBody;
    }

    @GetMapping("/api/stopCarByUserId")
    public ResBody stopCarByUserId(@RequestParam int id){
        ResBody resBody = new ResBody();
        int i = service.stopCarByUserId(id);
        if (i == 1){
            resBody.setCode(200);
            resBody.setMsg("成功");
        }else{
            resBody.setCode(500);
            resBody.setMsg("失败");
        }
        return resBody;
    }

    @PostMapping("/api/addUserCar")
    public ResBody addUserCar(@RequestBody User_Car user_car) {
        ResBody resBody = new ResBody();
        System.out.println(user_car);
        user_car.setUser_id(user_car.getId());
        //判断该用户当前有无车位，如果有，先将前面的绑定关系取消。
        int count = service.findCar(user_car.getUser_id());
        if (count == 1){
            service.delUserCar(user_car.getUser_id());
        }
        int i = service.addUserCar(user_car.getUser_id(),user_car.getCar_id());
        if (i == 1){
            resBody.setCode(200);
            resBody.setMsg("添加成功");
        }else{
            resBody.setCode(500);
            resBody.setMsg("添加失败");
        }
        return resBody;
    }

    @GetMapping("/api/countUserCarByMonth")
    public TreeMap<String, Integer> countUserCarByMonth(){
        return service.countUserCarByMonth();
    }

}
