package com.sy.pojo;

public class VetSpecialty {
    private Integer vetId;
    private Integer specialtyId;
    private Vets vets;
    private Specialties specialties;

    public Integer getVetId() {
        return vetId;
    }

    public void setVetId(Integer vetId) {
        this.vetId = vetId;
    }

    public Integer getSpecialtyId() {
        return specialtyId;
    }

    public void setSpecialtyId(Integer specialtyId) {
        this.specialtyId = specialtyId;
    }

    public Vets getVets() {
        return vets;
    }

    public void setVets(Vets vets) {
        this.vets = vets;
    }

    public Specialties getSpecialties() {
        return specialties;
    }

    public void setSpecialties(Specialties specialties) {
        this.specialties = specialties;
    }
}
