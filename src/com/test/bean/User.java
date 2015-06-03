package com.test.bean;

public class User {
	private int id;
	private String userid;
	private String password;
	private String username;
	private Integer housernumber;
	
	public User() {
		super();
	}
	public User( String userid, String password, String username,
			Integer housernumber) {
		super();
		this.userid = userid;
		this.password = password;
		this.username = username;
		this.housernumber = housernumber;
	}
	
	
	


	public Integer getHousernumber() {
		return housernumber;
	}
	public void setHousernumber(Integer housernumber) {
		this.housernumber = housernumber;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}