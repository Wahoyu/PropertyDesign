package com.example.demo.eneity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
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
