package com.sy.controller;

import com.sy.biz.PetHospitalBiz;
import com.sy.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class PetHospitalController {
    @Autowired
    private PetHospitalBiz petHospitalBizImpl;

    @RequestMapping("/insertPet")
    public String insert(Pets pets) {
        petHospitalBizImpl.addPets(pets);
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

    @RequestMapping("/updatePet")
    public String update(Pets pets) {
        petHospitalBizImpl.replacePets(pets);
        return "updatePets1";
    }

    @RequestMapping("/updatePetJsp")
    public String updatePetJsp1(@RequestParam(value="pageCode",defaultValue="1") int pageCode, Pets pets,ModelMap modelMap) {
        String petName = pets.getPetName();
        PageBean pb = petHospitalBizImpl.searchPagePetsLikeName(2,pageCode,petName);
        modelMap.put("petsList",pb);
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

    @RequestMapping("/insertVisit")
    public String insertVisit(Visits visits){
        petHospitalBizImpl.addVisits(visits);
        return "insertVisits";
    }

    @RequestMapping("/insertVisitJsp")
    public String insertVisitJsp(ModelMap modelMap) {
        List<Pets> petsList = petHospitalBizImpl.searchPets();
        List<Vets> vetsList = petHospitalBizImpl.searchVets();
        modelMap.put("petsList",petsList);
        modelMap.put("vetsList",vetsList);
        return "insertVisits";
    }

    @RequestMapping("/findVisitsJsp")
    public String updatePetJsp1(@RequestParam(value="pageCode",defaultValue="1") int pageCode, String petName,ModelMap modelMap) {
        PageBean pb = petHospitalBizImpl.searchVisitsLikeName(2, pageCode, petName);
        modelMap.put("q",petName);
        modelMap.put("visitList",pb);
        return "findVisits";
    }

}
