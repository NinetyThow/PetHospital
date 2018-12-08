package com.sy.controller;

import com.sy.biz.EmployeesBiz;
import com.sy.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class EmployeesController {
    @Autowired
    private EmployeesBiz employeesBiz;

    //管理员登录系统
    @RequestMapping("/empLogin")
    public String empLogin(Employees emp, HttpSession session){
        Employees loginedEmp = employeesBiz.login(emp);
        if (loginedEmp != null){
            session.setAttribute("loginedEmp",loginedEmp);
            return "welcome";
        }else{
            session.invalidate();
            return "redirect:/jsp/welcome.jsp";

        }
    }
    //管理员退出登录时，删除session
    @RequestMapping("/exitLogin")
    public String exitLogin(HttpSession session){
        session.invalidate();
        return "redirect:/jsp/welcome.jsp";
    }
    //管理员查看兽医详情
    @RequestMapping("/queryVets")
    public String queryVets(@RequestParam(defaultValue="1") int pageCode, ModelMap model) throws Exception{
        PageBean pb = employeesBiz.queryVetsByPage(10,pageCode);
        model.put("PageBean",pb);
        return "vetDetial";
    }
    //点击搜索找到想要的医生
    @RequestMapping("/findVetsByCondition")
    public String findVetsByCondition(@RequestParam(defaultValue="1") int pageCode, Vets vets,ModelMap model) throws Exception{
        String vetName = vets.getVetName();
        PageBean pb = employeesBiz.queryVetsByPageByCondition(10,pageCode,vetName);
        model.put("PageBean",pb);
        model.put("vetName",vetName);
        return "conditionVetDetial";
    }
    //管理员添加一个新的兽医及其所具备的技能
    @RequestMapping("/findAllSpecialty")
    public String findAllSpecialty(ModelMap model) throws Exception{
        List<Specialties> specialties = employeesBiz.queryAllSpecialties();
        model.put("specialties",specialties);
        return "addVet";
    }
    @RequestMapping("/addNewVet")
    public String addNewVet(Vets vets) throws Exception{

        employeesBiz.addVet(vets);
        return "forward:/addNewSpecialty";
    }
    @RequestMapping("/addNewSpecialty")
    public String addNewSpecialty(HttpServletRequest request,ModelMap model) throws Exception{
        List<Specialties> specialties = employeesBiz.queryAllSpecialties();
        model.put("specialties",specialties);
        String[] ids = request.getParameterValues("specialtyId");
        int newVetId = employeesBiz.queryNewVetId();
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

    //查询用户名是否已被注册
    @RequestMapping(value = "/findAllUsers",method = RequestMethod.POST)
    @ResponseBody
    public Map findAllUsers(String ownerName) throws Exception{
        String owners = employeesBiz.queryOwnersByName(ownerName);
        Map <String,String> map = new HashMap<>();
        map.put("owners",owners);
        return map;
    }
    //查询手机号是否已被注册
    @RequestMapping(value = "/findOwnerPhone",method = RequestMethod.POST)
    @ResponseBody
    public Map findOwnerPhone(String ownerTelephone) throws Exception{
        String ownerPhone = employeesBiz.queryOwnerByPhone(ownerTelephone);
        Map <String,String> map = new HashMap<>();
        map.put("ownerPhone",ownerPhone);
        return map;
    }
    //用户注册
    @RequestMapping("/registerUser")
    public String registerUser(Owners owners,HttpSession session) throws Exception{
        employeesBiz.registerUser(owners);
        session.setAttribute("frontUsername",owners.getOwnerName());
        session.setAttribute("frontPassword",owners.getOwnerPassword());
        session.setAttribute("frontPhone",owners.getOwnerTelephone());
        return "FrontPage";
    }
    //通过手机验证，跳转到修改密码界面
    @RequestMapping("/toChangePassword")
    public String toChangePassword(String ownerTelephone,ModelMap model) throws Exception{
        String oldPass = employeesBiz.queryOldPasswordByOwnerTelephone(ownerTelephone);
        model.put("oldPass",oldPass);
        model.put("ownerTelephone",ownerTelephone);
        return "resetPassword";
    }
    //修改密码
    @RequestMapping("/changePassword")
    public String changePassword(Owners owner) throws Exception{
        employeesBiz.changePasswordByOwnerTelephone(owner);
        return "FrontPageLogin";
    }

    //获取所有的科室
    @RequestMapping("/GetAllSpecialty")
//    @ResponseBody
    public String GetAllSpecialty(ModelMap modelMap){
        System.out.println("--------GetAllSpecialty---------");
        List<Specialties> list = employeesBiz.queryAllSpecialties();
        modelMap.put("specialties",list);

        System.out.println("asdasf");
        for (Specialties list1:
                list  ) {
            System.out.println(list1.getSpecialtyId()+"----------"+list1.getSpecialtyName());
        }
        return "Booking";
    }

}
