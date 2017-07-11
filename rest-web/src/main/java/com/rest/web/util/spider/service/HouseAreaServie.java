package com.rest.web.util.spider.service;


import com.rest.web.util.spider.mapper.HouseAreaMapper;
import com.rest.web.util.spider.pojo.HouseArea;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/7/8.
 */
@Service
public class HouseAreaServie {
    @Autowired
    HouseAreaMapper houseAreaMapper;

    public List<HouseArea> select(){
       return houseAreaMapper.select(new HouseArea());
    }
}
