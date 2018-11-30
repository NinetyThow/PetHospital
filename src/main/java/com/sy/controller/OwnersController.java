package com.sy.controller;

import com.sy.biz.IOwnersBiz;
import com.sy.pojo.Owners;
import com.sy.pojo.PageBean;
import com.sy.utils.Application;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import java.util.List;

@Controller
public class OwnersController {
    @Autowired
    private IOwnersBiz ownersBiz;

    //查询所有主人信息
    @RequestMapping("/AllOwners")
    public String AllOwners(@RequestParam(defaultValue = "1")int pageCode, ModelMap modelMap){
       PageBean pb = ownersBiz.CheckAllOwnersMsg(Application.PAGE_SIZE,pageCode);
       modelMap.put("pageBean",pb);
        System.out.println(pb.getDatas());
        return "OwnersEdit";
    }

    //根据主人ID查询主人信息
    @RequestMapping("/showOwnersMsg")
    public  String findOwnersById(int ownerId,int pageCode , ModelMap modelMap){
        Owners owners = ownersBiz.findOwnersById(ownerId);
        modelMap.put("owners",owners);
        modelMap.put("pageCode",pageCode);
        return "";
    }

    //根据宠物ID查询主人信息
    @RequestMapping("/OwnerBypetsId")
    public String OwnerBypetsId(int petsId){

        Owners owners= ownersBiz.CheckOwnersMsgByPetsId(petsId);

        System.out.println(owners.getOwnerName()+"---"+owners.getOwnerCity());

        return "OwnersTest";
    }


    //新增主人信息
    @RequestMapping("/CreateOwner")
    public String CreateOwner(Owners owners){
        ownersBiz.CreateOwner(owners);
        return "welcome";
    }


}
