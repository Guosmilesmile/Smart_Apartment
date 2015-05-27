package com.test.bean;

public class Repair {
	private int id;
	private int sturoom;
	private String repaircontent;
	private String telphone;
	private int flag;
	
	public Repair(int sturoom, String repaircontent, String telphone, int flag) {
		super();
		this.sturoom = sturoom;
		this.repaircontent = repaircontent;
		this.telphone = telphone;
		this.flag = flag;
	}
	public Repair() {
		super();
	}
	public Repair(int id, int sturoom, String repaircontent, String telphone,
			int flag) {
		super();
		this.sturoom = sturoom;
		this.repaircontent = repaircontent;
		this.telphone = telphone;
		this.flag = flag;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSturoom() {
		return sturoom;
	}
	public void setSturoom(int sturoom) {
		this.sturoom = sturoom;
	}
	public String getRepaircontent() {
		return repaircontent;
	}
	public void setRepaircontent(String repaircontent) {
		this.repaircontent = repaircontent;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	
}
