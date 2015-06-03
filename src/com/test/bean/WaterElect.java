package com.test.bean;

public class WaterElect {
	private int id;
	private String housernumber;
	private Integer watermoney;
	private Integer electmoney;
	private Integer waternumber;
	private Integer electnumber;
	
	
	public WaterElect() {
		super();
	}

	public WaterElect(int id, String housernumber, Integer watermoney,
			Integer electmoney, Integer waternumber, Integer electnumber) {
		super();
		this.id = id;
		this.housernumber = housernumber;
		this.watermoney = watermoney;
		this.electmoney = electmoney;
		this.waternumber = waternumber;
		this.electnumber = electnumber;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getHousernumber() {
		return housernumber;
	}

	public void setHousernumber(String housernumber) {
		this.housernumber = housernumber;
	}

	public Integer getWatermoney() {
		return watermoney;
	}

	public void setWatermoney(Integer watermoney) {
		this.watermoney = watermoney;
	}

	public Integer getElectmoney() {
		return electmoney;
	}

	public void setElectmoney(Integer electmoney) {
		this.electmoney = electmoney;
	}

	public Integer getWaternumber() {
		return waternumber;
	}

	public void setWaternumber(Integer waternumber) {
		this.waternumber = waternumber;
	}

	public Integer getElectnumber() {
		return electnumber;
	}

	public void setElectnumber(Integer electnumber) {
		this.electnumber = electnumber;
	}
	
	
}
