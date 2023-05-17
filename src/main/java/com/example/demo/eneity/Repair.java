package com.example.demo.eneity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Repair {
    @TableId(type = IdType.AUTO)
    Integer id;
    String content;
    Integer status;
    Date time;
    Integer user_id;
    @TableField(exist = false)
    User user;
    String result;
}
