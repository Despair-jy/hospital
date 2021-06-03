package com.clh.service.impl;



import com.clh.entity.*;
import com.clh.mapper.DoctorJsMapper;
import com.clh.service.DoctorJsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("doctorJsService")
public class DoctorJsServiceImpl implements DoctorJsService {

    @Autowired
    private DoctorJsMapper doctorJsMapper;


    public List<DoctorJs> doctorJs() {
        return doctorJsMapper.doctorJs();
    }

    public List<DepartmentJs> keshi() {
        return doctorJsMapper.keshi();
    }

    public List<BedJs> bed() {
        return doctorJsMapper.bed();
    }

    @Override
    public List<Pv> pv() {
        return doctorJsMapper.pv();
    }

    @Override
    public List<Uv> uv() {
        return doctorJsMapper.uv();
    }


    public List<PatientJs> patient() {
        return doctorJsMapper.patient();
    }

}
