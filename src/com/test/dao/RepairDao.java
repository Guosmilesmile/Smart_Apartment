package com.test.dao;

import java.util.List;

import com.test.bean.Repair;


public interface RepairDao {
	public	List<Repair> getallRepairs();
	public  int addRepair(Repair repair);
}
