package com.sist.dao;

import java.util.*;
public class CardVO {

   private int no;
   private int userno;
   private String title;
   private String content;
   private Date regdate;
   private String startdate;
   private String enddate;
   private String priority1;
   private String priority2;
   private String done;
   private String label;
   private int listno;
public int getListno() {
	return listno;
}
public void setListno(int listno) {
	this.listno = listno;
}
public int getNo() {
	return no;
}
public void setNo(int no) {
	this.no = no;
}
public int getUserno() {
	return userno;
}
public void setUserno(int userno) {
	this.userno = userno;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public Date getRegdate() {
	return regdate;
}
public void setRegdate(Date regdate) {
	this.regdate = regdate;
}
public String getStartdate() {
	return startdate;
}
public void setStartdate(String startdate) {
	this.startdate = startdate;
}
public String getEnddate() {
	return enddate;
}
public void setEnddate(String enddate) {
	this.enddate = enddate;
}
public String getPriority1() {
	return priority1;
}
public void setPriority1(String priority1) {
	this.priority1 = priority1;
}
public String getPriority2() {
	return priority2;
}
public void setPriority2(String priority2) {
	this.priority2 = priority2;
}
public String getDone() {
	return done;
}
public void setDone(String done) {
	this.done = done;
}
public String getLabel() {
	return label;
}
public void setLabel(String label) {
	this.label = label;
}

}