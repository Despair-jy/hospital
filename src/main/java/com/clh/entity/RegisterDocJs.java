package com.clh.entity;

public class RegisterDocJs {

    private String doctor_id;

    public RegisterDocJs() {
    }

    public RegisterDocJs(String doctor_id) {
        this.doctor_id = doctor_id;
    }

    @Override
    public String toString() {
        return "RegisterDocJs{" +
                "doctor_id='" + doctor_id + '\'' +
                '}';
    }

    public String getDoctor_id() {
        return doctor_id;
    }

    public void setDoctor_id(String doctor_id) {
        this.doctor_id = doctor_id;
    }
}
