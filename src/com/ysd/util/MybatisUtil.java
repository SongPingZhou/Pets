package com.ysd.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisUtil {
	//��ȡsql�ػ�����
	private static SqlSessionFactory getFactory(){
		SqlSessionFactory factory=null;
		try {
			InputStream in = Resources.getResourceAsStream("mybatis-config.xml");
			SqlSessionFactoryBuilder builder=new SqlSessionFactoryBuilder();
			factory=builder.build(in);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return factory;
	}
	//�Զ��ύ��
	public static SqlSession getSession(boolean flag){
		SqlSession session=null;
		session=getFactory().openSession(flag);
		return session;
	}
	
	//���Զ��ύ��
	public static SqlSession getSession(){
		SqlSession session=null;
		session=getFactory().openSession();
		return session;
	}
}
