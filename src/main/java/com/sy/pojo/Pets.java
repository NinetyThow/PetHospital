package com.sy.pojo;

import java.util.ArrayList;
import java.util.List;

public class Pets {
    private int petId;
    private String petName;
    private String petBirthday;
    private Integer typeId;
    private Integer ownerId;
    private Types types;
    private Owners owners;
    private String petPicture;
    private List<Visits> list = new ArrayList<>();
    private List<Orders> ordersList=new ArrayList<>();

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

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public Integer getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(Integer ownerId) {
        this.ownerId = ownerId;
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

    public String getPetPicture() {
        return petPicture;
    }

    public void setPetPicture(String petPicture) {
        this.petPicture = petPicture;
    }

    public List<Visits> getList() {
        return list;
    }

    public void setList(List<Visits> list) {
        this.list = list;
    }

    public List<Orders> getOrdersList() {
        return ordersList;
    }

    public void setOrdersList(List<Orders> ordersList) {
        this.ordersList = ordersList;
    }
}
