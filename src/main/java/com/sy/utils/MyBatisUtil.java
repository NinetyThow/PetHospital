package com.sy.utils;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisUtil {

	private static SqlSessionFactory sessionFactory = null;
	
	static
	{
		try {
			InputStream inputStream = Resources.getResourceAsStream("mybatis-config.xml");
			sessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public static SqlSession createSession(){
		return sessionFactory.openSession();
	}
	
	public static void closeSession(SqlSession session){
		session.close();
	}
}
