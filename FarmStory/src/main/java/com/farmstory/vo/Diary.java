package com.farmstory.vo;

import java.sql.Date;
import java.util.List;

//다이어리 정보를 DB에 저장하기 위한 vo 객체
public class Diary {
	
	private int diaNo;
	private Date diaDate;
	private String diaTitle;
	private String diaContent;
	private String regPotNo;
	private String memId;
	private String diaCategory;
	private String diaBookName;
	
	public String getDiaBookName() {
		return diaBookName;
	}
	public void setDiaBookName(String diaBookName) {
		this.diaBookName = diaBookName;
	}
	public String getDiaCategory() {
		return diaCategory;
	}
	public void setDiaCategory(String diaCategory) {
		this.diaCategory = diaCategory;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	private List<DiaryImg> attachment; 
	
	
	public List<DiaryImg> getAttachment() {
		return attachment;
	}
	public void setAttachment(List<DiaryImg> attachment) {
		this.attachment = attachment;
	}
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
	public String getRegPotNo() {
		return regPotNo;
	}
	public void setRegPotNo(String regPotNo) {
		this.regPotNo = regPotNo;
	}
	
	
	
}
