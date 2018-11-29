package com.sy.controller;

import com.sy.biz.PetHospitalBiz;
import com.sy.pojo.Owners;
import com.sy.pojo.Pets;
import com.sy.pojo.Types;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class PetHospitalController {
    @Autowired
    private PetHospitalBiz petHospitalBizImpl;

    //新增宠物信息
    @RequestMapping("/insert")
    public String insert(String petName, String petBirthday, int typeId, int ownerId) {
        Pets pets = new Pets();
        Types types = petHospitalBizImpl.searchTypeById(typeId);
        Owners owners = petHospitalBizImpl.searchOwnerById(ownerId);
        pets.setOwners(owners);
        pets.setTypes(types);
        pets.setPetName(petName);
        pets.setPetBirthday(petBirthday);
        petHospitalBizImpl.addPets(pets);
        return "test";
    }

    //查询宠物信息
    @RequestMapping("/query")
    public String query(Pets pets) {
        List<Pets> list = petHospitalBizImpl.searchPetsByName(pets);
        for (Pets pet : list) {
            System.out.println(pet.getTypes().getTypeId());
        }
        return "test";
    }

    //更新宠物信息
    @RequestMapping("/update")
    public String update(String petName, String petBirthday, int typeId, int ownerId) {
        Pets pets = new Pets();
        Types types = petHospitalBizImpl.searchTypeById(typeId);
        Owners owners = petHospitalBizImpl.searchOwnerById(ownerId);
        pets.setOwners(owners);
        pets.setTypes(types);
        pets.setPetName(petName);
        pets.setPetBirthday(petBirthday);
        petHospitalBizImpl.replacePets(pets);
        return "test";
    }

}
