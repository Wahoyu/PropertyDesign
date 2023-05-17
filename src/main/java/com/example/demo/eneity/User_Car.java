package com.example.demo.eneity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User_Car {
    @TableId(type = IdType.AUTO)
    Integer id;
    Integer user_id;
    Integer car_id;
    Date inTime;
    Date outTime;
    User user;
    Car car;
}
