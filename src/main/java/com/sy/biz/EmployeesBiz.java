package com.sy.biz;

import com.sy.pojo.*;

import java.util.List;

public interface EmployeesBiz {
    Employees login(Employees emp);

    PageBean queryVetsByPage(int pageSize,int pageCode);

    PageBean queryVetsByPageByCondition(int pageSize,int pageCode,String vetName);

    void addVet(Vets vets);
    void addVetSpecialty(VetSpecialty vetSpecialty);

    int queryNewVetId();

    Vets queryVetInfoByVetId(int vetId);

    List<Specialties> queryAllSpecialties();
}
