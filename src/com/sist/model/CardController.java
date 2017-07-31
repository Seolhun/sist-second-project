package com.sist.model;

import java.io.*;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.net.*;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.*;
import com.sun.imageio.spi.InputStreamImageInputStreamSpi;

import java.util.*;

@Controller("cardController")
public class CardController {

	@RequestMapping("createCard.do")
	public String addCard(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		req.setCharacterEncoding("UTF-8");
		String title = req.getParameter("title");

		CardVO vo = new CardVO();
		vo.setTitle(title);
		vo.setUserno((int) session.getAttribute("logUserno"));
		int cnt = OnmDAO.createCard(vo);
		res.getWriter().write(String.valueOf(cnt));
		return "ajax";
	}
	
  //  카드 삭제
  @RequestMapping("cardDelete.do")
  public String cardDelete(HttpServletRequest req, HttpServletResponse res) throws Exception {
     String id = req.getParameter("id");
     id = id.substring(4);
     OnmDAO.cardDelete(Integer.parseInt(id));
     return "ajax";
  }
  
  // 카드 업데이트
  @RequestMapping("cardUpdate.do")
  public String cardUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {
     HttpSession session=req.getSession();
     req.setCharacterEncoding("UTF-8");
     String data = req.getParameter("html");
     String listno = req.getParameter("listno");
     int no = Integer.parseInt(listno.substring(4));
     String aData = HashingHTML.strTohtml(data);
     
     ListVO vo = new ListVO();
     vo.setHtml(aData);
     //vo.setTitle(aData);
     //vo.setUserno((int)session.getAttribute("logUserno"));
     vo.setNo(no);
     OnmDAO.cardUpdate(vo);
     /*OnmDAO.dragEvent(no);*/
     //res.setCharacterEncoding("UTF-8");
     //res.getWriter().write(tot);
     return "ajax";
  }
  
  @RequestMapping("cardListnoUpdate.do")
  public String cardListnoUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {
     HttpSession session=req.getSession();
     req.setCharacterEncoding("UTF-8");
     String cardno = req.getParameter("cardno");
     String listno = req.getParameter("listno");
     int lno = Integer.parseInt(listno.substring(4));
     int cno = Integer.parseInt(cardno.substring(4));
     CardVO vo = new CardVO();
     vo.setNo(cno);
     vo.setListno(lno);
     OnmDAO.cardListnoUpdate(vo);
     System.out.println(cno+","+lno);
     return "ajax";
  }
  
  

