package com.rest.manage.pojo;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.rest.common.po.BasePojo;

@Table(name="tb_house_info")
public class HouseInfo extends BasePojo {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long houseId;//房屋Id
	private Long userId;//用户Id
	private String title;//标题
	private Long prive;//价格，单位：分
	private String houseDesc;//描述
	private String imagePath;//图片地址
	private String address;//地址
	private String notice;//房屋公告
	private Integer status;//房屋状态 ：1-正常，2-下架，3-删除
	private Integer statusAuth;//认证状态：1-未认证，2-认证中，3-已认证
	public Long getHouseId() {
		return houseId;
	}
	public void setHouseId(Long houseId) {
		this.houseId = houseId;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Long getPrive() {
		return prive;
	}
	public void setPrive(Long prive) {
		this.prive = prive;
	}
	public String getHouseDesc() {
		return houseDesc;
	}
	public void setHouseDesc(String houseDesc) {
		this.houseDesc = houseDesc;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getNotice() {
		return notice;
	}
	public void setNotice(String notice) {
		this.notice = notice;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getStatusAuth() {
		return statusAuth;
	}
	public void setStatusAuth(Integer statusAuth) {
		this.statusAuth = statusAuth;
	}
	
}
