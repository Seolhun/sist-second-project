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
  //로그인 시 액션
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
        // 로그인 성공시 로그인을 세션으로 보낸다.
        session.setAttribute("logNickname", d.getNickname());
        session.setAttribute("logEmail", d.getEmail());
        session.setAttribute("logUserno", d.getNo());
        //로그인 성공시 쿠키값을 넘긴다.
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
    // 로그인 시 로그인 종류를 보낸다
    res.getWriter().write(String.valueOf(LogCheck));
    return "ajax";
  }
  
  //로그인 모달 실행 시 쿠키값 가져오기
  @RequestMapping("emailSaveGet.do")
  public String emailSaveGet(HttpServletRequest req, HttpServletResponse res) throws Exception {
    Cookie[] cookies = req.getCookies();
      String emailSave=cookies[((int)cookies.length-1)].getValue();
      res.getWriter().write(String.valueOf(emailSave));
    return "ajax";
  }
  
  //로그아웃 하기
  @RequestMapping("logOutOK.do")
  public String logOutOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
     req.setCharacterEncoding("UTF-8");
     HttpSession session=req.getSession();
     session.removeAttribute("logNickname");
     session.removeAttribute("logUserno");
     
     //username 으로 들어온 session을 제거
    // res.sendRedirect("intro.jsp");
     return "intro";
  }
  
  // 아이디 저장 쿠키 만들기
  @RequestMapping("emailSaveOK.do")
  public String emailSaveOK(HttpServletRequest req, HttpServletResponse res) throws Exception {
    String email = req.getParameter("logEmail");
    String logSave = req.getParameter("logSave");
    String emailSave = "";
    System.out.println("email:" + email);
    try {
      if (logSave.equals("1")) {
        System.out.println("난 If다");
        Cookie logEmailCookie = new Cookie("logEmailCookie", email);
        // 쿠키를 생성한다. 이름:testCookie, 값 : Hello Cookie
        logEmailCookie.setMaxAge(365 * 24 * 60 * 60);
        // 쿠키의 유효기간을 365일로 설정한다.
        logEmailCookie.setPath("/");
        // 쿠키의 유효한 디렉토리를 "/" 로 설정한다.
        res.addCookie(logEmailCookie);
        // 클라이언트 응답에 쿠키를 추가한다.
      } 
    } catch (Exception e) {
      System.out.println("난 Catch다");
      Cookie logEmailCookie = new Cookie("logEmailCookie", "");
      // 쿠키를 생성한다. 이름:testCookie, 값 : Hello Cookie
      logEmailCookie.setMaxAge(365 * 24 * 60 * 60);
      // 쿠키의 유효기간을 365일로 설정한다.
      logEmailCookie.setPath("/");
      // 쿠키의 유효한 디렉토리를 "/" 로 설정한다.
      res.addCookie(logEmailCookie);
      // 클라이언트 응답에 쿠키를 추가한다.
    }
    Cookie[] cookies = req.getCookies();
    System.out.println("Cookies 마지막번호 : "+((int)cookies.length-1));
    
    emailSave = cookies[((int)cookies.length-1)].getValue();
    res.getWriter().write(String.valueOf(emailSave));

    return "ajax";
  }
  
  //여분
  @RequestMapping("loginOK2.do")
  public String loginOK2(HttpServletRequest req, HttpServletResponse res) throws Exception {
    return "ajax";
  }
}