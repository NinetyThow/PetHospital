package com.sy.pojo;

public class Visits {
    private int visitId;
    private Integer petId;
    private Pets pets;
    private String visitDate;
    private String description;

    public int getVisitId() {
        return visitId;
    }

    public void setVisitId(int visitId) {
        this.visitId = visitId;
    }

    public Integer getPetId() {
        return petId;
    }

    public void setPetId(Integer petId) {
        this.petId = petId;
    }

    public Pets getPets() {
        return pets;
    }

    public void setPets(Pets pets) {
        this.pets = pets;
    }

    public String getVisitDate() {
        return visitDate;
    }

    public void setVisitDate(String visitDate) {
        this.visitDate = visitDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
