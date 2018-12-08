package com.sy.biz;

import com.sy.pojo.*;

import java.util.List;

public interface PetHospitalBiz {

    //根据Id查询宠物的信息
    Pets searchPetsById(Pets pets);

    //根据姓名查询宠物的信息
    PageBean searchPagePetsLikeName(int pageSize, int pageCode, String petName);

    //更新宠物信息
    void replacePets(Pets pets);

    //添加宠物信息
    void addPets(Pets pets);

    //根据姓名查询宠物就医记录
    PageBean searchVisitsLikeName(int pageSize, int pageCode, String petName);

    //新增宠物就医记录
    void addVisits(Visits visits);

    //查询宠物的种类
    List<Types> searchTypes();

    //查询宠物的主人
    List<Owners> searchOwners();

    ///查询宠物的基础信息
    List<Pets> searchPets();

    //查询兽医的信息
    List<Vets> searchVets();

    //根据主人的名称和手机号获取主人的名称和密码
    Owners searchOwnerInfoByNameOrPhone(String LoginInfo);

    List<Orders> searchOrders(String orderStatus,String condition);

    void replaceOrderStatus(Orders orders);
}
