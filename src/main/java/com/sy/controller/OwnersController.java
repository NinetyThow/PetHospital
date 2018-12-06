package com.sy.controller;

import com.sy.biz.EmployeesBiz;
import com.sy.biz.IOwnersBiz;
import com.sy.pojo.Orders;
import com.sy.pojo.Owners;
import com.sy.pojo.PageBean;
import com.sy.pojo.Specialties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class OwnersController {
    @Autowired
    private IOwnersBiz ownersBiz;



    //查询所有主人信息
    @RequestMapping("/AllOwners")
    public String AllOwners(@RequestParam(defaultValue = "1")int pageCode, ModelMap modelMap){
       PageBean pb = ownersBiz.CheckAllOwnersMsg(5,pageCode);
       modelMap.put("pageBean",pb);
//        System.out.println(pb.getDatas());
        return "OwnersEdit";
    }

    //模糊查询主人信息
    @RequestMapping("/AllOwnersLike")
    public String AllOwnersLike(String ownerId,@RequestParam(defaultValue = "1")int pageCode, ModelMap modelMap){
        System.out.println(ownerId);
       PageBean pb = ownersBiz.findOwnersLike(5,pageCode,ownerId);
       modelMap.put("pageBean",pb);
       modelMap.put("ownerId",ownerId);
//        System.out.println(pb.getDatas());
        return "OwnersEditNew";
    }

    //根据主人ID查询主人信息
//    @RequestMapping("/showOwnersMsg")
//    public  String findOwnersById(int ownerId,int pageCode , ModelMap modelMap){
//        Owners owners = ownersBiz.findOwnersById(ownerId);
////        System.out.println(pageCode);
//        modelMap.put("owners",owners);
//        modelMap.put("pageCode",pageCode);
//        return "OwnersMsgUpdate";
//    }

    //根据主人ID查询主人信息Test
    @RequestMapping("/showOwnersMsgById")
    @ResponseBody
    public  Owners findOwnersByOwnerId(String ownerId){
        int Id = Integer.parseInt(ownerId);
        System.out.println(Id);
        Owners owners = ownersBiz.findOwnersById(Id);
//        System.out.println(pageCode);
//        modelMap.put("owners",owners);
//        modelMap.put("pageCode",pageCode);
        return owners;
    }
    //更新主人信息
    @RequestMapping("/UpdateOwnerMsg")
    public String UpdateOwnerMsg(Owners owners){
//        System.out.println("------------------------");
//        System.out.println(owners.getOwnerId());
//        System.out.println(owners.getOwnerName());
//        System.out.println(owners.getOwnerAddress());
//        System.out.println(owners.getOwnerCity());
//        System.out.println(owners.getOwnerTelephone());
        ownersBiz.UpdateOwners(owners);
//        System.out.println(pageCode);
        return "redirect:/AllOwners?pageCode=1";
    }


    //根据宠物ID查询主人信息
    @RequestMapping("/OwnerBypetsId")
    @ResponseBody
    public Owners OwnerBypetsId(HttpServletRequest request){
        System.out.println("------------------------------");
//        System.out.println(petsId);
        int petsId = Integer.parseInt(request.getParameter("petsId"));
        System.out.println(petsId);
        Owners owners= ownersBiz.CheckOwnersMsgByPetsId(petsId);
//        System.out.println(owners.getOwnerName()+"---"+owners.getOwnerCity());
        return owners;
    }
    //新增主人信息
    @RequestMapping("/CreateOwner")
    public String CreateOwner(Owners owners){
        ownersBiz.CreateOwner(owners);
        return "redirect:/AllOwners?pageCode=1";
    }

    //新增预定信息
    @RequestMapping("/CreateOrders")
    public String CreateOrders(HttpServletRequest request){
            Orders orders = new Orders();
            String phone = request.getParameter("orderPhone");
            int ownerId = ownersBiz.findIdByPhone(phone);
            orders.setOwnerId(ownerId);
            orders.setOrderDate(request.getParameter("orderDate"));
            orders.setSpecialtyId(Integer.parseInt(request.getParameter("specialtyId")));
        System.out.println(request.getParameter("specialtyId"));
         ownersBiz.CreateOrders(orders);
         return "Booking";
    }

    @RequestMapping("/UpdateMsgBySelf")
    public String UpdateMsgBySelf(String frontPhone,ModelMap modelMap){
        System.out.println("-------UpdateMsgBySelf--------");
        System.out.println(frontPhone);
        Owners owners = ownersBiz.findOwnerMsgByPhone(frontPhone);
        modelMap.put("owners",owners);
        return "OwnersMsgModify";
    }
}
