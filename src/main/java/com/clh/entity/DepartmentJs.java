package com.clh.entity;

public class DepartmentJs {
    private String department_name;
    private String count;
    private DoctorJss doctorJss;

    public DepartmentJs(String department_name, String count, DoctorJss doctorJss) {
        this.department_name = department_name;
        this.count = count;
        this.doctorJss = doctorJss;
    }

    public DepartmentJs() {
    }

    @Override
    public String toString() {
        return "DepartmentJs{" +
                "department_name='" + department_name + '\'' +
                ", count='" + count + '\'' +
                ", doctorJss=" + doctorJss +
                '}';
    }

    public String getDepartment_name() {
        return department_name;
    }

    public void setDepartment_name(String department_name) {
        this.department_name = department_name;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public DoctorJss getDoctorJss() {
        return doctorJss;
    }

    public void setDoctorJss(DoctorJss doctorJss) {
        this.doctorJss = doctorJss;
    }
}
