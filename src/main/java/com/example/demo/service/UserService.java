package com.example.demo.service;

import com.example.demo.bean.User;

import java.util.List;

public interface UserService {

    public int getCount();

    public int getCount(String name);

    public List<User> getUsers(int page, int limit);

    public List<User> findUser(int page, int limit, String name);

    public int addUser(User user);

    public int updateUser(User user);

    public int stopUser(int id);

    public User loginByPassword(String phone, String password);

    public int updatePass(Integer id, String newPsw);
}
