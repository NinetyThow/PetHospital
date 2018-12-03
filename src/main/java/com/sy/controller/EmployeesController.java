package com.sy.controller;

import com.sy.biz.EmployeesBiz;
import com.sy.pojo.Employees;
import com.sy.pojo.PageBean;
import com.sy.pojo.VetSpecialty;
import com.sy.pojo.Vets;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

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
        PageBean pb = employeesBiz.queryVetsByPage(10,pageCode);
        model.put("PageBean",pb);
        return "vetDetial";
    }
    //管理员添加一个新的兽医及其所具备的技能
    @RequestMapping("/addNewVet")
    public String addNewVet(Vets vets) throws Exception{

        employeesBiz.addVet(vets);
        return "forward:/addNewSpecialty";
    }
    @RequestMapping("/addNewSpecialty")
    public String addNewSpecialty(HttpServletRequest request) throws Exception{
        String[] ids = request.getParameterValues("specialtyId");
        int newVetId = employeesBiz.queryNewVetId();
        System.out.println(newVetId);
        VetSpecialty vetSpecialty = new VetSpecialty();
        for (String s:
             ids) {
            vetSpecialty.setVetId(newVetId);
            vetSpecialty.setSpecialtyId(Integer.parseInt(s));
            employeesBiz.addVetSpecialty(vetSpecialty);
        }
        return "addVet";
    }
    @RequestMapping(value = "/findVetInfo",method = RequestMethod.POST)
    @ResponseBody
    public Map findVetInfo(String vetId) throws Exception{
        Vets vet = employeesBiz.queryVetInfoByVetId(Integer.parseInt(vetId));
        Map <String,Vets> map = new HashMap<>();
        map.put("Vets",vet);
        return map;
    }
}
