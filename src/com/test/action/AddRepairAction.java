package com.test.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.test.bean.Repair;
import com.test.service.RepairService;

public class AddRepairAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private String sturoom;
	private String telphone;
	private String repaircontent;
	private RepairService repairService;
	
	public RepairService getRepairService() {
		return repairService;
	}
	public void setRepairService(RepairService repairService) {
		this.repairService = repairService;
	}
	public String getSturoom() {
		return sturoom;
	}
	public void setSturoom(String sturoom) {
		this.sturoom = sturoom;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	public String getRepaircontent() {
		return repaircontent;
	}
	public void setRepaircontent(String repaircontent) {
		this.repaircontent = repaircontent;
	}
	
	@Override
	public String execute() throws Exception {
		try {
			System.out.println(repaircontent);
			Repair repair = new Repair(Integer.parseInt(sturoom), repaircontent, telphone, 0);
			boolean flag = repairService.addRepair(repair);
			if (flag){
				return SUCCESS;
			}
			else
				return ERROR;
		}catch (Exception e) {
			System.out.println("fali");
		}
		return ERROR;
	}
	
	@Override
	public void validate() {
		if ((null == sturoom) || (0 == sturoom.length())) {
			super.addActionError(super.getText("warning.empty",
					new String[] { getText("sturoom") }));
		}
		if ((null == telphone) || (0 == telphone.length())) {
			super.addActionError(super.getText("warning.empty",
					new String[] { getText("telphone") }));
		}
		if ((null == repaircontent) || (0 == repaircontent.length())) {
			super.addActionError(super.getText("warning.empty",
					new String[] { getText("repaircontent") }));
		}
	}
}
