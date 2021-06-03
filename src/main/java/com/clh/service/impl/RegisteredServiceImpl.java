package com.clh.service.impl;

import com.clh.entity.Registered;
import com.clh.mapper.RegisteredMapper;
import com.clh.service.RegisteredService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("registeredService")
public class RegisteredServiceImpl implements RegisteredService {

    @Autowired
    private RegisteredMapper registeredMapper;

    public Registered add_registered(Registered registered) {

        return registeredMapper.add_registered(registered);
    }
}
