package com.farmstory.vo;

import java.util.Date;


//식물통계 정보를 DB에 저장하기 위한 vo 객체
public class PlantVal {

	private int plvNo;
	private int regPotNo;
	private Date plvDateTime;
	private int plvType;
	private int plvVal;
	
	
	public int getPlvNo() {
		return plvNo;
	}
	public void setPlvNo(int plvNo) {
		this.plvNo = plvNo;
	}
	public int getRegPotNo() {
		return regPotNo;
	}
	public void setRegPotNo(int regPotNo) {
		this.regPotNo = regPotNo;
	}
	public Date getPlvDateTime() {
		return plvDateTime;
	}
	public void setPlvDateTime(Date plvDateTime) {
		this.plvDateTime = plvDateTime;
	}
	public int getPlvType() {
		return plvType;
	}
	public void setPlvType(int plvType) {
		this.plvType = plvType;
	}
	public int getPlvVal() {
		return plvVal;
	}
	public void setPlvVal(int plvVal) {
		this.plvVal = plvVal;
	}
	
	
}
