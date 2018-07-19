package com.farmstory.vo;

//웹 소개페이지를 DB에 저장하기 위한 vo 객체
public class Cover {

	private int covNo;
	private String covTitle;
	private String covLcontent;
	private String covRocntent;
	private String covImg;
	
	public int getCovNo() {
		return covNo;
	}
	public void setCovNo(int covNo) {
		this.covNo = covNo;
	}
	public String getCovTitle() {
		return covTitle;
	}
	public void setCovTitle(String covTitle) {
		this.covTitle = covTitle;
	}
	public String getCovLcontent() {
		return covLcontent;
	}
	public void setCovLcontent(String covLcontent) {
		this.covLcontent = covLcontent;
	}
	public String getCovRocntent() {
		return covRocntent;
	}
	public void setCovRocntent(String covRocntent) {
		this.covRocntent = covRocntent;
	}
	public String getCovImg() {
		return covImg;
	}
	public void setCovImg(String covImg) {
		this.covImg = covImg;
	}
}
