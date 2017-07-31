package com.sist.dao;

import java.util.Date;

public class CommVO {
	private int no;
	private int cardno;
	private int function;
	private Date commreg;
	private String cardcomm;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getCardno() {
		return cardno;
	}
	public void setCardno(int cardno) {
		this.cardno = cardno;
	}
	public int getFunction() {
		return function;
	}
	public void setFunction(int function) {
		this.function = function;
	}
	public Date getCommreg() {
		return commreg;
	}
	public void setCommreg(Date commreg) {
		this.commreg = commreg;
	}
	public String getCardcomm() {
		return cardcomm;
	}
	public void setCardcomm(String cardcomm) {
		this.cardcomm = cardcomm;
	}
	
}
