package com.clh.entity;

public class Uv {
    private String time;
    private String count;

    @Override
    public String toString() {
        return "Uv{" +
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

    public Uv() {
    }

    public Uv(String time, String count) {
        this.time = time;
        this.count = count;
    }
}
