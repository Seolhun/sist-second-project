package com.sist.model;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.UserDAO;
import com.sist.dao.UserDTO;

@Controller("loginController")
public class LoginController {
  //�α��� �� �׼�
  @RequestMapping("loginOK.do")
  public String loginOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
    HttpSession session=req.getSession();
    String email = req.getParameter("logEmail");
    String pwd = req.getParameter("logPwd");
    String emailSave = "";
    String LogCheck = "";
    int result = UserDAO.emailCheck(email);
    UserDTO d = UserDAO.logCheck(email);
    if (result == 0) {
      LogCheck = "noemail";
    } else {        
      if (d.getPwd().equals(pwd)) {
        LogCheck = "ok";
        // �α��� ������ �α����� �������� ������.
        session.setAttribute("logNickname", d.getNickname());
        session.setAttribute("logEmail", d.getEmail());
        session.setAttribute("logUserno", d.getNo());
        //�α��� ������ ��Ű���� �ѱ��.
        Cookie[] cookies = req.getCookies();
        emailSave = cookies[((int)cookies.length-1)].getValue();
        
        res.getWriter().write(String.valueOf(emailSave));
        res.getWriter().write(String.valueOf(LogCheck));
        return "ajax";
      } else {
        LogCheck = "nopwd";
        res.getWriter().write(String.valueOf(LogCheck));
        return "ajax";
      }
    }
    // �α��� �� �α��� ������ ������
    res.getWriter().write(String.valueOf(LogCheck));
    return "ajax";
  }
  
  //�α��� ��� ���� �� ��Ű�� ��������
  @RequestMapping("emailSaveGet.do")
  public String emailSaveGet(HttpServletRequest req, HttpServletResponse res) throws Exception {
    Cookie[] cookies = req.getCookies();
      String emailSave=cookies[((int)cookies.length-1)].getValue();
      res.getWriter().write(String.valueOf(emailSave));
    return "ajax";
  }
  
  //�α׾ƿ� �ϱ�
  @RequestMapping("logOutOK.do")
  public String logOutOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
     req.setCharacterEncoding("UTF-8");
     HttpSession session=req.getSession();
     session.removeAttribute("logNickname");
     session.removeAttribute("logUserno");
     
     //username ���� ���� session�� ����
    // res.sendRedirect("intro.jsp");
     return "intro";
  }
  
  // ���̵� ���� ��Ű �����
  @RequestMapping("emailSaveOK.do")
  public String emailSaveOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
    String email = req.getParameter("logEmail");
    String logSave = req.getParameter("logSave");
    String emailSave = "";
    System.out.println("email:" + email);
    try {
      if (logSave.equals("1")) {
        System.out.println("�� If��");
        Cookie logEmailCookie = new Cookie("logEmailCookie", email);
        // ��Ű�� �����Ѵ�. �̸�:testCookie, �� : Hello Cookie
        logEmailCookie.setMaxAge(365 * 24 * 60 * 60);
        // ��Ű�� ��ȿ�Ⱓ�� 365�Ϸ� �����Ѵ�.
        logEmailCookie.setPath("/");
        // ��Ű�� ��ȿ�� ���丮�� "/" �� �����Ѵ�.
        res.addCookie(logEmailCookie);
        // Ŭ���̾�Ʈ ���信 ��Ű�� �߰��Ѵ�.
      } 
    } catch (Exception e) {
      System.out.println("�� Catch��");
      Cookie logEmailCookie = new Cookie("logEmailCookie", "");
      // ��Ű�� �����Ѵ�. �̸�:testCookie, �� : Hello Cookie
      logEmailCookie.setMaxAge(365 * 24 * 60 * 60);
      // ��Ű�� ��ȿ�Ⱓ�� 365�Ϸ� �����Ѵ�.
      logEmailCookie.setPath("/");
      // ��Ű�� ��ȿ�� ���丮�� "/" �� �����Ѵ�.
      res.addCookie(logEmailCookie);
      // Ŭ���̾�Ʈ ���信 ��Ű�� �߰��Ѵ�.
    }
    Cookie[] cookies = req.getCookies();
    System.out.println("Cookies ��������ȣ : "+((int)cookies.length-1));
    
    emailSave = cookies[((int)cookies.length-1)].getValue();
    res.getWriter().write(String.valueOf(emailSave));

    return "ajax";
  }
  
  //����
  @RequestMapping("loginOK2.do")
  public String loginOK2(HttpServletRequest req, HttpServletResponse res) throws Exception {
    return "ajax";
  }
}