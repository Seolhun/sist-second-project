package com.sist.dao;

import java.sql.Date;

public class UserDTO {
	private int no;
	private String email;
	private String nickname;
	private String pwd;
	private Date joindate;
	private int karma;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public int getKarma() {
		return karma;
	}
	public void setKarma(int karma) {
		this.karma = karma;
	}
	
	
}
