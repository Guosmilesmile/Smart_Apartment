package com.test.serviceImpl;

import java.util.List;

import com.test.bean.Repair;
import com.test.dao.RepairDao;
import com.test.service.RepairService;

public class RepairServiceImpl implements RepairService{
	private RepairDao repairDao;
	
	
	public void setRepairDao(RepairDao repairDao) {
		this.repairDao = repairDao;
	}


	public RepairDao getRepairDao() {
		return repairDao;
	}


	@Override
	public List<Repair> getallRepairs() {
		List<Repair> repairs = repairDao.getallRepairs();
		return repairs;
	}


	@Override
	public boolean addRepair(Repair repair) {
		try {
			int number = repairDao.addRepair(repair);
			if(number!=-1)
				return true;
			else
				return false;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
