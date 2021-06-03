package com.clh.controller;

import com.clh.entity.*;
import com.clh.service.DoctorJsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/aa")
public class DoctorJsController {

    @Autowired
    private DoctorJsService doctorJsService;

    @RequestMapping("/bb")
    public @ResponseBody
    List countsellnum(){
        List<DoctorJs> countsellnum = doctorJsService.doctorJs();
       System.out.println(countsellnum);
        return countsellnum;
    }

    @RequestMapping("/cc")
    public @ResponseBody
    List countsellnum01(){
        List<DepartmentJs> countsellnum01 = doctorJsService.keshi();
        System.out.println(countsellnum01);
        return countsellnum01;
    }

    @RequestMapping("/dd")
    public @ResponseBody
    List countsellnum02(){
        List<BedJs> countsellnum02 = doctorJsService.bed();
        System.out.println(countsellnum02);
        return countsellnum02;
    }

    @RequestMapping("/ee")
    public @ResponseBody
    List countsellnum03(){
        List<PatientJs> countsellnum03 = doctorJsService.patient();
//        System.out.println(countsellnum03);
        return countsellnum03;
    }

    @RequestMapping("/pp")
    public @ResponseBody
    List countsellnum04(){
        List<Pv> countsellnum04 = doctorJsService.pv();
        System.out.println(countsellnum04);
        return countsellnum04;
    }

    @RequestMapping("/uu")
    public @ResponseBody
    List countsellnum05(){
        List<Uv> countsellnum05 = doctorJsService.uv();
        System.out.println(countsellnum05);
        return countsellnum05;
    }

}
