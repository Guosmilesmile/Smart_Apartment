package com.test.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.test.service.MessageService;

public class AddMessageAction extends ActionSupport {
	private MessageService messageService;
	private String title;
	private String content;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public MessageService getMessageService() {
		return messageService;
	}

	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}

	@Override
	public String execute() throws Exception {
		String userid = "";
		userid = (String) ActionContext.getContext().getSession().get("userid");
		if (userid == null)
			return INPUT;
		boolean b = messageService.AddMessage(title, content, userid);
		if (b)
			return SUCCESS;
		return ERROR;
	}

	@Override
	public void validate() {
		super.validate();
	}
}
