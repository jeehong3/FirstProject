package com.farmstory.vo;

import java.util.Date;

//마이페이지 정보를 DB에 저장하기 위한 vo 객체
public class Myplant {

	private int mypNo;
	private String memId;
	private int plaNo;
	private Date mypDate;
	
	public int getMypNo() {
		return mypNo;
	}
	public void setMypNo(int mypNo) {
		this.mypNo = mypNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getPlaNo() {
		return plaNo;
	}
	public void setPlaNo(int plaNo) {
		this.plaNo = plaNo;
	}
	public Date getMypDate() {
		return mypDate;
	}
	public void setMypDate(Date mypDate) {
		this.mypDate = mypDate;
	}
	
	
}
