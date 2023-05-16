package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.eneity.Complain;
import com.example.demo.dao.ComplainDao;
import com.example.demo.eneity.User;
import com.example.demo.mapper.ComplainMapper;
import com.example.demo.mapper.UserMapper;
import com.example.demo.service.ComplainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class ComplainServiceImpl implements ComplainService {
    @Autowired
    ComplainDao dao;

    @Autowired
    ComplainMapper mapper;

    @Autowired
    UserMapper userMapper;

    public int getCount() {
        return Math.toIntExact(mapper.selectCount(null));
    }

    public List<Complain> getAllComplains(int page, int limit) {

        //分页查询
        Page<Complain> p = new Page<>(page, limit);
        List<Complain> list = mapper.selectPage(p,null).getRecords();
        System.out.println(list);
        //如果list不为空,添加user
        if (list!=null){
            for (Complain complain:list){
                QueryWrapper<User> wrapper = new QueryWrapper<>();
                wrapper.eq("id", complain.getUser_id());
                User user = userMapper.selectOne(wrapper);
                //List<User> users = template.query("select * from user where id = ?" , new Object[]{complain.getUser_id()}, new BeanPropertyRowMapper(User.class));
                complain.setUser(user);
            }
            return list;
        }else{
            return null;
        }
    }

    //添加投诉信息
    public int addComplain(Complain complain) {
        complain.setStatus(0);
        complain.setTime(new Date());
        return mapper.insert(complain);
    }

    //更新投诉信息
    public int updateComplain(Complain complain) {
        return mapper.updateById(complain);
    }

    //删除
    public int delComplain(int id) {
        return mapper.deleteById(id);
    }

    //根据status查询数量
    public int getCount(String name) {
        int status = Integer.parseInt(name);
        QueryWrapper wrapper = new QueryWrapper<>();
        wrapper.eq("status",status);
        return Math.toIntExact(mapper.selectCount(wrapper));
    }

    //根据status分页查询
    public List<Complain> findComplain(int page, int limit, String name) {
        //分页查询
        Page<Complain> p = new Page<>(page, limit);
        QueryWrapper wrapper2 = new QueryWrapper<>();
        wrapper2.eq("status",name);
        List<Complain> list = mapper.selectPage(p,wrapper2).getRecords();
        System.out.println(list);
        //如果list不为空,添加user
        if (list!=null){
            for (Complain complain:list){
                QueryWrapper<User> wrapper = new QueryWrapper<>();
                wrapper.eq("id", complain.getUser_id());
                User user = userMapper.selectOne(wrapper);
                //List<User> users = template.query("select * from user where id = ?" , new Object[]{complain.getUser_id()}, new BeanPropertyRowMapper(User.class));
                complain.setUser(user);
            }
            return list;
        }else{
            return null;
        }
    }

    public int getCountByUserId(Integer id) {
        QueryWrapper wrapper = new QueryWrapper<>();
        wrapper.eq("user_id",id);
        return Math.toIntExact(mapper.selectCount(wrapper));
    }

    public int getCount(Integer id) {
        return dao.getCount(id);
    }

    public List<Complain> getAllComplainsByUser(int page, int limit, Integer id) {
        return dao.getAllComplainsByUser(page,limit,id);
    }
}