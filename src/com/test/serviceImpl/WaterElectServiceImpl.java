package com.test.serviceImpl;

import org.omg.CORBA.PRIVATE_MEMBER;

import com.test.bean.WaterElect;
import com.test.dao.WaterElectDao;
import com.test.service.WaterElectService;

public class WaterElectServiceImpl implements WaterElectService{

	private WaterElectDao waterElectDao;
	
	public WaterElectDao getWaterElectDao() {
		return waterElectDao;
	}

	public void setWaterElectDao(WaterElectDao waterElectDao) {
		this.waterElectDao = waterElectDao;
	}

	@Override
	public WaterElect getWaterElectByHousernumber(String housernumber) {
		WaterElect waterElect = waterElectDao.getWaterElectsByHousernumber(housernumber);
		return waterElect;
	}

}
