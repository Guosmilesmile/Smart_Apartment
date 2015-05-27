package com.test.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.envers.tools.Tools;

import antlr.build.Tool;

import com.opensymphony.xwork2.ActionSupport;
import com.test.bean.Repair;
import com.test.service.RepairService;
import com.test.util.FastJsonTool;

public class GetAllRepairAction extends ActionSupport{
	private RepairService repairService;
	private List<Repair> jsonResult; 
	
	
	public RepairService getRepairService() {
		return repairService;
	}
	public List<Repair> getJsonResult() {
		return jsonResult;
	}
	public void setJsonResult(List<Repair> jsonResult) {
		this.jsonResult = jsonResult;
	}
	public void setRepairService(RepairService repairService) {
		this.repairService = repairService;
	}
	@Override
	public String execute() throws Exception {
		String status = null;
		List<Repair> list = repairService.getallRepairs();
		jsonResult=list;
		return SUCCESS;
	}
}
