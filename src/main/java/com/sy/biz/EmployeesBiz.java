package com.sy.biz;

import com.sy.pojo.Employees;
import com.sy.pojo.PageBean;
import com.sy.pojo.Specialties;
import com.sy.pojo.Vets;

public interface EmployeesBiz {
    Employees login(Employees emp);

    PageBean queryVetsByPage(int pageSize,int pageCode);

    void addWholeVet(Vets vets);
}
