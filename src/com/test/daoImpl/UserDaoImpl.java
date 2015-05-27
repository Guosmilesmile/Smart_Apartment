package com.test.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.test.bean.User;
import com.test.dao.UserDao;

public class UserDaoImpl implements UserDao {

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public User find(User user) {
		return find(user.getUserid(), user.getPassword());
	}

	@Override
	public User find(String userid, String password) {
		Session session = sessionFactory.openSession();
		String hql = "FROM User AS u WHERE u.userid = :userid AND u.password = :password";
		Query q = session.createQuery(hql);
		q.setString("userid", userid);
		q.setString("password", password);
		List<User> list = q.list();
		session.close();
		if (list.size() == 0)
			return null;
		else
			return list.get(0);
	}

	@Override
	public int addUser(User user) {
		Session session = sessionFactory.openSession();
		int number =-1;
		try {
			number  = (Integer) session.save(user);
		} catch (Exception e) {
			return number;
		}
		return number;
	}

	@Override
	public User findByuserid(String userid) {
		Session session = sessionFactory.openSession();
		String hql = "FROM User AS u WHERE u.userid = :userid";
		Query q = session.createQuery(hql);
		q.setString("userid", userid);
		List<User> list = q.list();
		session.close();
		if (list.size() == 0)
			return null;
		else
			return list.get(0);
	}

}