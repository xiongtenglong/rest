package com.rest.dubbox.pojo;

import java.io.Serializable;

import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="tb_house_area")
public class HouseArea implements Serializable{
	@Id
	private Integer areaId;
	private String areaName;
	private String areaPid;
	private Integer isParent;
	private Integer status;
	public Integer getAreaId() {
		return areaId;
	}
	public void setAreaId(Integer areaId) {
		this.areaId = areaId;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public String getAreaPid() {
		return areaPid;
	}
	public void setAreaPid(String areaPid) {
		this.areaPid = areaPid;
	}
	public Integer getIsParent() {
		return isParent;
	}
	public void setIsParent(Integer isParent) {
		this.isParent = isParent;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
}
