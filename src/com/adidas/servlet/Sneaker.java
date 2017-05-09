package com.adidas.servlet;

public class Sneaker {
	
	private int sID;
	private String sName;
	private int sPrice;
	private String sDesc;
	private String sImgPth;
	private String sYouTubeVd;
	
	
	public String getsYouTubeVd() {
		return sYouTubeVd;
	}
	public void setsYouTubeVd(String sYouTubeVd) {
		this.sYouTubeVd = sYouTubeVd;
	}
	public int getsID() {
		return sID;
	}
	public void setsID(int sID) {
		this.sID = sID;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public int getsPrice() {
		return sPrice;
	}
	public void setsPrice(int sPrice) {
		this.sPrice = sPrice;
	}
	public String getsDesc() {
		return sDesc;
	}
	public void setsDesc(String sDesc) {
		this.sDesc = sDesc;
	}
	public String getsImgPth() {
		return sImgPth;
	}
	public void setsImgPth(String sImgPth) {
		this.sImgPth = sImgPth;
	}
	

}
