package com.rest.dubbox.pojo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.rest.common.po.BasePojo;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Administrator on 2017/7/7.
 */
@JsonIgnoreProperties(ignoreUnknown=true)
@Table(name="tb_house_info")
public class HouseInfo extends BasePojo {
    @Id
    private Long houseId;
    private Long userId;
    private String title;
    private Long price;
    private String houseDesc;
    private String address;
    private String imagePath;
    private String notice;
    private Integer status;
    private Integer statusAuth;
    private String evaluate;
    private HouseStatus houseStatus;

    public HouseStatus getHouseStatus() {
		return houseStatus;
	}

	public void setHouseStatus(HouseStatus houseStatus) {
		this.houseStatus = houseStatus;
	}

	public String getEvaluate() {
        return evaluate;
    }

    public void setEvaluate(String evaluate) {
        this.evaluate = evaluate;
    }

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

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public String getHouseDesc() {
        return houseDesc;
    }

    public void setHouseDesc(String houseDesc) {
        this.houseDesc = houseDesc;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
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
