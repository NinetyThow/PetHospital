package com.sy.pojo;

import java.util.ArrayList;
import java.util.List;

public class Vets {
    private int vetId;
    private String vetName;
    private List<VetSpecialty> list = new ArrayList<>();
    private List<Visits> visitsList = new ArrayList<>();

    public int getVetId() {
        return vetId;
    }

    public void setVetId(int vetId) {
        this.vetId = vetId;
    }

    public String getVetName() {
        return vetName;
    }

    public void setVetName(String vetName) {
        this.vetName = vetName;
    }

    public List<VetSpecialty> getList() {
        return list;
    }

    public void setList(List<VetSpecialty> list) {
        this.list = list;
    }

    public List<Visits> getVisitsList() {
        return visitsList;
    }

    public void setVisitsList(List<Visits> visitsList) {
        this.visitsList = visitsList;
    }
}
