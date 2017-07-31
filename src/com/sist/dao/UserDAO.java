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
	
	//회원가입 - 완료
	public static void insertUser(UserDTO d){
		SqlSession session=ssf.openSession(true);
		session.insert("insertUser",d);
		session.close();
	}
	
	//회원가입 (이메일 중복확인)
	public static int confirmEmail(String email){
		 SqlSession session=ssf.openSession();
		 int cnt=session.selectOne("confirmEmail",email);
		 session.close();
		 return cnt;
	}
	
	//로그인 부분 (emailCheck, pwdCheck)
	public static int emailCheck(String email){
		SqlSession session=ssf.openSession();
		int cnt=session.selectOne("emailCheck",email);
		session.close();
		return cnt;
	}
	//로그인 아이디, 비밀번호 체크
	public static UserDTO logCheck(String email){
		SqlSession session=ssf.openSession();
		UserDTO d = session.selectOne("logCheck",email);
		session.close();
		return d;
	}
	
	//비밀번호 찾기 
	public static String searchPwd(UserDTO d){
		SqlSession session=ssf.openSession();
		String dbPwd = session.selectOne("searchPwd",d);
		session.close();
		return dbPwd;
	}
	
	//DB비밀번호 가져오기 - 비밀번호 변경용
	public static String getPwd(String email){
		SqlSession session=ssf.openSession();
		String dbPwd=session.selectOne("getPwd", email);
		session.close();
		return dbPwd;
	}
	
	//회원정보 변경
	public static void changeUserInfo(UserDTO d){
		SqlSession session=ssf.openSession(true);
		session.update("changeUserInfo",d);
		session.close();
	}
}