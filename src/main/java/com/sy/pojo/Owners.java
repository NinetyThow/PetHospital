package com.sy.pojo;

import java.util.ArrayList;
import java.util.List;

public class Owners {
    private int ownerId;
    private String ownerName;
    private String ownerAddress;
    private String ownerPassword;
    private String ownerCity;
    private String ownerTelephone;
    private List<Pets> petsList = new ArrayList<>();
    private List<Orders> ordersList=new ArrayList<>();

    public int getOwnerId() {
        return ownerId;
    }

    public void setOwnerId(int ownerId) {
        this.ownerId = ownerId;
    }

    public String getOwnerName() {
        return ownerName;
    }

    public void setOwnerName(String ownerName) {
        this.ownerName = ownerName;
    }

    public String getOwnerPassword() {
        return ownerPassword;
    }

    public void setOwnerPassword(String ownerPassword) {
        this.ownerPassword = ownerPassword;
    }

    public String getOwnerAddress() {
        return ownerAddress;
    }

    public void setOwnerAddress(String ownerAddress) {
        this.ownerAddress = ownerAddress;
    }

    public String getOwnerCity() {
        return ownerCity;
    }

    public void setOwnerCity(String ownerCity) {
        this.ownerCity = ownerCity;
    }

    public String getOwnerTelephone() {
        return ownerTelephone;
    }

    public void setOwnerTelephone(String ownerTelephone) {
        this.ownerTelephone = ownerTelephone;
    }

    public List<Pets> getPetsList() {
        return petsList;
    }

    public void setPetsList(List<Pets> petsList) {
        this.petsList = petsList;
    }

    public List<Orders> getOrdersList() {
        return ordersList;
    }

    public void setOrdersList(List<Orders> ordersList) {
        this.ordersList = ordersList;
    }
}
