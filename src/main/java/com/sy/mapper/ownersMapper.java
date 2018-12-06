package com.sy.mapper;

import com.sy.pojo.Orders;
import com.sy.pojo.Owners;

import java.util.List;
import java.util.Map;

public interface ownersMapper {

    Owners findOwnersById(int ownerId);

    List<Owners> CheckAllOwnersMsg(Map<String, Integer> map );

    List<Owners> findOwnersLike(Map<String, Object> map );

    int findAllCount();

    int findCountOwnersLike(Map<String, Object> map);

    Owners CheckOwnersMsgByPetsId(int petId);

    void UpdateOwners(Owners owners);

    void CreateOwner(Owners owners);

    int findIdByPhone(String ownerPhone);

    void CreateOrders(Orders orders);

    Owners findOwnerMsgByPhone(String phone);

    void UpdateOwnerMsgByPhone(Owners owners);

}
