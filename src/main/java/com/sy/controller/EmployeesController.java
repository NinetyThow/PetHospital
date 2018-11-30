package com.sy.controller;

import com.sy.biz.EmployeesBiz;
import com.sy.pojo.Employees;
import com.sy.pojo.PageBean;
import com.sy.pojo.Vets;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class EmployeesController {
    @Autowired
    private EmployeesBiz employeesBiz;

    //管理员登录系统
    @RequestMapping("/empLogin")
    public String empLogin(Employees emp, ModelMap model){
        Employees loginedEmp = employeesBiz.login(emp);
        if (loginedEmp != null){
            model.put("loginedEmp",loginedEmp);
            return "welcome";
        }else{
            return "redirect:/jsp/welcome.jsp";
        }
    }
    //管理员查看兽医详情
    @RequestMapping("/queryVets")
    public String queryVets(@RequestParam(defaultValue="1") int pageCode, ModelMap model) throws Exception{
        PageBean pb = employeesBiz.queryVetsByPage(2,pageCode);
        model.put("PageBean",pb);
        return "vetDetial";
    }
}
