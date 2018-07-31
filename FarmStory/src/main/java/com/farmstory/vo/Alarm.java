package com.farmstory.vo;

//건의사항 정보를 DB에 저장하기 위한 vo 객체
public class Alarm {

	private int alarmNo;
	private String memberId;
	private String regPotNo;
	private int check;
	private String valType;
	
	public int getAlarmNo() {
		return alarmNo;
	}
	public void setAlarmNo(int alarmNo) {
		this.alarmNo = alarmNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getRegPotNo() {
		return regPotNo;
	}
	public void setRegPotNo(String regPotNo) {
		this.regPotNo = regPotNo;
	}
	public int getCheck() {
		return check;
	}
	public void setCheck(int check) {
		this.check = check;
	}
	public String getValType() {
		return valType;
	}
	public void setValType(String valType) {
		this.valType = valType;
	}
	
	
}
