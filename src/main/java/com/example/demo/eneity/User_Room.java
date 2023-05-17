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
@TableName("user_room")
public class User_Room {
    @TableId(type = IdType.AUTO)
    Integer id;
    Integer user_id;
    Integer room_id;
    Date inTime;
    Date outTime;
    @TableField(exist = false)
    User user;
    @TableField(exist = false)
    Room room;
}
