package com.rest.web.service;

import com.rest.web.mapper.HouseAreaMapper;
import com.rest.web.pojo.HouseArea;
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
