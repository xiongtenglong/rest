package com.rest.web.service;

import com.rest.web.mapper.HouseImageMapper;
import com.rest.web.pojo.HouseImage;
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
