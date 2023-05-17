package com.example.demo.eneity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@TableName("user_car")
public class User_Car {
    @TableId(type = IdType.AUTO)
    Integer id;
    Integer user_id;
    Integer car_id;
    Date inTime;
    Date outTime;
    @TableField(exist = false)
    User user;
    @TableField(exist = false)
    Car car;
}
