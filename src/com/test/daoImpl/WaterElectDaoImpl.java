package com.test.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.test.bean.WaterElect;
import com.test.dao.WaterElectDao;

public class WaterElectDaoImpl implements WaterElectDao{
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public WaterElect getWaterElectsByHousernumber(String housernumber) {
		System.out.println(housernumber);
		Session session = sessionFactory.openSession();
		String hql="FROM WaterElect as WE where WE.housernumber = :housernumber";
		Query q = session.createQuery(hql);
		q.setString("housernumber",housernumber);
		List<WaterElect> list = q.list();
		System.out.println(list.size());
		session.close();
		if (list.size() == 0)
			return null;
		else
			return list.get(0);
	}

}
