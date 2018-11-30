package com.sy.biz;

import com.sy.mapper.EmployeesMapper;
import com.sy.pojo.Employees;
import com.sy.pojo.PageBean;
import com.sy.pojo.VetSpecialty;
import com.sy.pojo.Vets;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Transactional(readOnly=true)
@Service
public class EmployeesBizImpl implements EmployeesBiz {
    @Autowired
    EmployeesMapper employeesMapper;
    @Override
    public Employees login(Employees emp) {
        return employeesMapper.check(emp);
    }

    @Override
    public PageBean queryVetsByPage(int pageSize, int pageCode) {
        PageBean pb = new PageBean();
        pb.setPageSize(pageSize);
        int allVets = employeesMapper.findAllVets();
        pb.setAllCount(allVets);
        if(pageCode > pb.getAllPages()){
            pageCode = pb.getAllPages();
        }
        pb.setPageCode(pageCode);
        Map<String,Object> map = new HashMap<>();
        map.put("pageSize",pageSize);
        map.put("pageCode",pageCode);
        List<Vets> list = employeesMapper.findVetsByPage(map);
        pb.setDatas(list);
        return pb;
    }
    @Transactional(readOnly=false)
    @Override
    public void addWholeVet(Vets vets) {
        employeesMapper.createVets(vets);
        List<VetSpecialty> vetSpecialtyList = vets.getList();
        for (VetSpecialty vetSpecialty:
                vetSpecialtyList) {
            employeesMapper.createVetSpecialty(vetSpecialty);
            Integer specialtyId = vetSpecialty.getSpecialtyId();

        }
    }
}
