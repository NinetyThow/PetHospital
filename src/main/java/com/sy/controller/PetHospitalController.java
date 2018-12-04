package com.sy.controller;

import com.sy.biz.PetHospitalBiz;
import com.sy.pojo.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class PetHospitalController {
    @Resource
    private PetHospitalBiz petHospitalBizImpl;

    @RequestMapping(value = "/insertPet", method = RequestMethod.POST)
    public String insert(Pets pets, @RequestParam(value = "file1") MultipartFile file, HttpServletRequest request) {
        try {
            String realPath = request.getSession().getServletContext().getRealPath("/upload");
            String fileName = file.getOriginalFilename();
            String extensionName = fileName.substring(fileName.lastIndexOf(".") + 1);
            String newFileName = String.valueOf(System.currentTimeMillis()) + "." + extensionName;
            File dir = new File(realPath, newFileName);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            file.transferTo(dir);
            pets.setPetPicture(newFileName);
            petHospitalBizImpl.addPets(pets);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "redirect:/insertPetJsp";
    }

    @RequestMapping("/insertPetJsp")
    public String insertPetJsp(ModelMap modelMap) {
        List<Types> typesList = petHospitalBizImpl.searchTypes();
        List<Owners> ownersList = petHospitalBizImpl.searchOwners();
        modelMap.put("typesList", typesList);
        modelMap.put("ownersList", ownersList);
        return "insertPets";
    }

    @RequestMapping("/updatePet")
    public String update(Pets pets) {
        petHospitalBizImpl.replacePets(pets);
        return "redirect:/updatePetJsp";
    }

    @RequestMapping("/updatePetJsp")
    public String updatePetJsp1(@RequestParam(value = "pageCode", defaultValue = "1") int pageCode, Pets pets, ModelMap modelMap) {
        String petName = pets.getPetName();
        PageBean pb = petHospitalBizImpl.searchPagePetsLikeName(2, pageCode, petName);
        modelMap.put("petsList", pb);
        modelMap.put("a", petName);
        return "updatePets1";
    }

    @RequestMapping("/updatePetJsp2")
    public String updatePetJsp2(Pets pets, ModelMap modelMap) {
        Pets pet = petHospitalBizImpl.searchPetsById(pets);
        List<Types> typesList = petHospitalBizImpl.searchTypes();
        List<Owners> ownersList = petHospitalBizImpl.searchOwners();
        modelMap.put("typesList", typesList);
        modelMap.put("ownersList", ownersList);
        modelMap.put("pet", pet);
        return "updatePets2";
    }

    @RequestMapping("/petDetail")
    public String petDetail(Pets pets, ModelMap modelMap) {
        Pets pet = petHospitalBizImpl.searchPetsById(pets);
        modelMap.put("pet", pet);
        return "petDetail";
    }

    @RequestMapping("/insertVisit")
    public String insertVisit(Visits visits) {
        petHospitalBizImpl.addVisits(visits);
        return "insertVisits";
    }

    @RequestMapping("/insertVisitJsp")
    public String insertVisitJsp(ModelMap modelMap) {
        List<Pets> petsList = petHospitalBizImpl.searchPets();
        List<Vets> vetsList = petHospitalBizImpl.searchVets();
        modelMap.put("petsList", petsList);
        modelMap.put("vetsList", vetsList);
        return "insertVisits";
    }

    @RequestMapping("/findVisitsJsp")
    public String updatePetJsp1(@RequestParam(value = "pageCode", defaultValue = "1") int pageCode, String petName, ModelMap modelMap) {
        PageBean pb = petHospitalBizImpl.searchVisitsLikeName(2, pageCode, petName);
        modelMap.put("q", petName);
        modelMap.put("visitList", pb);
        return "findVisits";
    }

    @RequestMapping("/frontLogin")
    @ResponseBody
    public Map frontLogin(String LoginInfo){
        Map<String,Owners> map=new HashMap<>();
        Owners owners = petHospitalBizImpl.searchOwnerInfoByNameOrPhone(LoginInfo);
        map.put("owner",owners);
        return map;
    }

}
