package com.example.demo.eneity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    @TableId(type = IdType.AUTO)
    Integer id;
    String username;
    String password;
    String phone;
    Integer sex;
    Integer status;
    @TableField(exist = false)
    Car car;
    @TableField(exist = false)
    Room room;
}
