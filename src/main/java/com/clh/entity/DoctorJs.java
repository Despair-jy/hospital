package com.clh.entity;

public class DoctorJs {

    private String doctor_name;
    private String count;

    private RegisterDocJs registerDocJs;

    @Override
    public String toString() {
        return "DoctorJs{" +
                "doctor_name='" + doctor_name + '\'' +
                ", count='" + count + '\'' +
                ", registerDocJs=" + registerDocJs +
                '}';
    }

    public DoctorJs() {
    }

    public DoctorJs(String doctor_name, String count, RegisterDocJs registerDocJs) {
        this.doctor_name = doctor_name;
        this.count = count;
        this.registerDocJs = registerDocJs;
    }

    public String getDoctor_name() {
        return doctor_name;
    }

    public void setDoctor_name(String doctor_name) {
        this.doctor_name = doctor_name;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public RegisterDocJs getRegisterDocJs() {
        return registerDocJs;
    }

    public void setRegisterDocJs(RegisterDocJs registerDocJs) {
        this.registerDocJs = registerDocJs;
    }
}
