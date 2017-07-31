<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.*" %>
<%
    request.setCharacterEncoding("EUC-KR");
    String enctype="EUC-KR";
    int size=1024*1024*100;
    String path="c://download";
    MultipartRequest mr=
          new MultipartRequest(request,path,size,enctype,
                new DefaultFileRenamePolicy());

    String filename=mr.getOriginalFileName("upload");

    if(filename==null)
    {
       System.out.println("파일 네임 널");   
    }
    else
    {
       System.out.println(filename);
       File file=new File("c:\\download\\"+filename);
       
    }
  
    // insert
  
    response.sendRedirect("onm.jsp");
%>
