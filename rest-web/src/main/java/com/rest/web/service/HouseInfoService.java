package com.rest.web.service;

import com.rest.web.mapper.HouseInfoMapper;
import com.rest.web.pojo.HouseInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2017/7/8.
 */
@Service
public class HouseInfoService {

    @Autowired
    private HouseInfoMapper houseInfoMapper;

    public void saveHouseInfo(HouseInfo houseInfo){

        houseInfoMapper.insertSelective(houseInfo);
    }

}
