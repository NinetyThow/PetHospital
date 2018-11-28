package com.sy.pojo;

import java.util.ArrayList;
import java.util.List;

public class Specialties {
    private int specialtyId;
    private String specialtyName;
    private List<VetSpecialty> list = new ArrayList<>();

    public int getSpecialtyId() {
        return specialtyId;
    }

    public void setSpecialtyId(int specialtyId) {
        this.specialtyId = specialtyId;
    }

    public String getSpecialtyName() {
        return specialtyName;
    }

    public void setSpecialtyName(String specialtyName) {
        this.specialtyName = specialtyName;
    }

    public List<VetSpecialty> getList() {
        return list;
    }

    public void setList(List<VetSpecialty> list) {
        this.list = list;
    }
}
