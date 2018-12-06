package com.sy.biz;

import com.sy.pojo.Orders;
import com.sy.pojo.Owners;
import com.sy.pojo.PageBean;

import java.util.List;

public interface IOwnersBiz {
   //查询所有主人的信息
   public PageBean CheckAllOwnersMsg(int pageSize, int pageCode);

   //模糊查询主人的信息
   public PageBean findOwnersLike(int pageSize, int pageCode,String ownerId);

   //根据主人ID查找主人信息
   public Owners findOwnersById(int ownerId);

   //根据宠物的ID查询主人的信息
   public Owners CheckOwnersMsgByPetsId(int petsId);

   //更新主人信息
   public void UpdateOwners(Owners owners);

   //新增主人信息
   public void CreateOwner(Owners owners);

   //根据手机号查主人ID
   public int findIdByPhone(String ownerPhone);

   //新增预定信息
   public void CreateOrders(Orders orders);

   //通过手机号查询主人自身所有的信息，用于修改信息
   public Owners findOwnerMsgByPhone(String phone);

   //主人自身修改信息
   public void UpdateOwnerMsgByPhone(Owners owners);
}
