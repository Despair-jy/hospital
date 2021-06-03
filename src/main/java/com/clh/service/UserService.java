package com.clh.service;

import com.clh.entity.User;

import java.util.List;

public interface UserService {

    public List<User> findAll();

    public User login(User user);
    public User add(User user);
}