	@RequestMapping("dateUpdate.do")
	public String dateUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CardVO vo = new CardVO();
		String no = req.getParameter("no");
		String start = req.getParameter("start");
		String end = req.getParameter("end");
		vo.setNo(Integer.parseInt(no));
		vo.setStartdate(start);
		vo.setEnddate(end);
		OnmDAO.cardDateUpdate(vo);
		return "ajax";
	}

	@RequestMapping("dateDelete.do")
	public String dateDelete(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String no = req.getParameter("no");

		OnmDAO.cardDateDelete(Integer.parseInt(no));
		return "ajax";
	}

	@RequestMapping("labelUpdate.do")
	public String labelUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CardVO vo = new CardVO();
		String no = req.getParameter("no");
		String label = req.getParameter("label");

		vo.setNo(Integer.parseInt(no));
		vo.setLabel(label);
		OnmDAO.cardLabelUpdate(vo);

		return "ajax";
	}

	@RequestMapping("labelDelete.do")
	public String labelDelete(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CardVO vo = new CardVO();
		String no = req.getParameter("no");

		OnmDAO.cardLabelDelete(Integer.parseInt(no));

		return "ajax";
	}

	@RequestMapping("dateDrag.do")
	public String dateDrag(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String startdate = req.getParameter("startdate");
		String enddate = req.getParameter("enddate");
		String no = req.getParameter("no");
		System.out.println("yes:" + no);
		CardVO vo = new CardVO();
		vo.setStartdate(startdate);
		vo.setEnddate(enddate);
		vo.setNo(Integer.parseInt(no));
		OnmDAO.dateDrag(vo);

		return "ajax";
	}

	@RequestMapping("contentUpdate.do")
	public String contentUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CardVO vo = new CardVO();
		String no = req.getParameter("no");
		String content = req.getParameter("content");
		vo.setNo(Integer.parseInt(no));
		String aData = HashingHTML.strTohtml(content);
		vo.setContent(aData);
		OnmDAO.cardContentUpdate(vo);

		return "ajax";
	}

	@RequestMapping("priorityUpdate.do")
	public String priorityUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CardVO vo = new CardVO();
		String no = req.getParameter("no");
		String op1 = req.getParameter("op1");
		String op2 = req.getParameter("op2");
		vo.setNo(Integer.parseInt(no));
		vo.setPriority1(op1);
		vo.setPriority2(op2);
		OnmDAO.cardPriorityUpdate(vo);

		return "ajax";
	}

	@RequestMapping("priorityDelete.do")
	public String priorityDelete(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String no = req.getParameter("no");
		OnmDAO.cardPriorityDelete(Integer.parseInt(no));

		return "ajax";
	}

	@RequestMapping("openUpdate.do")
	public String openUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CardVO vo = new CardVO();
		String no = req.getParameter("no");
		String open = req.getParameter("open");

		vo.setNo(Integer.parseInt(no));
		vo.setDone(open);

		OnmDAO.cardOpenUpdate(vo);

		return "ajax";

	}

	@RequestMapping("mapUpdate.do")
	public String mapUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {
		System.out.println("tttttt");
		CommVO vo = new CommVO();
		String cardno = req.getParameter("no");
		String loc = req.getParameter("loc");
		System.out.println("위치:" + loc);
		vo.setCardcomm(loc);
		vo.setCardno(Integer.parseInt(cardno));
		vo.setFunction(1);
		int result = OnmDAO.countMap(Integer.parseInt(cardno));
		if (result == 0) {
			OnmDAO.mapInsert(vo);
		} else {
			OnmDAO.mapUpdate(vo);
		}

		return "ajax";
	}

	@RequestMapping("mapDelete.do")
	public String mapDelete(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String cardno = req.getParameter("no");
		OnmDAO.mapDelete(Integer.parseInt(cardno));
		return "ajax";
	}

	@RequestMapping("checkCreate.do")
	public String checkCreate(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CommVO vo = new CommVO();
		String cardno = req.getParameter("no");
		String title = req.getParameter("title");
		vo.setCardcomm(title);
		vo.setCardno(Integer.parseInt(cardno));
		OnmDAO.checkListCreate(vo);

		return "ajax";
	}

	@RequestMapping("checkListUpdate.do")
	public String checkListUpdate(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CommVO vo = new CommVO();
		String cardno = req.getParameter("no");
		String title = req.getParameter("msg");
		vo.setCardcomm(title);
		vo.setCardno(Integer.parseInt(cardno));
		int no = OnmDAO.checkListUpdate(vo);
		res.getWriter().write(String.valueOf(no));
		return "ajax";
	}

	@RequestMapping("checkListDelete.do")
	public String checkListDelete(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String cardno = req.getParameter("no");
		OnmDAO.checkListDelete(Integer.parseInt(cardno));
		return "ajax";
	}

	@RequestMapping("checkListChange.do")
	public String checkListChange(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CommVO vo = new CommVO();
		String id = req.getParameter("id");
		String func = req.getParameter("function");
		vo.setNo(Integer.parseInt(id));
		vo.setFunction(Integer.parseInt(func));
		OnmDAO.checkListChange(vo);

		return "ajax";
	}

	@RequestMapping("fileUpload.do")
	public String fileUpload(HttpServletRequest req, HttpServletResponse res) throws Exception {

		int maxPostSize = 10 * 1024 * 1024; // 10MB
		MultipartRequest multi = new MultipartRequest(req, "c:\\download", maxPostSize, "utf-8");

		Enumeration formNames = multi.getFileNames(); // 폼의 이름 반환
		String fileInput = "";
		String fileName = "";
		String type = "";
		File fileObj = null;
		String originFileName = "";
		String fileExtend = "";
		String fileSize = "";

		while (formNames.hasMoreElements()) {
			fileInput = (String) formNames.nextElement(); // 파일인풋 이름
			fileName = multi.getFilesystemName(fileInput); // 파일명
			if (fileName != null) {
				type = multi.getContentType(fileInput); // 콘텐트타입
				fileObj = multi.getFile(fileInput); // 파일객체
				originFileName = multi.getOriginalFileName(fileInput); // 초기 파일명
				fileExtend = fileName.substring(fileName.lastIndexOf(".") + 1); // 파일
																				// 확장자
				fileSize = String.valueOf(fileObj.length()); // 파일크기
			}
		}
		System.out.println(originFileName);
		res.getWriter().write(originFileName);
		return "ajax";
	}

	@RequestMapping("fileInsert.do")
	public String fileInsert(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CommVO vo = new CommVO();
		String no = req.getParameter("no");
		String fileName = req.getParameter("file");
		vo.setCardcomm(fileName);
		vo.setCardno(Integer.parseInt(no));
		int result = OnmDAO.countFile(vo);
		System.out.println(result);
		if (result == 0) {
			OnmDAO.fileInsert(vo);
		} else {
			OnmDAO.fileUpdate(vo);
		}
		return "ajax";
	}

	@RequestMapping("fileDelete.do")
	public String fileDelete(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String no = req.getParameter("no");
		OnmDAO.fileDelete(Integer.parseInt(no));
		return "ajax";
	}

	@RequestMapping("filedownload.do")
	public String filedownload(HttpServletRequest req, HttpServletResponse res) throws Exception {
		try {
			String filename = req.getParameter("name");
			File file = new File("c:\\download\\" + filename);
			BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));
			BufferedOutputStream bos = new BufferedOutputStream(res.getOutputStream());
			// InputStream is = new FileInputStream(file);

			res.setContentType("application/octet-stream");
			res.setHeader("Content-Disposition", "attachment; filename=\"" + file.getName() + "\"");
			// OutputStream os = res.getOutputStream();
			byte[] buffer = new byte[1024];
			int len;
			while ((len = bis.read(buffer)) != -1) {
				bos.write(buffer, 0, len);
			}
			bos.flush();
			bos.close();
			bis.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return "ajax";
	}

	@RequestMapping("commentAdd.do")
	public String commentAdd(HttpServletRequest req, HttpServletResponse res) throws Exception {
		CommVO vo = new CommVO();
		String no = req.getParameter("no");
		String comm = req.getParameter("comm");
		System.out.println("comment : " + comm);
		vo.setCardno(Integer.parseInt(no));
		vo.setCardcomm(comm);
		int result = OnmDAO.commentCreate(vo);
		res.getWriter().write(String.valueOf(result));
		return "ajax";
	}

	@RequestMapping("commentDelete.do")
	public String commentDelete(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String no = req.getParameter("no");
		System.out.println("deleteno:" + no);
		no = no.substring(4);
		OnmDAO.deleteComm(Integer.parseInt(no));
		return "ajax";
	}

	@RequestMapping("commentNick.do")
	public String commentNick(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		req.setCharacterEncoding("UTF-8");
		res.setCharacterEncoding("UTF-8");
		String usernick = (String) (session.getAttribute("logNickname"));
		res.getWriter().write(usernick);
		return "ajax";
	}

	@RequestMapping("hashInsert.do")
	public String hashInsert(HttpServletRequest req, HttpServletResponse res) throws Exception {

		CommVO vo = new CommVO();
		String cardno = req.getParameter("no");
		String hash = req.getParameter("hash");
		vo.setCardno(Integer.parseInt(cardno));
		vo.setCardcomm(hash);
		int cnt = OnmDAO.countHash(Integer.parseInt(cardno));
		if (cnt == 0) {
			OnmDAO.hashInsert(vo);
		} else {
			OnmDAO.hashUpdate(vo);
		}
		return "ajax";
	}
	/*
	 * @RequestMapping("download.do") public ModelAndView
	 * download(@RequestParam("path")String path,
	 * 
	 * @RequestParam("fileName")String fileName){
	 * 
	 * String fullPath = path + "\\" + fileName;
	 * 
	 * File file = new File(fullPath);
	 * 
	 * return new ModelAndView("download", "downloadFile", file); }
	 */

}
