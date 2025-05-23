package com.example.demo.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.demo.eneity.Admin;
import com.example.demo.eneity.User;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.data.relational.core.mapping.Column;

import java.util.List;

@Mapper
public interface AdminMapper extends BaseMapper<Admin> {

}
