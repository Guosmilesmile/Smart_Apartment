package com.test.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.test.bean.User;
import com.test.service.UserService;

public class LoginAction extends ActionSupport {

	public String userid;
	public String password;
	private UserService userService;

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public LoginAction() {
		System.out.println("initialize LoginAction......");
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String execute() {
		User user = null;
		user = userService.findUser(userid,password);
		if (user!=null) {
			System.out.println(user.getUserid()+user.getUsername());
			ActionContext.getContext().getSession().put("userid", user.getUserid());
			ActionContext.getContext().getSession().put("username",user.getUsername());
			return SUCCESS;
		} else {
			super.addActionError(super.getText("loginfailed"));
			return ERROR;
		}
	}

	public void validate() {
		if ((null == userid) || (0 == userid.length())) {
			super.addActionError(super.getText("warning.empty",
					new String[] { getText("username") }));
		}

		if ((null == password) || (0 == password.length())) {
			super.addActionError(super.getText("warning.empty",
					new String[] { getText("password") }));
		}
	}
}