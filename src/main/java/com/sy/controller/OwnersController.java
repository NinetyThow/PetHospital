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

@Controller
public class OwnersController {
    @Autowired
    private IOwnersBiz ownersBiz;

    //查询所有主人信息
    @RequestMapping("/AllOwners")
    public String AllOwners(@RequestParam(defaultValue = "1")int pageCode, ModelMap modelMap){
       PageBean pb = ownersBiz.CheckAllOwnersMsg(Application.PAGE_SIZE,pageCode);
       modelMap.put("pageBean",pb);
//        System.out.println(pb.getDatas());
        return "OwnersEdit";
    }
    //根据主人ID查询主人信息
    @RequestMapping("/showOwnersMsg")
    public  String findOwnersById(int ownerId,int pageCode , ModelMap modelMap){
        Owners owners = ownersBiz.findOwnersById(ownerId);
//        System.out.println(pageCode);
        modelMap.put("owners",owners);
        modelMap.put("pageCode",pageCode);
        return "OwnersMsgUpdate";
    }
    //更新主人信息
    @RequestMapping("/UpdateOwnerMsg")
    public String UpdateOwnerMsg(int pageCode ,Owners owners){
        ownersBiz.UpdateOwners(owners);
//        System.out.println(pageCode);
        return "redirect:/AllOwners?pageCode="+pageCode;
    }
    //根据宠物ID查询主人信息
    @RequestMapping("/OwnerBypetsId")
    public String OwnerBypetsId(int petsId){
        Owners owners= ownersBiz.CheckOwnersMsgByPetsId(petsId);
//        System.out.println(owners.getOwnerName()+"---"+owners.getOwnerCity());
        return "OwnersMsgUpdate";
    }
    //新增主人信息
    @RequestMapping("/CreateOwner")
    public String CreateOwner(Owners owners){
        ownersBiz.CreateOwner(owners);
        return "redirect:/AllOwners?pageCode=1";
    }
}
