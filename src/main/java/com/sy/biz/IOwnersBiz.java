package com.sy.biz;

import com.sy.pojo.Owners;
import com.sy.pojo.PageBean;

import java.util.List;

public interface IOwnersBiz {
   //查询所有主人的信息
   public PageBean CheckAllOwnersMsg(int pageSize, int pageCode);

   //根据主人ID查找主人信息
   public Owners findOwnersById(int ownerId);

   //根据宠物的ID查询主人的信息
   public Owners CheckOwnersMsgByPetsId(int petsId);

   //更新主人信息
   public void UpdateOwners(Owners owners);

   //新增主人信息
   public void CreateOwner(Owners owners);
}
