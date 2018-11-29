package com.sy.biz;

import com.sy.mapper.PetHospitalMapper;
import com.sy.pojo.Owners;
import com.sy.pojo.Pets;
import com.sy.pojo.Types;
import com.sy.pojo.Visits;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional(readOnly = true)
@Service
public class PetHospitalBizImpl implements PetHospitalBiz {

    @Autowired
    PetHospitalMapper petHospitalMapper;

    @Override
    public List<Pets> searchPets() {
        return petHospitalMapper.findPets();
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

}
