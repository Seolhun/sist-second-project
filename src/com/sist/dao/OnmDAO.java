
package com.sist.dao;

import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;

public class OnmDAO {
	private static SqlSessionFactory ssf;

	static {
		try {
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}


	public static int listCreate(int userno) {
		SqlSession session = ssf.openSession(true);
		session.insert("listInsert", userno);
		int result = session.selectOne("getListNo");
		session.close();
		return result;
	}

	public static void listAdd(ListVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("listAdd", vo);
		session.close();
	}

	public static List<ListVO> listSearch(int userno) {
		SqlSession session = ssf.openSession();
		List<ListVO> list = new ArrayList<ListVO>();
		list = session.selectList("listSearch", userno);
		session.close();
		return list;
	}

	public static void listDelete(int no) {
		SqlSession session = ssf.openSession(true);
		session.delete("listDelete", no);
		session.close();
	}

	public static void dragEvent(ListVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("dragEvent", vo);
		session.close();
	}

	public static int createCard(CardVO vo) {
		SqlSession session = ssf.openSession(true);
		session.insert("createCard", vo);
		int cnt = session.selectOne("getCardNo");
		session.close();
		return cnt;
	}

	public static CardVO cardInfo(int no) {
		SqlSession session = ssf.openSession();
		CardVO vo = session.selectOne("getCardInfo", no);
		session.close();
		return vo;
	}

	// 카드 삭제
	public static void cardDelete(int no) {
		SqlSession session = ssf.openSession(true);
		session.delete("deleteAllComm", no);
		session.delete("cardDelete", no);
		session.close();
	}

	// 카드 업데이트
	public static void cardUpdate(ListVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("cardUpdate", vo);
		session.close();
	}

	public static List<CardVO> loadCard(int userno) {
		SqlSession session = ssf.openSession();
		List<CardVO> list = new ArrayList<CardVO>();
		list = session.selectList("loadCard", userno);
		session.close();
		return list;
	}

	public static void cardDateUpdate(CardVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("cardDateUpdate", vo);
		session.close();
	}
	
	public static void cardDateDelete(int no) {
		SqlSession session = ssf.openSession(true);
		session.update("cardDateDelete", no);
		session.close();
	}

	public static void cardLabelUpdate(CardVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("cardLabelUpdate", vo);
		session.close();
	}
	
	public static void cardLabelDelete(int cardno) {
		SqlSession session = ssf.openSession(true);
		session.update("cardLabelDelete", cardno);
		session.close();
	}

	public static void cardContentUpdate(CardVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("cardContentUpdate", vo);
		session.close();
	}

	public static void cardPriorityUpdate(CardVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("cardPriorityUpdate", vo);
		session.close();
	}
	
	public static void cardPriorityDelete(int no) {
		SqlSession session = ssf.openSession(true);
		session.update("cardPriorityDelete", no);
		session.close();
	}

	public static void cardOpenUpdate(CardVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("cardOpenUpdate", vo);
		session.close();
	}

	public static void dateDrag(CardVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("dateDrag", vo);
		session.close();
	}

	public static void mapInsert(CommVO vo) {
		SqlSession session = ssf.openSession(true);
		session.insert("mapInsert", vo);
		session.close();
	}

	public static void mapUpdate(CommVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("mapUpdate", vo);
		session.close();
	}

	public static int countMap(int cardno) {
		SqlSession session = ssf.openSession();
		int res = session.selectOne("countMap", cardno);
		session.close();
		return res;
	}

	public static String loadMap(int cardno) {
		SqlSession session = ssf.openSession();
		String res = session.selectOne("loadMap", cardno);
		session.close();
		return res;
	}

	public static void mapDelete(int cardno) {
		SqlSession session = ssf.openSession(true);
		session.delete("mapDelete", cardno);
		session.close();
	}

	public static void checkListCreate(CommVO vo) {
		SqlSession session = ssf.openSession(true);
		session.insert("checkListCreate", vo);
		session.close();
	}

	public static int checkListUpdate(CommVO vo) {
		SqlSession session = ssf.openSession(true);
		session.insert("checkListUpdate", vo);
		int res = session.selectOne("getCheckListNo");
		session.close();
		return res;
	}

	public static void checkListDelete(int cardno) {
		SqlSession session = ssf.openSession(true);
		session.delete("checkListDelete", cardno);
		session.close();
	}

	public static String loadCheckListTitle(int cardno) {
		SqlSession session = ssf.openSession();
		String res = session.selectOne("loadCheckListTitle", cardno);
		session.close();
		return res;
	}

	public static List<CommVO> loadCheckList(int cardno) {
		SqlSession session = ssf.openSession();
		List<CommVO> res = session.selectList("loadCheckList", cardno);
		session.close();
		return res;
	}

	public static void checkListChange(CommVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("checkListChange", vo);
		session.close();
	}

	public static int commentCreate(CommVO vo) {
		SqlSession session = ssf.openSession(true);
		session.insert("commentCreate", vo);
		int res = session.selectOne("getCheckListNo");
		session.close();
		return res;
	}

	public static void deleteComm(int no) {
		SqlSession session = ssf.openSession(true);
		session.delete("deleteComm", no);
		session.close();
	}

	public static List<CommVO> loadCommList(int cardno) {
		SqlSession session = ssf.openSession();
		List<CommVO> res = session.selectList("loadCommList", cardno);
		session.close();
		return res;
	}

	public static void hashInsert(CommVO vo) {
		SqlSession session = ssf.openSession(true);
		session.insert("hashInsert", vo);
		session.close();
	}

	public static void hashUpdate(CommVO vo) {
		SqlSession session = ssf.openSession(true);
		session.insert("hashUpdate", vo);
		session.close();
	}

	public static String loadHash(int no) {
		SqlSession session = ssf.openSession();
		String res = session.selectOne("loadHash", no);
		session.close();
		return res;
	}

	public static int countHash(int no) {
		SqlSession session = ssf.openSession();
		int res = session.selectOne("countHash", no);
		session.close();
		return res;
	}

	public static int countFile(CommVO vo) {
		SqlSession session = ssf.openSession(true);
		int res = session.selectOne("countFile", vo);
		session.close();
		return res;
	}

	public static void fileInsert(CommVO vo) {
		SqlSession session = ssf.openSession(true);
		session.insert("fileInsert", vo);
		session.close();
	}

	public static void fileUpdate(CommVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("fileUpdate", vo);
		session.close();
	}

	public static void fileDelete(int cardno) {
		SqlSession session = ssf.openSession(true);
		session.insert("fileDelete", cardno);
		session.close();
	}

	public static String loadFile(int no) {
		SqlSession session = ssf.openSession();
		String res = session.selectOne("loadFile", no);
		session.close();
		return res;
	}

	// 검색기능
	public static List<SearchVO> searchMyPlan(Map map) {
		SqlSession session = ssf.openSession();
		List<SearchVO> list = session.selectList("searchMyPlan", map);
		session.close();
		return list;
	}

	public static List<SearchVO> searchAllPlan(Map map) {
		SqlSession session = ssf.openSession();
		List<SearchVO> list = session.selectList("searchAllPlan", map);
		session.close();
		return list;
	}

	public static List<SearchVO> searchHashPlan(Map map) {
		SqlSession session = ssf.openSession();
		List<SearchVO> list = session.selectList("searchHashPlan", map);
		session.close();
		return list;
	}
	
	  public static void cardListno(CardVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("cardListno", vo);
	    session.close();
	  }

	  public static void cardListnoUpdate(CardVO vo) {
		SqlSession session = ssf.openSession(true);
		session.update("cardListnoUpdate", vo);
		System.out.println("들렀다가용~");
	    session.close();
	  }

	  public static void listCardDelete(int listno) {
	    SqlSession session = ssf.openSession(true);
	    session.delete("listCardDelete", listno);
	    session.close();
	  }
	
	  public static String searchHashTag(int no){
		  SqlSession session = ssf.openSession();
		  String res = session.selectOne("searchHashTag",no);
		  session.close();
		  return res;
	  }
}
