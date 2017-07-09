package com.rest.dubbox.pojo;

import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="tb_house_status")
public class HouseStatus {

	@Id
	private Long houseId;
	private Integer outTime;
	private Integer outStatus;
	private Long newPrice;
	public Long getHouseId() {
		return houseId;
	}
	public void setHouseId(Long houseId) {
		this.houseId = houseId;
	}
	public Integer getOutTime() {
		return outTime;
	}
	public void setOutTime(Integer outTime) {
		this.outTime = outTime;
	}
	public Integer getOutStatus() {
		return outStatus;
	}
	public void setOutStatus(Integer outStatus) {
		this.outStatus = outStatus;
	}
	public Long getNewPrice() {
		return newPrice;
	}
	public void setNewPrice(Long newPrice) {
		this.newPrice = newPrice;
	}
	


}
