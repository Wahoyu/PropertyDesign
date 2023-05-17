package com.example.demo.eneity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Notice {
    Integer id;
    String title;
    String content;

    Integer createBy;
    Date createTime;
    Integer updateBy;
    Date updateTime;
    Integer status;

    @TableField(exist = false)
    Admin create_admin;
    @TableField(exist = false)
    Admin update_admin;
}
