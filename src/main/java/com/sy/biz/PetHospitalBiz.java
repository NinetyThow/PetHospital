package com.sy.biz;

import com.sy.pojo.Owners;
import com.sy.pojo.Pets;
import com.sy.pojo.Types;
import com.sy.pojo.Visits;

import java.util.List;

public interface PetHospitalBiz {
    //查询所有宠物的信息
    List<Pets> searchPets();

    //根据姓名查询宠物的信息
    List<Pets> searchPetsByName(Pets pets);

    //根据宠物的种类查询宠物的信息
    List<Pets> searchPetsByType(Pets pets);

    //更新宠物信息
    void replacePets(Pets pets);

    //添加宠物信息
    void addPets(Pets pets);

    //根据姓名查询宠物就医记录
    List<Visits> searchVisitsByName(int petsId);

    //新增宠物就医记录
    void addVisits(Visits visits);

    //根据类型Id查询类型信息
    Types searchTypeById(int typeId);

    //根据主人Id查询主人信息
    Owners searchOwnerById(int ownerId);
}
