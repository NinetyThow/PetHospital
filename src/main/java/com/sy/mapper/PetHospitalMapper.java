package com.sy.mapper;

import com.sy.pojo.Owners;
import com.sy.pojo.Pets;
import com.sy.pojo.Types;
import com.sy.pojo.Visits;

import java.util.List;

public interface PetHospitalMapper {
    //查询所有宠物的信息
    List<Pets> findPets();

    //根据姓名查询宠物的信息
    List<Pets> findPetsByName(Pets pets);

    //根据宠物的种类查询宠物的信息
    List<Pets> findPetsByType(Pets pets);

    //更新宠物信息
    void updatePets(Pets pets);

    //添加宠物信息
    void insertPets(Pets pets);

    //根据姓名查询宠物就医记录
    List<Visits> findVisitsByName(int petsId);

    //新增宠物就医记录
    void insertVisits(Visits visits);

    //根据类型Id查询类型信息
    Types findTypeById(int typeId);

    //根据主人Id查询主人信息
    Owners findOwnerById(int ownerId);

}
