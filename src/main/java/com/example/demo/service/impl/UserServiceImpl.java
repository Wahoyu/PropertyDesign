package com.example.demo.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.eneity.*;
import com.example.demo.mapper.*;
import com.example.demo.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    UserMapper mapper;

    @Resource
    CarMapper carMapper;

    @Resource
    RoomMapper roomMapper;

    @Resource
    User_CarMapper user_carMapper;

    @Resource
    User_RoomMapper user_roomMapper;

    @Resource
    UnitMapper unitMapper;

    //查询用户数量
    public int getCount() {
        return Math.toIntExact(mapper.selectCount(null));
    }

    //对名字进行模糊查询,查询数量
    public int getCount(String name) {
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.like("username", name);
        return Math.toIntExact(mapper.selectCount(wrapper));
    }

    //分页获取到用户信息
    public List<User> getUsers(int page, int limit) {

        //查询出一个没有车位信息和房屋信息的UserList
        Page<User> page1 = new Page<>(page, limit);
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        List<User> userList = mapper.selectPage(page1, wrapper).getRecords();

        if (userList!=null){
            for (User user:userList){
                /*
                  1. user_car表中,通过user_id,搜索到对应的,,并且outTime=null的user_car,这就说明车位正在租用
                  2. 在car表中,通过user_car对象中的car_id搜索到对应的car
                  3. 将car放到实体类中
                 */

                //1
                QueryWrapper<User_Car> wrapper1 = new QueryWrapper<>();
                wrapper1.eq("user_id", user.getId());
                wrapper1.last("AND outTime is null");
                User_Car user_car = user_carMapper.selectOne(wrapper1);
                System.out.println("######################"+user_car);

                if(user_car != null) {
                    //2
                    QueryWrapper<Car> wrapper2 = new QueryWrapper<>();
                    wrapper2.eq("id", user_car.getCar_id());
                    Car car = carMapper.selectOne(wrapper2);
                    System.out.println("######################car:" + car);

                    //3
                    user.setCar(car);
                }

                /*
                  1. user_room表中,通过user_id,搜索到对应的,并且outTime=null的user_room对象,这就说明房屋正在居住
                  2. 在room表中,通过user_room对象中的room_id搜索到对应的Room对象
                  3. 根据room对象的unit_id查询到unit对象,将unit对象放在room对象
                  3. 将room对象放到user中
                 */

                //1
                QueryWrapper<User_Room> wrapper3 = new QueryWrapper<>();
                wrapper3.eq("user_id", user.getId());
                wrapper3.last("AND outTime is null");
                User_Room user_room = user_roomMapper.selectOne(wrapper3);
                System.out.println("######################user_room:"+user_room);

                if(user_room != null) {
                    //2
                    QueryWrapper<Room> wrapper4 = new QueryWrapper<>();
                    wrapper4.eq("id", user_room.getRoom_id());
                    Room room = roomMapper.selectOne(wrapper4);
                    System.out.println("######################room:" + room);

                    //3
                    QueryWrapper<Unit> unitWrapper = new QueryWrapper<>();
                    unitWrapper.eq("id", room.getUnit_id());
                    Unit unit = unitMapper.selectOne(unitWrapper);
                    room.setUnit(unit);

                    //4
                    user.setRoom(room);
                }
            }
            System.out.println(userList);
            return userList;
        }else{
            return null;
        }
    }

    //名字模糊,分页查询,用户信息
    public List<User> findUser(int page, int limit, String name) {
        //查询出一个没有车位信息和房屋信息的UserList
        Page<User> page1 = new Page<>(page, limit);
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.like("username", name);
        List<User> userList = mapper.selectPage(page1, wrapper).getRecords();

        if (userList!=null){
            for (User user:userList){
                /*
                  1. user_car表中,通过user_id,搜索到对应的,,并且outTime=null的user_car,这就说明车位正在租用
                  2. 在car表中,通过user_car对象中的car_id搜索到对应的car
                  3. 将car放到实体类中
                 */

                //1
                QueryWrapper<User_Car> wrapper1 = new QueryWrapper<>();
                wrapper1.eq("user_id", user.getId());
                wrapper1.last("AND outTime is null");
                User_Car user_car = user_carMapper.selectOne(wrapper1);
                System.out.println("######################"+user_car);

                if(user_car != null) {
                    //2
                    QueryWrapper<Car> wrapper2 = new QueryWrapper<>();
                    wrapper2.eq("id", user_car.getCar_id());
                    Car car = carMapper.selectOne(wrapper2);
                    System.out.println("######################car:" + car);

                    //3
                    user.setCar(car);
                }

                /*
                  1. user_room表中,通过user_id,搜索到对应的,并且outTime=null的user_room对象,这就说明房屋正在居住
                  2. 在room表中,通过user_room对象中的room_id搜索到对应的Room对象
                  3. 根据room对象的unit_id查询到unit对象,将unit对象放在room对象
                  3. 将room对象放到user中
                 */

                //1
                QueryWrapper<User_Room> wrapper3 = new QueryWrapper<>();
                wrapper3.eq("user_id", user.getId());
                wrapper3.last("AND outTime is null");
                User_Room user_room = user_roomMapper.selectOne(wrapper3);
                System.out.println("######################user_room:"+user_room);

                if(user_room != null) {
                    //2
                    QueryWrapper<Room> wrapper4 = new QueryWrapper<>();
                    wrapper4.eq("id", user_room.getRoom_id());
                    Room room = roomMapper.selectOne(wrapper4);
                    System.out.println("######################room:" + room);

                    //3
                    QueryWrapper<Unit> unitWrapper = new QueryWrapper<>();
                    unitWrapper.eq("id", room.getUnit_id());
                    Unit unit = unitMapper.selectOne(unitWrapper);
                    room.setUnit(unit);

                    //4
                    user.setRoom(room);
                }
            }
            System.out.println(userList);
            return userList;
        }else{
            return null;
        }
    }

    //用户注册(添加用户)
    public int addUser(User user) {

        //判断用户是否已经注册
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.eq("phone", user.getPhone());

        int i = Math.toIntExact(mapper.selectCount(wrapper));
        if (i != 0) {
            return 0;
        }
        user.setStatus(1);
        return mapper.insert(user);
    }

    //更新用户信息
    public int updateUser(User user) {
        return mapper.updateById(user);
    }

    //删除用户信息
    public int stopUser(int id) {
        return mapper.deleteById(id);
    }

    //用户登录接口
    public User loginByPassword(String phone, String password) {

        //
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        wrapper.eq("phone", phone);
        wrapper.eq("password", password);

        //
        List<User> userList = mapper.selectList(wrapper);

        //
        if (userList!=null && userList.size()>0){
            return userList.get(0);
        }else{
            return null;
        }
    }

    //用户更改密码
    public int updatePass(Integer id, String newPsw) {
        User user = new User();
        user.setId(id);
        user.setPassword(newPsw);
        return mapper.updateById(user);
    }
}
