package com.test.daoImpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.test.bean.Message;
import com.test.dao.MessageDao;

public class MessageDaoImpl implements MessageDao {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public int AddMessage(Message message) {
		Session session = sessionFactory.openSession();
		int number =-1;
		try {
			number  = (Integer) session.save(message);
		} catch (Exception e) {
			e.printStackTrace();
			return number;
		}
		return number;
	}

	@Override
	public List<Message> getMessages() {
		Session session  = sessionFactory.openSession();
		List<Message> messages  = new ArrayList<Message>();
		String hql = "FROM Message M";
		Query query = session.createQuery(hql);
		messages = query.list();
		return messages;
	}

}
