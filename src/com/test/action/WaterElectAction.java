package com.test.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.test.bean.WaterElect;
import com.test.service.WaterElectService;

public class WaterElectAction extends ActionSupport {
	private WaterElectService waterElectService;
	private String housernumber;
	private WaterElect jsonResult;
	
	public WaterElect getJsonResult() {
		return jsonResult;
	}

	public void setJsonResult(WaterElect jsonResult) {
		this.jsonResult = jsonResult;
	}

	public String getHousernumber() {
		return housernumber;
	}

	public void setHousernumber(String housernumber) {
		this.housernumber = housernumber;
	}

	public WaterElectService getWaterElectService() {
		return waterElectService;
	}

	public void setWaterElectService(WaterElectService waterElectService) {
		this.waterElectService = waterElectService;
	}

	@Override
	public String execute() throws Exception {
		jsonResult = waterElectService.getWaterElectByHousernumber(housernumber);
		return SUCCESS;
	}

	@Override
	public void validate() {

	}
}
