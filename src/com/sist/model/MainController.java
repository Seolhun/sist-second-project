package com.sist.model;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.*;

@Controller("mainController")
public class MainController {
	@RequestMapping("intro.do")
	public String intro(HttpServletRequest req, HttpServletResponse res) throws Exception {
		return "intro";
	}

	@RequestMapping("onm.do")
	public String onm(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		List<ListVO> list = new ArrayList<ListVO>();
		// System.out.println("userno" + (int)
		// session.getAttribute("logUserno"));
		list = OnmDAO.listSearch((int) session.getAttribute("logUserno"));
		for (ListVO vo : list) {
			String tmp = vo.getHtml();
			vo.setHtml(HashingHTML.htmlTostr(tmp));
			// System.out.println(vo.getHtml());
		}
    
		List<CardVO> clist = new ArrayList<CardVO>();
		clist = OnmDAO.loadCard((int) session.getAttribute("logUserno"));
		req.setAttribute("clist", clist);
		req.setAttribute("list", list);
		return "onm";
	}

	@RequestMapping("detail.do")
	public String detail(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		int sno = (int) session.getAttribute("logUserno");
		String strno = req.getParameter("no");
		int no = Integer.parseInt(strno.substring(4));
		String owner="";
		CardVO vo = OnmDAO.cardInfo(no);
		if(vo.getUserno()==sno){
			owner = "show";
		}else{
			owner="hide";
		}
		if(vo.getContent()!=null){
			String data = vo.getContent();
			vo.setContent(HashingHTML.htmlTostr(data));
		}
		String map = OnmDAO.loadMap(no);
		String checkTitle = OnmDAO.loadCheckListTitle(no);
		String file = OnmDAO.loadFile(no);
		System.out.println(file);
		List<CommVO> checkList = OnmDAO.loadCheckList(no);
		List<CommVO> commList = OnmDAO.loadCommList(no);
		List<CommentDTO> comment = new ArrayList<CommentDTO>();
		for(CommVO cvo : commList){
			CommentDTO c = new CommentDTO();
			c.setNo(cvo.getNo());
			StringTokenizer stn = new StringTokenizer(cvo.getCardcomm(), "/");
			c.setUser(stn.nextToken());
			c.setTime(stn.nextToken());
			c.setContent(stn.nextToken());
			comment.add(c);
		}
		String beHash = OnmDAO.loadHash(no);
		List<String> hashList = new ArrayList<String>();
		//System.out.println(beHash);
		if(beHash!=null){
  		StringTokenizer st = new StringTokenizer(beHash, ",");
  		//System.out.println("count"+st.countTokens());
	      while(st.hasMoreTokens()){
	        hashList.add(st.nextToken());
	      }
		}
		//System.out.println(hashList.size());
		req.setAttribute("card", vo);
		req.setAttribute("map", map);
		req.setAttribute("checkTitle", checkTitle);
		req.setAttribute("checkList", checkList);
		req.setAttribute("commList", comment);
		req.setAttribute("hashList", hashList);
		req.setAttribute("file", file);
		req.setAttribute("own", owner);
		return "detail";
	}
}
