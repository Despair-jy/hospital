package com.clh.service.impl;

import com.clh.entity.UserZhuCe;
import com.clh.mapper.UserZhuCeMapper;
import com.clh.service.UserZhuCeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserZhuCeServiceImpl implements UserZhuCeService {
    @Autowired
    private UserZhuCeMapper userZhuCeMapper;
    public int addUser(UserZhuCe userZhuCe) {
       return userZhuCeMapper.addUser(userZhuCe);
    }
}
