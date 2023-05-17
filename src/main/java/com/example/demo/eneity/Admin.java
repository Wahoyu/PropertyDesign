package com.example.demo.eneity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Admin {

    @TableId(type = IdType.AUTO)
    Integer id;
    String email;
    String username;
    String password;
    String phone;
    Integer sex;
}
