package com.sist.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.*;

@Controller("listController")
public class ListController {
	@RequestMapping("listAdd.do")
	public String listAdd(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		req.setCharacterEncoding("UTF-8");
		String title = req.getParameter("title");
		String data = req.getParameter("html");
		String no = req.getParameter("no");
		String aData = HashingHTML.strTohtml(data);
		ListVO vo = new ListVO();
		vo.setNo(Integer.parseInt(no));
		vo.setHtml(aData);
		vo.setTitle(title);
		vo.setUserno((int) session.getAttribute("logUserno"));
		OnmDAO.listAdd(vo);
		// res.setCharacterEncoding("UTF-8");
		// res.getWriter().write(tot);

		return "ajax";
	}
	
	@RequestMapping("listDelete.do")
	public String listDelete(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String id = req.getParameter("id");
		id = id.substring(4);
		OnmDAO.listDelete(Integer.parseInt(id));
		OnmDAO.listCardDelete(Integer.parseInt(id));
		
		
		return "ajax";
	}
	
	@RequestMapping("getListNo.do")
	public String getListNo(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		int result = OnmDAO.listCreate((int) session.getAttribute("logUserno"));
	    res.getWriter().write(String.valueOf(result));

		return "ajax";
	}
	
	@RequestMapping("dragEvent.do")
	public String dragEvent(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session=req.getSession();
		req.setCharacterEncoding("UTF-8");
		String data = req.getParameter("html");
		String listno = req.getParameter("listno");
		int no = Integer.parseInt(listno.substring(4));
		System.out.println("dragevent userno : "+no);
		System.out.println(data);
		String aData = HashingHTML.strTohtml(data);
		//System.out.println(aData);
		
		ListVO vo = new ListVO();
		vo.setHtml(aData);
		vo.setUserno((int)session.getAttribute("logUserno"));
		vo.setNo(no);
		OnmDAO.dragEvent(vo);
		
		/*OnmDAO.dragEvent(no);*/
		//res.setCharacterEncoding("UTF-8");
		//res.getWriter().write(tot);
		
		return "ajax";
	}
	
	@RequestMapping("dragEvent2.do")
	public String dragEvent2(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session=req.getSession();
		req.setCharacterEncoding("UTF-8");
		String data = req.getParameter("html");
		String listno = req.getParameter("listno");
		String cardno = req.getParameter("cardno");
		int no = Integer.parseInt(listno.substring(4));
		System.out.println("dragevent userno : "+no);
		System.out.println(data);
		System.out.println(cardno);
		String aData = HashingHTML.strTohtml(data);
		//System.out.println(aData);
		
		ListVO vo = new ListVO();
		vo.setHtml(aData);
		vo.setUserno((int)session.getAttribute("logUserno"));
		vo.setNo(no);
		OnmDAO.dragEvent(vo);
		
		CardVO cvo = new CardVO();
		cvo.setNo(Integer.parseInt(cardno));
		cvo.setListno(no);
		OnmDAO.cardListno(cvo);
		
		/*OnmDAO.dragEvent(no);*/
		//res.setCharacterEncoding("UTF-8");
		//res.getWriter().write(tot);
		
		return "ajax";
	}
	
