package com.clh.entity;

public class DoctorJss {
    private String doctor_name;
    private RegisterDocJs registerDocJs;

    public DoctorJss() {
    }

    public DoctorJss(String doctor_name, RegisterDocJs registerDocJs) {
        this.doctor_name = doctor_name;
        this.registerDocJs = registerDocJs;
    }

    @Override
    public String toString() {
        return "DoctorJss{" +
                "doctor_name='" + doctor_name + '\'' +
                ", registerDocJs=" + registerDocJs +
                '}';
    }

    public String getDoctor_name() {
        return doctor_name;
    }

    public void setDoctor_name(String doctor_name) {
        this.doctor_name = doctor_name;
    }

    public RegisterDocJs getRegisterDocJs() {
        return registerDocJs;
    }

    public void setRegisterDocJs(RegisterDocJs registerDocJs) {
        this.registerDocJs = registerDocJs;
    }
}
