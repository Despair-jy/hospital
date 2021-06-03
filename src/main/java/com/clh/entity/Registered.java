package com.clh.entity;

public class Registered {

    private int id;
    private String  name_id;
    private String name;
    private String old;
    private String sex;
    private String id_car;
    private String department;
    private String phone;
    private String time;

    public Registered() {
    }

    public Registered(String name_id, String name, String old, String sex, String id_car, String department, String phone, String time) {
        this.name_id = name_id;
        this.name = name;
        this.old = old;
        this.sex = sex;
        this.id_car = id_car;
        this.department = department;
        this.phone = phone;
        this.time = time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName_id() {
        return name_id;
    }

    public void setName_id(String name_id) {
        this.name_id = name_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getOld() {
        return old;
    }

    public void setOld(String old) {
        this.old = old;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getId_car() {
        return id_car;
    }

    public void setId_car(String id_car) {
        this.id_car = id_car;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
