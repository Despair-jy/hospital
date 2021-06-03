package com.clh.service.impl;

import com.clh.entity.User;
import com.clh.mapper.UserMapper;
import com.clh.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public List<User> findAll() {
        return userMapper.findAll();
    }

    public User login(User user) {
        return userMapper.login(user);
    }

    public User add(User user) {
        return userMapper.add(user);
    }
}
