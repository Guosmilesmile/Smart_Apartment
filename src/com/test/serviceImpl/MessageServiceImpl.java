package com.test.serviceImpl;

import java.util.List;

import com.test.bean.Message;
import com.test.bean.User;
import com.test.dao.MessageDao;
import com.test.dao.UserDao;
import com.test.daoImpl.UserDaoImpl;
import com.test.service.MessageService;

public class MessageServiceImpl implements MessageService{

	private MessageDao messageDao;
	private UserDao userDao;
	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public MessageDao getMessageDao() {
		return messageDao;
	}

	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}

	@Override
	public boolean AddMessage(String title, String content, String userid) {
		User user = userDao.findByuserid(userid);
		System.out.println(user.getPassword());
		Message message = new Message(title, content, user);
		try {
			int number  = messageDao.AddMessage(message);
			if(number!=-1)
				return true;
			else
				return false;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<Message> getMessages() {
		List<Message> messages = messageDao.getMessages();
		return messages;
	}

}
