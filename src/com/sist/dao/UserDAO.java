package com.sist.dao;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;

public class UserDAO{
	private static SqlSessionFactory ssf;
	static{
		try{
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}
	
	//ȸ������ - �Ϸ�
	public static void insertUser(UserDTO d){
		SqlSession session=ssf.openSession(true);
		session.insert("insertUser",d);
		session.close();
	}
	
	//ȸ������ (�̸��� �ߺ�Ȯ��)
	public static int confirmEmail(String email){
		 SqlSession session=ssf.openSession();
		 int cnt=session.selectOne("confirmEmail",email);
		 session.close();
		 return cnt;
	}
	
	//�α��� �κ� (emailCheck, pwdCheck)
	public static int emailCheck(String email){
		SqlSession session=ssf.openSession();
		int cnt=session.selectOne("emailCheck",email);
		session.close();
		return cnt;
	}
	//�α��� ���̵�, ��й�ȣ üũ
	public static UserDTO logCheck(String email){
		SqlSession session=ssf.openSession();
		UserDTO d = session.selectOne("logCheck",email);
		session.close();
		return d;
	}
	
	//��й�ȣ ã�� 
	public static String searchPwd(UserDTO d){
		SqlSession session=ssf.openSession();
		String dbPwd = session.selectOne("searchPwd",d);
		session.close();
		return dbPwd;
	}
	
	//DB��й�ȣ �������� - ��й�ȣ �����
	public static String getPwd(String email){
		SqlSession session=ssf.openSession();
		String dbPwd=session.selectOne("getPwd", email);
		session.close();
		return dbPwd;
	}
	
	//ȸ������ ����
	public static void changeUserInfo(UserDTO d){
		SqlSession session=ssf.openSession(true);
		session.update("changeUserInfo",d);
		session.close();
	}
}