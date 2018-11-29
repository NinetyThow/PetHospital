package com.sy.biz;

import com.sy.mapper.EmployeesMapper;
import com.sy.pojo.Employees;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional(readOnly=true)
@Service
public class EmployeesBizImpl implements EmployeesBiz {
    @Autowired
    EmployeesMapper employeesMapper;
    @Override
    public Employees login(Employees emp) {
        return employeesMapper.check(emp);
    }
}
