package com.rest.web.util.spider.pojo;

import javax.persistence.Table;

/**
 * Created by Administrator on 2017/7/8.
 */

@Table(name="tb_house_image")
public class HouseImage {
    private Long imageId;
    private Long houseId;
    private String imageUrl;

    public Long getImageId() {
        return imageId;
    }

    public void setImageId(Long imageId) {
        this.imageId = imageId;
    }

    public Long getHouseId() {
        return houseId;
    }

    public void setHouseId(Long houseId) {
        this.houseId = houseId;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
}