	//검색기능
	@RequestMapping("planSearch.do")
	public String planSearch(HttpServletRequest req, HttpServletResponse res) throws Exception{
		String inputSearch = req.getParameter("inputSearch");
		String searchRadios = req.getParameter("searchRadios");
		HttpSession session=req.getSession();
		/*String logNickname=(String)session.getAttribute("logNickname");
		System.out.println(logNickname);*/
		int logUserNo = (int)session.getAttribute("logUserno");
		System.out.println(logUserNo);
		System.out.println(inputSearch);
		System.out.println(searchRadios);		
		Map map=new HashMap();
		map.put("inputSearch", inputSearch);
		map.put("logUserNo", logUserNo);
		if(searchRadios.equals("1")){ //내 일정
			 List<SearchVO> list = OnmDAO.searchMyPlan(map);
			 for(SearchVO vo : list){
				String data = vo.getContent();
				if(data!=null){
					data = HashingHTML.htmlToSearch(data);
					vo.setContent(data);
				}else{
					vo.setCardcomm(null);
				}
				String data2= OnmDAO.searchHashTag(vo.getNo());
				if(data2!=null){
					data2= data2.substring(0, data2.length()<21?data2.length()-1:20);
					vo.setCardcomm(data2);
				} else {
					vo.setCardcomm(null);
				}
				vo.setContent(data);
			 }
			 req.setAttribute("list", list);			 
			 
		} else if(searchRadios.equals("2")){ //모든 일정
			 List<SearchVO> list = OnmDAO.searchAllPlan(map);
			 for(SearchVO vo : list){
					String data = vo.getContent();
					if(data!=null){
						data = HashingHTML.htmlToSearch(data);
						vo.setContent(data);
					}else{
						vo.setCardcomm(null);
					}
					String data2= OnmDAO.searchHashTag(vo.getNo());
					if(data2!=null){
						data2= data2.substring(0, data2.length()<21?data2.length()-1:20);
						vo.setCardcomm(data2);
					} else {
						vo.setCardcomm(null);
					}
					vo.setContent(data);
				 }
			 req.setAttribute("list", list);	
			 
		} else{//해시태그
			System.out.println("라디오스3");
			 List<SearchVO> list = OnmDAO.searchHashPlan(map);
			 for(SearchVO vo : list){
				String data = HashingHTML.htmlToSearch(vo.getContent());
				String data2= vo.getCardcomm();
				if(data2!=null){
					data2= data2.substring(0, vo.getCardcomm().length()<21?vo.getCardcomm().length()-1:20);
					vo.setCardcomm(data2);
				} else {
					vo.setCardcomm(null);
				}
				vo.setContent(data);
			 }
			 req.setAttribute("list", list);				
		}
		return "search";
	}
	
	@RequestMapping("sendMail.do")
	public String sendMail(HttpServletRequest req, HttpServletResponse res) throws Exception{
		String toMail = req.getParameter("toMail");
		String planSubject = req.getParameter("planSubject");
		String sdateDiv = req.getParameter("sdateDiv");
		String edateDiv = req.getParameter("edateDiv");
		String planContent = req.getParameter("planContent");	
		System.out.println(toMail);
		System.out.println(planSubject);
		System.out.println(sdateDiv);
		System.out.println(edateDiv);
		System.out.println(planContent);
		String host = "smtp.gmail.com";
		String to = toMail;
		String from = "onm10114@gmail.com";
		String password = "qawsedrf@";
		String from_name = "오내미 운영자";

		Properties props = new Properties();
		props.put("mail.smtps.auth", "true");
		Session session = Session.getInstance(props);
		
		try {
			MimeMessage msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(from_name, "UTF-8", "B")));
			msg.setSubject("오내미 일정 메일발송입니다.");
			msg.setContent(
					"<table cellpadding='10' cellspacing='4' border='1' background='http://image.shutterstock.com/z/stock-photo-architect-constructor-designer-background-illustration-109023893.jpg' style='background-repeat: no-repeat'>"+
					"<tr style='width: auto'>"+
						"<td style='max-width: auto; min-width: 100px' align='center' bgcolor='white'><font color='black' size='5px'><strong>제목</strong></font></td>"+
						"<td style='max-width: auto; min-width: 400px' align='center' bgcolor='white'><font color='black' size='5px'>'<strong>"+planSubject.trim()+"</strong>'</font></td>"+
						"<td style='max-width: auto; min-width: 100px' align='center' bgcolor='white'><font color='black' size='5px'><strong>기간</strong></font></td>"+
						"<td style='max-width: auto; min-width: 300px' align='center' bgcolor='white'><font color='black' size='5px'>'<strong>"+sdateDiv.trim()+" ~ "+edateDiv.trim()+"</strong></font></td>"+
					"</tr>"+
					"<tr>"+
						"<td style='width: 100px' align='center'><font color='black'	size='5px'><strong>내용</strong></font></td>"+
						"<td colspan='3' style='align: left'><font color='black'>'"+planContent.trim()+"'</font></td>"+
					"</tr>"+
				"</table>", "text/html;charset=" + "EUC-KR");
			InternetAddress address = new InternetAddress(to);
			msg.setRecipient(Message.RecipientType.TO, address);
			
			Transport transport = session.getTransport("smtps");
			transport.connect(host, from, password);
			transport.sendMessage(msg, msg.getAllRecipients());
			Transport.send(msg);
			transport.close();
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
		return "ajax";
	}
}
