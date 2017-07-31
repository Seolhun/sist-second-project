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
	// �̸��� �ߺ�Ȯ�� �޼ҵ�
	@RequestMapping("emailCheckOK.do")
	public String emailCehckOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		String email = req.getParameter("email");
		int result = UserDAO.confirmEmail(email);
		//����� ������
		res.getWriter().write(String.valueOf(result));
		return "ajax";

	}
	// �̸��� ������ȣ Ȯ�ι�ư
	@RequestMapping("checkConfirm.do")
	public String checkConfirm(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		String inputCheckNum=req.getParameter("inputCheckNum"); 
		//ȸ������ ������ȣ �Է°� ��������
		session2=req.getSession(); 
		Integer str=(Integer)session2.getAttribute("checkNum"); 
		//�̸��� ������ȣ �����⿡���� Session �� ��������
		if(inputCheckNum.equals(str.toString())){
			String signPass="ok";
			res.getWriter().write(String.valueOf(signPass));
		}
		System.out.println("session �� :"+str);
		
		return "ajax";
	}

	// ȸ������ �޼ҵ�
	@RequestMapping("joinOK.do")
	public String joinOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("UTF-8");
		String email = req.getParameter("email");
		String pwd = req.getParameter("pwd");
		String nickname = req.getParameter("nickname");

		UserDTO d = new UserDTO();

		// ȸ������ ������ �ѱ��
		d.setEmail(email);
		d.setPwd(pwd);
		d.setNickname(nickname);

		// DB�����ؼ� insertUser �����Ű��
		UserDAO.insertUser(d);

		return "ajax";
	}

	// ������ȣ �̸��� ������
	@RequestMapping("emailCheckNumSend.do")
	public String emailCheckNumSend(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String email = req.getParameter("email");
		String host = "smtp.gmail.com";
		String to = email;
		String from = "onm10114@gmail.com";
		String password = "qawsedrf@";
		String from_name = "������ ���";

		Properties props = new Properties();
		props.put("mail.smtps.auth", "true");
		Session session = Session.getInstance(props);
		
		try {
			MimeMessage msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(from_name, "UTF-8", "B")));
			msg.setSubject("������ ������ȣ");
			int checkNum=1;
			while (true) {
				checkNum = ((int) (Math.random() * 1000000));
				if (checkNum > 99999) {
					break;
				}
			}
			
			session2=req.getSession();
			session2.setAttribute("checkNum", checkNum);
			msg.setContent("<h1>������ȣ : "+checkNum+"</h1>", "text/html;charset=" + "EUC-KR");
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
	
	//��й�ȣ ã��
	@RequestMapping("searchPwdOK.do")
	public String searchPwdOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String searchEmail = req.getParameter("searchEmail");
		String searchNickname = req.getParameter("searchNickname");
		String host = "smtp.gmail.com";
		String to = searchEmail;
		String from = "onm10114@gmail.com";
		String password = "qawsedrf@";
		String from_name = "������ ���";
		
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
				msg.setSubject("������ ��й�ȣ�Դϴ�.");

				session2=req.getSession();
				session2.setAttribute("dbPwd", dbPwd);
				msg.setContent("<h1>������ �̸��� ��й�ȣ : "+dbPwd+"</h1>", "text/html;charset=" + "EUC-KR");
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
	//ȸ������ �����ϱ�
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
