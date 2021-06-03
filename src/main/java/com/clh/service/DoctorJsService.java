package com.clh.service;


import com.clh.entity.*;

import java.util.List;

public interface DoctorJsService {
    public List<DoctorJs> doctorJs();
    public  List<DepartmentJs> keshi();
    public List<BedJs> bed();
    public List<PatientJs> patient();

    public List<Pv> pv();

    public List<Uv> uv();
}
