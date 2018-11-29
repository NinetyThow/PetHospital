package com.sy.test;

import com.sy.mapper.PetHospitalMapper;
import com.sy.pojo.Pets;
import com.sy.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.jupiter.api.Test;

import java.util.List;

public class StudentMapperTest {

	@Test
	public void testFind() throws Exception {
		SqlSession session = MyBatisUtil.createSession();
		PetHospitalMapper sm = session.getMapper(PetHospitalMapper.class);
		List<Pets> list=sm.findPets();
		for (Pets a:list) {
			System.out.println(a.getPetName());
		}

	}
}