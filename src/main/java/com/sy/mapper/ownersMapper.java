package com.sy.mapper;

import com.sy.pojo.Owners;

import java.util.List;
import java.util.Map;

public interface ownersMapper {

    Owners findOwnersById(int ownerId);

    List<Owners> CheckAllOwnersMsg(Map<String, Integer> map );

    int findAllCount();

    Owners CheckOwnersMsgByPetsId(int petId);

    void UpdateOwners(Owners owners);

    void CreateOwner(Owners owners);
}
