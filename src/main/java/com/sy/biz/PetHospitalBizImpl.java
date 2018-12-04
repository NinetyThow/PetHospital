package com.sy.biz;

import com.sy.mapper.PetHospitalMapper;
import com.sy.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Transactional(readOnly = true)
@Service
public class PetHospitalBizImpl implements PetHospitalBiz {

    @Autowired
    PetHospitalMapper petHospitalMapper;

    @Override
    public Pets searchPetsById(Pets pets) {
        return petHospitalMapper.findPetsById(pets);
    }

    @Override
    public PageBean searchPagePetsLikeName(int pageSize, int pageCode, String petName) {
        PageBean pb = new PageBean();
        Map<String, Object> map = new HashMap<>();
        map.put("pageSize", pageSize);
        map.put("pageCode", pageCode);
        map.put("petName", petName);
        int allCount = petHospitalMapper.findAllCount(map);
        pb.setAllCount(allCount);
        pb.setPageSize(pageSize);
        if (pageCode > pb.getAllPages()) {
            pageCode = pb.getAllPages();
        }
        pb.setPageCode(pageCode);
        List<Pets> list = petHospitalMapper.findPetsLikeName(map);
        pb.setDatas(list);
        return pb;
    }

    @Transactional(readOnly = false)
    @Override
    public void replacePets(Pets pets) {
        petHospitalMapper.updatePets(pets);
    }

    @Transactional(readOnly = false)
    @Override
    public void addPets(Pets pets) {
        petHospitalMapper.insertPets(pets);
    }

    @Override
    public PageBean searchVisitsLikeName(int pageSize, int pageCode, String petName) {
        PageBean pb = new PageBean();
        Map<String, Object> map = new HashMap<>();
        map.put("pageSize", pageSize);
        map.put("pageCode", pageCode);
        map.put("petName", petName);
        int allCount = petHospitalMapper.findAllVisitCount(map);
        System.out.println("1111");
        pb.setAllCount(allCount);
        pb.setPageSize(pageSize);
        if (pageCode > pb.getAllPages()) {
            pageCode = pb.getAllPages();
        }
        pb.setPageCode(pageCode);
        List<Visits> list = petHospitalMapper.findVisitsLikeName(map);
        pb.setDatas(list);
        return pb;
    }

    @Transactional(readOnly = false)
    @Override
    public void addVisits(Visits visits) {
        petHospitalMapper.insertVisits(visits);
    }

    @Override
    public List<Types> searchTypes() {
        return petHospitalMapper.findTypes();
    }

    @Override
    public List<Owners> searchOwners() {
        return petHospitalMapper.findOwners();
    }

    @Override
    public List<Pets> searchPets() {
        return petHospitalMapper.findPets();
    }

    @Override
    public List<Vets> searchVets() {
        return petHospitalMapper.findVets();
    }

    @Override
    public Owners searchOwnerInfoByNameOrPhone(String LoginInfo) {
        return petHospitalMapper.findOwnerInfoByNameOrPhone(LoginInfo);
    }

}
