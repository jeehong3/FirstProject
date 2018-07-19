package com.farmstory.vo;

import java.util.Date;

//건의사항 정보를 DB에 저장하기 위한 vo 객체
public class Interrupt {

	private int intNo;
	private String intTitle;
	private String intContent;
	private String memId;
	private Date intDate;
	
	public int getIntNo() {
		return intNo;
	}
	public void setIntNo(int intNo) {
		this.intNo = intNo;
	}
	public String getIntTitle() {
		return intTitle;
	}
	public void setIntTitle(String intTitle) {
		this.intTitle = intTitle;
	}
	public String getIntContent() {
		return intContent;
	}
	public void setIntContent(String intContent) {
		this.intContent = intContent;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public Date getIntDate() {
		return intDate;
	}
	public void setIntDate(Date intDate) {
		this.intDate = intDate;
	}
}
