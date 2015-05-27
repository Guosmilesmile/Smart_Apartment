package com.test.service;

import java.util.List;

import com.test.bean.Repair;

public interface RepairService {
	public List<Repair> getallRepairs() ;
	 public boolean addRepair(Repair repair);
}
