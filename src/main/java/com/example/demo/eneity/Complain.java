package com.example.demo.eneity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Complain {
    Integer id;
    String content;
    Integer user_id;
    Integer status;
    Date time;

    @TableField(exist = false)
    User user;

    String result;
}
