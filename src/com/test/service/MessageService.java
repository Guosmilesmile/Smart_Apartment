package com.test.service;

import java.util.List;

import com.test.bean.Message;

public interface MessageService {
	public boolean AddMessage(String title,String content,String userid);
	public List<Message> getMessages();
}
