package com.rest.web.util.spider.service;


import com.rest.web.util.spider.mapper.HouseImageMapper;
import com.rest.web.util.spider.pojo.HouseImage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2017/7/8.
 */
@Service
public class HouseImageService {

    @Autowired
    HouseImageMapper houseImageMapper;

    public void saveHouseImage(HouseImage houseImage){
        houseImageMapper.insertSelective(houseImage);
    }
}
