package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.demo.eneity.User;
import com.example.demo.dao.UserDao;
import com.example.demo.mapper.UserMapper;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao dao;
    @Resource
    UserMapper mapper;

    //查询用户数量
    public int getCount() {
        return dao.getCount();
    }

    //对名字进行模糊查询,查询数量
    public int getCount(String name) {
        return dao.getCount(name);
    }

    //分页获取到用户信息
    public List<User> getUsers(int page, int limit) {
        return dao.getUsers(page,limit);
    }

    //名字模糊查询用户信息
    public List<User> findUser(int page, int limit, String name) {
        return dao.findUser(page,limit,name);
    }

    //用户注册(添加用户)
    public int addUser(User user) {

        //判断用户是否已经注册
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.eq("phone",user.getPhone());

        int i = Math.toIntExact(mapper.selectCount(wrapper));
        if (i != 0){
            return 0;
        }
        user.setStatus(1);
        return mapper.insert(user);
    }

    //更新用户信息
    public int updateUser(User user) {
        return dao.updateUser(user);
    }

    //删除用户信息
    public int stopUser(int id) {
        return dao.stopUser(id);
    }

    //用户登录接口
    public User loginByPassword(String phone, String password) {return dao.loginByPassword(phone,password);
    }

    //用户更改密码
    public int updatePass(Integer id, String newPsw) {
        return dao.updatePass(id,newPsw);
    }
}
