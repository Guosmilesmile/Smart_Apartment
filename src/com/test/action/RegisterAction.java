package com.test.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.test.bean.User;
import com.test.service.UserService;

public class RegisterAction extends ActionSupport {
	private String userid;
	private String password;
	private String username;
	private Integer housernumber;
	private String compassword;
	private UserService userService;

	public void setCompassword(String compassword) {
		this.compassword = compassword;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setHousernumber(Integer housernumber) {
		this.housernumber = housernumber;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String execute() {
		try {
			User user = new User(userid, password, username, housernumber);
			boolean flag = userService.addUser(user);
			if (flag){
				ActionContext.getContext().getSession().put("userid", userid);
				ActionContext.getContext().getSession().put("username", username);
				return SUCCESS;
			}
			else
				return ERROR;
		} catch (Exception e) {
			System.out.println("fali");
		}
		return ERROR;
	}
	
	@Override
	public void validate() {
		if(null==userid || 0==userid.length()){
			addFieldError("iderror","学号不能为空");
		}
		if(null==password || 0==password.length()){
			addFieldError("passworderror","密码不能为空");
		}
		if(null==username || 0==username.length()){
			addFieldError("nameerror","姓名不能为空");
		}
		if(null==housernumber ){
			addFieldError("housererror","宿舍号不能为空");
		}
	}

}
