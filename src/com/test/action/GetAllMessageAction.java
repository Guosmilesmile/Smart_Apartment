package com.test.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.test.bean.Message;
import com.test.service.MessageService;

public class GetAllMessageAction extends ActionSupport{
	private MessageService messageService;
	private List<Message> jsonresult;

	public List<Message> getJsonresult() {
		return jsonresult;
	}


	public void setJsonresult(List<Message> jsonresult) {
		this.jsonresult = jsonresult;
	}


	public MessageService getMessageService() {
		return messageService;
	}


	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}


	@Override
	public String execute() throws Exception {
		jsonresult = messageService.getMessages();
		return SUCCESS;
	}
}
