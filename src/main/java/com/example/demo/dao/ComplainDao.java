package com.example.demo.dao;

import com.example.demo.eneity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public class ComplainDao {

    @Autowired
    JdbcTemplate template;

//    public int getCount() {
//        int count = template.queryForObject("select count(*) from complain", Integer.class);
//        return count;
//    }


    //分页查询所有投诉信息
//    public List<Complain> getAllComplains(int page, int limit) {
//
//        //对投诉表进行分页查询
//        List<Complain> list = template.query("select * from complain limit ?,?" ,new Object[]{(page-1)*limit,limit}, new BeanPropertyRowMapper(Complain.class));
//
//        //如果列表不为空,对每一个comlain对象添加
//        if (list!=null){
//            for (Complain complain:list){
//                List<User> users = template.query("select * from user where id = ?" , new Object[]{complain.getUser_id()}, new BeanPropertyRowMapper(User.class));
//                complain.setUser(users.get(0));
//            }
//            return list;
//        }else{
//            return null;
//        }
//    }

    public int addComplain(Complain complain) {
        return template.update("insert into complain values(null,?,?,?,?,?)",
                complain.getContent(),complain.getUser_id(),0,new Date(),complain.getResult());
    }

    public int updateComplain(Complain complain) {
        return template.update("update complain set `status` = ?,`result` = ?  where id = ?",
                complain.getStatus(),complain.getResult(),complain.getId());
    }

    public int delComplain(int id) {
        return template.update("DELETE from complain where id=?",id);
    }

    public int getCount(String name) {
        int count = template.queryForObject("select count(*) from complain where content like '%"+name+"%' ", Integer.class);
        return count;
    }

    public List<Complain> findComplain(int page, int limit, String name) {
        List<Complain> list = template.query("select * from complain where status = "+name+" limit ?,?" ,new Object[]{(page-1)*limit,limit},
                new BeanPropertyRowMapper(Complain.class));
        if (list!=null){
            for (Complain complain:list){
                List<User> users = template.query("select * from user where id = ?" ,
                        new Object[]{complain.getUser_id()}, new BeanPropertyRowMapper(User.class));
                complain.setUser(users.get(0));
            }
            return list;
        }else{
            return null;
        }
    }

    public int getCountByUserId(Integer id) {
        int count = template.queryForObject("select count(*) from complain where user_id = "+id, Integer.class);
        return count;
    }

    public int getCount(Integer id) {
        int count = template.queryForObject("select count(*) from complain where user_id = "+id, Integer.class);
        return count;
    }

    public List<Complain> getAllComplainsByUser(int page, int limit, Integer id) {
        List<Complain> list = template.query("select * from complain where user_id = ? limit ?,?" ,new Object[]{id,(page-1)*limit,limit},
                new BeanPropertyRowMapper(Complain.class));
        if (!list.isEmpty()){
            return list;
        }else{
            return null;
        }
    }
}
