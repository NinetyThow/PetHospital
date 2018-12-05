package com.sy.mapper;

import com.sy.pojo.Employees;
import com.sy.pojo.Specialties;
import com.sy.pojo.VetSpecialty;
import com.sy.pojo.Vets;

import java.util.List;
import java.util.Map;

public interface EmployeesMapper {
    //查询是否有此管理员
    Employees check(Employees emp);

    //找出兽医的数量
    int findAllVets();

    //分页显示所有兽医
    List<Vets> findVetsByPage(Map<String,Object> map);

    //找出符合条件兽医的数量
    int findVetsByName(Map<String,Object> map);

    //分页显示符合条件的兽医
    List<Vets> findVetsByPageByCondition(Map<String,Object> map);

    //点击添加医师按钮添加一名医师并添加其特长
    void createVets(Vets vets);
    void createVetSpecialty(VetSpecialty vetSpecialty);
    //找到新添加兽医的ID
    int findNewVetId();
    //查询被选中兽医的详情页面
    Vets findVetInfoByVetId(int vetId);


    //找出所有的兽医专业，供新增兽医时使用
    List<Specialties> findAllSpecialties();

}
