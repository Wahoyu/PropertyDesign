package com.example.demo;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.controller.User_RoomController;
import com.example.demo.eneity.Complain;
import com.example.demo.mapper.ComplainMapper;
import com.example.demo.service.User_CarService;
import com.example.demo.service.User_RoomService;
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
    @Autowired
    User_RoomController user_roomController;

    @Test
    void contextLoads() {
    }


}
