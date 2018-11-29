package com.sy.biz;

import com.sy.mapper.ownersMapper;
import com.sy.pojo.Owners;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional(readOnly=true)
@Service
public class OwnersBiz implements IOwnersBiz{

    @Autowired
    ownersMapper ownersMapper;

    @Override
    public Owners CheckAllOwnersMsg() {
       return ownersMapper.CheckAllOwnersMsg();
    }


}
