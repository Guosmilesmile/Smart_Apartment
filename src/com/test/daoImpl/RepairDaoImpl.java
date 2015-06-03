package com.test.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.test.bean.Repair;
import com.test.dao.RepairDao;

public class RepairDaoImpl implements RepairDao{

	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List<Repair> getallRepairs() {
		Session session = sessionFactory.openSession();
		String hql="FROM Repair r";
		Query q = session.createQuery(hql);
		List<Repair> list = q.list();
		session.close();
		return list;
	}

	@Override
	public int addRepair(Repair repair) {
		Session session = sessionFactory.openSession();
		int number =-1;
		try {
			number  = (Integer) session.save(repair);
		} catch (Exception e) {
			return number;
		}
		return number;
	}

}
