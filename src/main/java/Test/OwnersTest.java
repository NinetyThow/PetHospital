package Test;

import com.sy.mapper.ownersMapper;
import com.sy.pojo.Owners;
import com.sy.utils.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;


public class OwnersTest {

    @Test
    public void CheckOwnersMsgByPetsIdTest(){
        SqlSession session = MyBatisUtil.createSession();
        ownersMapper om = session.getMapper(ownersMapper.class);

        Owners owners =om.CheckOwnersMsgByPetsId(1);
        System.out.println(owners.getOwnerName()+"--"+owners.getOwnerAddress()+"--"+owners.getOwnerCity());
    }
}
