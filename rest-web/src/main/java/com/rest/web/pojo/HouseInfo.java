package com.rest.web.pojo;

import com.rest.common.po.BasePojo;
import org.apache.solr.client.solrj.beans.Field;


public class HouseInfo extends BasePojo {
	@Field
	private Long house_id;//房屋Id
	@Field
	private Long user_id;//用户Id
	@Field
	private String title;//标题
	@Field
	private Long price;//价格，单位：分
	@Field
	private String house_desc;//描述
	@Field
	private String image_url;//图片地址
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
	private Integer status_auth;//认证状态：1-未认证，2-认证中，3-已认证

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}



	public Long getPrice() {
		return price;
	}

	public void setPrice(Long price) {
		this.price = price;
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

	public Long getHouse_id() {
		return house_id;
	}

	public void setHouse_id(Long house_id) {
		this.house_id = house_id;
	}

	public Long getUser_id() {
		return user_id;
	}

	public void setUser_id(Long user_id) {
		this.user_id = user_id;
	}

	public String getHouse_desc() {
		return house_desc;
	}

	public void setHouse_desc(String house_desc) {
		this.house_desc = house_desc;
	}

	public String getImage_url() {
		return image_url;
	}

	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

	public Integer getStatus_auth() {
		return status_auth;
	}

	public void setStatus_auth(Integer status_auth) {
		this.status_auth = status_auth;
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
