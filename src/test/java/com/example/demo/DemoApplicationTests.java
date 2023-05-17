package com.example.demo;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.eneity.Complain;
import com.example.demo.mapper.ComplainMapper;
import com.example.demo.service.User_CarService;
import com.example.demo.service.impl.User_CarServiceImpl;
import com.example.demo.util.Similarity;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.FileInputStream;
import java.util.List;

@SpringBootTest
class DemoApplicationTests {

    @Autowired
    ComplainMapper mapper;
    @Autowired
    User_CarService user_carService;

    @Test
    void contextLoads() {
        Page<Complain> page = new Page<>(1,10);
        List<Complain> complainList = mapper.selectPage(page,null).getRecords();
        System.out.println(complainList);
    }
    @Test
    void findCarRecordById() {
        System.out.println(user_carService.findCar(2));
    }


}
