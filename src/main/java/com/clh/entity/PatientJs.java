package com.clh.entity;

public class PatientJs {
    private String eag_layer;
    private String emps;

    public PatientJs(String eag_layer, String emps) {
        this.eag_layer = eag_layer;
        this.emps = emps;
    }

    public PatientJs() {
    }

    @Override
    public String toString() {
        return "PatientJs{" +
                "eag_layer='" + eag_layer + '\'' +
                ", emps='" + emps + '\'' +
                '}';
    }

    public String getEag_layer() {
        return eag_layer;
    }

    public void setEag_layer(String eag_layer) {
        this.eag_layer = eag_layer;
    }

    public String getEmps() {
        return emps;
    }

    public void setEmps(String emps) {
        this.emps = emps;
    }
}
