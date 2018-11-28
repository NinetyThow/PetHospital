package com.sy.pojo;

import java.util.ArrayList;
import java.util.List;

public class Pets {
    private int petId;
    private String petName;
    private String petBirthday;
    private Types types;
    private Owners owners;
    private List<Visits> list = new ArrayList<>();

    public int getPetId() {
        return petId;
    }

    public void setPetId(int petId) {
        this.petId = petId;
    }

    public String getPetName() {
        return petName;
    }

    public void setPetName(String petName) {
        this.petName = petName;
    }

    public String getPetBirthday() {
        return petBirthday;
    }

    public void setPetBirthday(String petBirthday) {
        this.petBirthday = petBirthday;
    }

    public Types getTypes() {
        return types;
    }

    public void setTypes(Types types) {
        this.types = types;
    }

    public Owners getOwners() {
        return owners;
    }

    public void setOwners(Owners owners) {
        this.owners = owners;
    }

    public List<Visits> getList() {
        return list;
    }

    public void setList(List<Visits> list) {
        this.list = list;
    }
}