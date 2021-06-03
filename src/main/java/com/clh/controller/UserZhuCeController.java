package com.clh.controller;


import com.clh.entity.UserZhuCe;

import com.clh.service.UserZhuCeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/price")
public class UserZhuCeController {
    @Autowired
    private  UserZhuCeService userZhuCeService;

    @RequestMapping("/addUser")
    public String addUser(UserZhuCe userZhuCe){
        System.out.println("addUser=>"+userZhuCe);
        userZhuCeService.addUser(userZhuCe);
        return "addUser";
    }
}
