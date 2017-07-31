package com.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.UserDAO;
import com.sist.dao.UserDTO;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
	
@Controller("joinController")
public class JoinController {	
	HttpSession session2;
	// 이메일 중복확인 메소드
	@RequestMapping("emailCheckOK.do")
	public String emailCehckOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		String email = req.getParameter("email");
		int result = UserDAO.confirmEmail(email);
		//결과값 보내기
		res.getWriter().write(String.valueOf(result));
		return "ajax";

	}
	// 이메일 인증번호 확인버튼
	@RequestMapping("checkConfirm.do")
	public String checkConfirm(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		String inputCheckNum=req.getParameter("inputCheckNum"); 
		//회원가입 인증번호 입력값 가져오기
		session2=req.getSession(); 
		Integer str=(Integer)session2.getAttribute("checkNum"); 
		//이메일 인증번호 보내기에서의 Session 값 가져오기
		if(inputCheckNum.equals(str.toString())){
			String signPass="ok";
			res.getWriter().write(String.valueOf(signPass));
		}
		System.out.println("session 값 :"+str);
		
		return "ajax";
	}

	// 회원가입 메소드
	@RequestMapping("joinOK.do")
	public String joinOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		String email = req.getParameter("email");
		String pwd = req.getParameter("pwd");
		String nickname = req.getParameter("nickname");

		UserDTO d = new UserDTO();

		// 회원가입 데이터 넘기기
		d.setEmail(email);
		d.setPwd(pwd);
		d.setNickname(nickname);

		// DB연동해서 insertUser 실행시키기
		UserDAO.insertUser(d);

		return "ajax";
	}

	// 인증번호 이메일 보내기
	@RequestMapping("emailCheckNumSend.do")
	public String emailCheckNumSend(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String email = req.getParameter("email");
		String host = "smtp.gmail.com";
		String to = email;
		String from = "onm10114@gmail.com";
		String password = "qawsedrf@";
		String from_name = "오내미 운영자";

		Properties props = new Properties();
		props.put("mail.smtps.auth", "true");
		Session session = Session.getInstance(props);
		
		try {
			MimeMessage msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(from_name, "UTF-8", "B")));
			msg.setSubject("오내미 인증번호");
			int checkNum=1;
			while (true) {
				checkNum = ((int) (Math.random() * 1000000));
				if (checkNum > 99999) {
					break;
				}
			}
			
			session2=req.getSession();
			session2.setAttribute("checkNum", checkNum);
			msg.setContent("<h1>인증번호 : "+checkNum+"</h1>", "text/html;charset=" + "EUC-KR");
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
	
	//비밀번호 찾기
	@RequestMapping("searchPwdOK.do")
	public String searchPwdOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String searchEmail = req.getParameter("searchEmail");
		String searchNickname = req.getParameter("searchNickname");
		String host = "smtp.gmail.com";
		String to = searchEmail;
		String from = "onm10114@gmail.com";
		String password = "qawsedrf@";
		String from_name = "오내미 운영자";
		
		UserDTO d=new UserDTO();
		d.setEmail(searchEmail);
		d.setNickname(searchNickname);
		
		Properties props = new Properties();
		props.put("mail.smtps.auth", "true");
		Session session = Session.getInstance(props);
		String dbPwd=UserDAO.searchPwd(d);
		if(dbPwd!="" || dbPwd!=null){
			try {
				MimeMessage msg = new MimeMessage(session);
				msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(from_name, "UTF-8", "B")));
				msg.setSubject("오내미 비밀번호입니다.");

				session2=req.getSession();
				session2.setAttribute("dbPwd", dbPwd);
				msg.setContent("<h1>귀하의 이메일 비밀번호 : "+dbPwd+"</h1>", "text/html;charset=" + "EUC-KR");
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
				
		}			
		return "ajax";
	}
	//회원정보 변경하기
	@RequestMapping("changeUserInfoOK.do")
	public String changeUserInfoOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String emailChange = req.getParameter("emailChange");
		String nicknameChange = req.getParameter("nicknameChange");
		String pwdChange = req.getParameter("pwdChange");
		String newPwdChange = req.getParameter("newPwdChange");
		UserDTO d=new UserDTO();
		String dbPwd=UserDAO.getPwd(emailChange);
		if(dbPwd.equals(pwdChange)){
			d.setEmail(emailChange);
			d.setNickname(nicknameChange);
			d.setPwd(newPwdChange);
			UserDAO.changeUserInfo(d);
			return "ajax";
		} else {
			res.getWriter().write(String.valueOf(dbPwd));
		}
		return "ajax";
	}

}
