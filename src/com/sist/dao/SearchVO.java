package com.sist.dao;

public class SearchVO {
	private String nickname;
	private String title;
	private String content;
	private int no;
	private String cardcomm;
	public String getNickname() {
		return nickname;
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
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getCardcomm() {
		return cardcomm;
	}
	public void setCardcomm(String cardcomm) {
		this.cardcomm = cardcomm;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	
}
