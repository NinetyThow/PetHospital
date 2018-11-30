package com.sy.controller;

import com.sy.biz.PetHospitalBiz;
import com.sy.pojo.Owners;
import com.sy.pojo.PageBean;
import com.sy.pojo.Pets;
import com.sy.pojo.Types;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class PetHospitalController {
    @Autowired
    private PetHospitalBiz petHospitalBizImpl;

    //新增宠物信息
    @RequestMapping("/insert")
    public String insert(Pets pets) {
        petHospitalBizImpl.addPets(pets);
        return "insertPets";
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
    public String update(Pets pets) {
        petHospitalBizImpl.replacePets(pets);
        return "updatePets1";
    }

    @RequestMapping("/insertPetJsp")
    public String insertPetJsp(ModelMap modelMap) {
        List<Types> typesList=petHospitalBizImpl.searchTypes();
        List<Owners> ownersList=petHospitalBizImpl.searchOwners();
        modelMap.put("typesList",typesList);
        modelMap.put("ownersList",ownersList);
        return "insertPets";
    }

    @RequestMapping("/updatePetJsp1")
    public String updatePetJsp1(@RequestParam(value="pageCode",defaultValue="1") int pageCode, ModelMap modelMap) {
        PageBean pb = petHospitalBizImpl.searchPets(2, pageCode);
        modelMap.put("petsList",pb);
        return "updatePets1";
    }

    @RequestMapping("/updatePetJsp11")
    public String updatePetJsp11(Pets pets,ModelMap modelMap) {
        List<Pets> petsList= petHospitalBizImpl.searchPetsByName(pets);
        modelMap.put("petsList",petsList);
        return "updatePets1";
    }

    @RequestMapping("/updatePetJsp2")
    public String updatePetJsp2(Pets pets,ModelMap modelMap) {
        Pets pet= petHospitalBizImpl.searchPetsById(pets);
        List<Types> typesList=petHospitalBizImpl.searchTypes();
        List<Owners> ownersList=petHospitalBizImpl.searchOwners();
        modelMap.put("typesList",typesList);
        modelMap.put("ownersList",ownersList);
        modelMap.put("pet",pet);
        return "updatePets2";
    }

}
