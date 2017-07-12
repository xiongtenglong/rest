package com.rest.web.pojo;

import com.rest.common.po.BasePojo;
import org.apache.solr.client.solrj.beans.Field;


public class HouseInfo extends BasePojo {
	@Field
	private Long houseId;//房屋Id
	@Field
	private Long userId;//用户Id
	@Field
	private String title;//标题
	@Field
	private Long price;//价格，单位：分
	@Field
	private String houseDesc;//描述
	@Field
	private String imageUrl;//图片地址
	@Field
	private String address;//地址
	@Field
	private String notice;//房屋公告
	@Field
	private Integer status;//房屋状态 ：1-正常，2-下架，3-删除
	@Field
	private Integer areaId;
	@Field
	private Integer evaluate;
	@Field
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

	public String getHouseDesc() {
		return houseDesc;
	}
	public void setHouseDesc(String houseDesc) {
		this.houseDesc = houseDesc;
	}

	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
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
	public Integer getEvaluate() {
		return evaluate;
	}

	public void setEvaluate(Integer evaluate) {
		this.evaluate = evaluate;
	}

	public Integer getAreaId() {
		return areaId;
	}

	public void setAreaId(Integer areaId) {
		this.areaId = areaId;
	}
}
