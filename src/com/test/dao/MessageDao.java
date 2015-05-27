package com.test.dao;

import java.util.List;

import com.test.bean.Message;

public interface MessageDao {
	public int AddMessage(Message message);
	public List<Message> getMessages();
}
