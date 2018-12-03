package com.sy.biz;

import com.sy.mapper.EmployeesMapper;
import com.sy.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

    @Override
    public PageBean queryVetsByPageByCondition(int pageSize, int pageCode,String vetName) {
        Map<String,Object> map = new HashMap<>();
        map.put("pageSize",pageSize);
        map.put("pageCode",pageCode);
        map.put("vetName",vetName);
        PageBean pb = new PageBean();
        pb.setPageSize(pageSize);
        int conditionVets = employeesMapper.findVetsByName(map);
        pb.setAllCount(conditionVets);
        if(pageCode > pb.getAllPages()){
            pageCode = pb.getAllPages();
        }
        pb.setPageCode(pageCode);
        List<Vets> list = employeesMapper.findVetsByPageByCondition(map);
        pb.setDatas(list);
        return pb;
    }

    @Transactional(readOnly=false)
    @Override
    public void addVet(Vets vets) {
        employeesMapper.createVets(vets);
    }

    @Transactional(readOnly=false)
    @Override
    public void addVetSpecialty(VetSpecialty vetSpecialty) {
        employeesMapper.createVetSpecialty(vetSpecialty);
    }

    @Override
    public int queryNewVetId() {
        return employeesMapper.findNewVetId();
    }

    @Override
    public Vets queryVetInfoByVetId(int vetId) {
        return employeesMapper.findVetInfoByVetId(vetId);
    }

    @Override
    public List<Specialties> queryAllSpecialties() {
        return employeesMapper.findAllSpecialties();
    }

}
