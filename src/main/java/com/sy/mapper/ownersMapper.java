package com.sy.mapper;

import com.sy.pojo.Owners;

public interface ownersMapper {

    Owners CheckAllOwnersMsg();

    Owners CheckOwnersMsgByPetsId(int petId);

    void CreateOwners(Owners owners);
}
