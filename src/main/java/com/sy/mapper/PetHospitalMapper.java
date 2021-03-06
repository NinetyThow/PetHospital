package com.sy.mapper;

import com.sy.pojo.*;

import java.util.List;
import java.util.Map;

public interface PetHospitalMapper {

    //根据Id查询宠物的信息
    Pets findPetsById(Pets pets);

    int findAllCount(Map<String, Object> map);

    //根据姓名查询宠物的信息
    List<Pets> findPetsLikeName(Map<String, Object> map);

    //更新宠物信息
    void updatePets(Pets pets);

    //添加宠物信息
    void insertPets(Pets pets);

    int findAllVisitCount(Map<String, Object> map);

    //根据姓名查询宠物就医记录
    List<Visits> findVisitsLikeName(Map<String, Object> map);

    //新增宠物就医记录
    void insertVisits(Visits visits);

    //查询宠物的类别
    List<Types> findTypes();

    //查询宠物的主人
    List<Owners> findOwners();

    //查询宠物的基础信息
    List<Pets> findPets();

    //查询兽医的信息
    List<Vets> findVets();

    //根据主人的名称和手机号获取主人的名称和密码
    Owners findOwnerInfoByNameOrPhone(String LoginInfo);

    List<Orders> findOrders(Map<String, Object> map);

    void updateOrderStatus(Orders orders);
}
