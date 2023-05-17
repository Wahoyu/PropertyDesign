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
public class Room {
    @TableId(type = IdType.AUTO)
    Integer id;
    String name;
    String area;
    Integer status;
    Integer unit_id;
    @TableField(exist = false)
    Unit unit;
}
