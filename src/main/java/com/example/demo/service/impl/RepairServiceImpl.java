package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.eneity.Repair;
import com.example.demo.eneity.User;
import com.example.demo.mapper.RepairMapper;
import com.example.demo.mapper.UserMapper;
import com.example.demo.service.RepairService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Service
public class RepairServiceImpl implements RepairService {
    @Resource
    RepairMapper mapper;
    @Autowired
    UserMapper userMapper;

    //获取所有的修理数量
    public int getCount() {
        return Math.toIntExact(mapper.selectCount(null));
    }

    //分页查询所有的维修信息
    public List<Repair> getAllRepairs(int page, int limit) {
        //分页查询
        Page<Repair> p = new Page<>(page, limit);
        List<Repair> list = mapper.selectPage(p,null).getRecords();

        //如果list不为空,添加user
        if (list!=null){
            for (Repair repair:list){
                QueryWrapper<User> wrapper = new QueryWrapper<>();
                wrapper.eq("id", repair.getUser_id());
                User user = userMapper.selectOne(wrapper);
                repair.setUser(user);
            }
            return list;
        }else{
            return null;
        }
    }

    //添加维修信息
    public int addRepair(Repair repair) {
        repair.setStatus(0);
        repair.setTime(new Date());
        return mapper.insert(repair);
    }

    //更新维修信息
    public int updateRepair(Repair repair) {
        return mapper.updateById(repair);
    }

    //删除维修信息
    public int delRepair(int id) {
        return mapper.deleteById(id);
    }

    //根据维修状态查询数量
    public int getCount(String name) {
        int status = Integer.parseInt(name);
        QueryWrapper wrapper = new QueryWrapper<>();
        wrapper.eq("status",status);
        return Math.toIntExact(mapper.selectCount(wrapper));
    }

    //根据维修状态status进行分页查询
    public List<Repair> findRepair(int page, int limit, String name) {
        //分页查询
        Page<Repair> p = new Page<>(page, limit);
        QueryWrapper wrapper2 = new QueryWrapper<>();
        wrapper2.eq("status",name);
        List<Repair> list = mapper.selectPage(p,wrapper2).getRecords();
        //如果list不为空,添加user
        if (list!=null){
            for (Repair repair:list){
                QueryWrapper<User> wrapper = new QueryWrapper<>();
                wrapper.eq("id", repair.getUser_id());
                User user = userMapper.selectOne(wrapper);
                //List<User> users = template.query("select * from user where id = ?" , new Object[]{complain.getUser_id()}, new BeanPropertyRowMapper(User.class));
                repair.setUser(user);
            }
            return list;
        }else{
            return null;
        }
    }

    //根据用户ID进行数量查询
    public int getCountByUserId(Integer id) {
        QueryWrapper wrapper = new QueryWrapper<>();
        wrapper.eq("user_id",id);
        return Math.toIntExact(mapper.selectCount(wrapper));
    }

    //根据用户ID进行分页查询
    public List<Repair> getAllRepairsByUser(int page, int limit, Integer id) {
        //分页查询
        Page<Repair> p = new Page<>(page, limit);
        //对用户id进行限制
        QueryWrapper wrapper2 = new QueryWrapper();
        wrapper2.eq("user_id", id);

        List<Repair> list = mapper.selectPage(p,wrapper2).getRecords();
        //如果list不为空,添加user
        if (list!=null){
            for (Repair repair:list){
                QueryWrapper<User> wrapper = new QueryWrapper<>();
                wrapper.eq("id", repair.getUser_id());
                User user = userMapper.selectOne(wrapper);
                //List<User> users = template.query("select * from user where id = ?" , new Object[]{complain.getUser_id()}, new BeanPropertyRowMapper(User.class));
                repair.setUser(user);
            }
            return list;
        }else{
            return null;
        }
    }
}
