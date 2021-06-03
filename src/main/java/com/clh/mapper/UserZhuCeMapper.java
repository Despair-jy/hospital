package com.clh.mapper;


import com.clh.entity.UserZhuCe;
import org.apache.ibatis.annotations.*;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

@MapperScan
@Repository
public interface UserZhuCeMapper {
    @Insert("insert into hospital.users(username,password) values (#{username}, #{password});")
    int addUser(UserZhuCe userZhuCe);
}
