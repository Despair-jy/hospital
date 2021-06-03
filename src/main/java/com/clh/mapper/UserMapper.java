package com.clh.mapper;

import com.clh.entity.User;

import java.util.List;

public interface UserMapper {
    //定义登录注册方法
    public List<User> findAll();
    public User login(User user);
    public User add(User user);

}
