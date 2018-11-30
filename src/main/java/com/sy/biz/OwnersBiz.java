package com.sy.biz;

import com.sy.mapper.ownersMapper;
import com.sy.pojo.Owners;
import com.sy.pojo.PageBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Transactional(readOnly=true)
@Service
public class OwnersBiz implements IOwnersBiz{

    @Autowired
    ownersMapper ownersMapper;

    @Override
    public PageBean CheckAllOwnersMsg(int pageSize,int pageCode) {
       PageBean pb = new PageBean();
       int allCount = ownersMapper.findAllCount();
       pb.setAllCount(allCount);
       pb.setPageSize(pageSize);

        if(pageCode > pb.getAllPages()) {
            pageCode = pb.getAllPages();
        }
        pb.setPageCode(pageCode);

        Map<String,Integer> map = new HashMap<String,Integer>();
        map.put("pageSize", pageSize);
        map.put("pageCode", pageCode);
        List<Owners> owners = ownersMapper.CheckAllOwnersMsg(map);
        pb.setDatas(owners);
        return pb;

    }

    @Override
    public Owners findOwnersById(int ownerId) {

       return ownersMapper.findOwnersById(ownerId);

    }

    @Override
    public Owners CheckOwnersMsgByPetsId(int petsId) {
        return ownersMapper.CheckOwnersMsgByPetsId(petsId);
    }

    @Transactional(readOnly=false)
    @Override
    public void UpdateOwners(Owners owners) {
        ownersMapper.UpdateOwners(owners);
    }

    @Transactional(readOnly=false)
    @Override
    public void CreateOwner(Owners owners) {
        ownersMapper.CreateOwner(owners);
    }


}
