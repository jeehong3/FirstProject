package com.farmstory.vo;

import java.sql.Date;

//다이어리 정보를 DB에 저장하기 위한 vo 객체
public class Diary {
	
	private int diaNo;
	private Date diaDate;
	private String diaTitle;
	private String diaContent;
	private int regPotNo;
	
	public int getDiaNo() {
		return diaNo;
	}
	public void setDiaNo(int diaNo) {
		this.diaNo = diaNo;
	}
	public Date getDiaDate() {
		return diaDate;
	}
	public void setDiaDate(Date diaDate) {
		this.diaDate = diaDate;
	}
	public String getDiaTitle() {
		return diaTitle;
	}
	public void setDiaTitle(String diaTitle) {
		this.diaTitle = diaTitle;
	}
	public String getDiaContent() {
		return diaContent;
	}
	public void setDiaContent(String diaContent) {
		this.diaContent = diaContent;
	}
	public int getRegPotNo() {
		return regPotNo;
	}
	public void setRegPotNo(int regPotNo) {
		this.regPotNo = regPotNo;
	}
	
	
	
}
