package com.clh.entity;

public class Pv {
    private String time;
    private String count;

    public Pv() {
    }

    public Pv(String time, String count) {
        this.time = time;
        this.count = count;
    }

    @Override
    public String toString() {
        return "Pv{" +
                "time='" + time + '\'' +
                ", count='" + count + '\'' +
                '}';
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }
}
