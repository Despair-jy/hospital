package com.clh.entity;

public class BedJs {

    private String free;
    private String live;

    public BedJs() {
    }

    public BedJs(String free, String live) {
        this.free = free;
        this.live = live;
    }

    @Override
    public String toString() {
        return "BedJs{" +
                "free='" + free + '\'' +
                ", live='" + live + '\'' +
                '}';
    }

    public String getFree() {
        return free;
    }

    public void setFree(String free) {
        this.free = free;
    }

    public String getLive() {
        return live;
    }

    public void setLive(String live) {
        this.live = live;
    }
}
