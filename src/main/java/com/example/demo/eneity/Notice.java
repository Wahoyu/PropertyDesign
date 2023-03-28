package com.example.demo.eneity;

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
    Admin create_admin;
    Admin update_admin;
}
