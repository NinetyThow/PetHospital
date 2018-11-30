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
    public PageBean searchPets(int pageSize, int pageCode) {
        PageBean pb=new PageBean();
        int allCount= petHospitalMapper.findAllCount();
        pb.setAllCount(allCount);
        pb.setPageSize(pageSize);
        if (pageCode>pb.getAllPages()) {
            pageCode=pb.getAllPages();
        }
        pb.setPageCode(pageCode);
        Map<String,Object> map=new HashMap<>();
        map.put("pageSize", pageSize);
        map.put("pageCode", pageCode);
        List<Pets> list = petHospitalMapper.findPets(map);
        pb.setDatas(list);
        return pb;
    }

    @Override
    public Pets searchPetsById(Pets pets) {
        return petHospitalMapper.findPetsById(pets);
    }

    @Override
    public List<Pets> searchPetsByName(Pets pets) {
        return petHospitalMapper.findPetsByName(pets);
    }

    @Override
    public List<Pets> searchPetsByType(Pets pets) {
        return petHospitalMapper.findPetsByType(pets);
    }

    @Transactional(readOnly=false)
    @Override
    public void replacePets(Pets pets) {
        petHospitalMapper.updatePets(pets);
    }

    @Transactional(readOnly=false)
    @Override
    public void addPets(Pets pets) {
        petHospitalMapper.insertPets(pets);
    }

    @Override
    public List<Visits> searchVisitsByName(int petsId) {
        return petHospitalMapper.findVisitsByName(petsId);
    }

    @Transactional(readOnly=false)
    @Override
    public void addVisits(Visits visits) {
        petHospitalMapper.insertVisits(visits);
    }

    @Override
    public Types searchTypeById(int typeId) {
        return petHospitalMapper.findTypeById(typeId);
    }

    @Override
    public Owners searchOwnerById(int ownerId) {
        return petHospitalMapper.findOwnerById(ownerId);
    }

    @Override
    public List<Types> searchTypes() {
        return petHospitalMapper.findTypes();
    }

    @Override
    public List<Owners> searchOwners() {
        return petHospitalMapper.findOwners();
    }

}
