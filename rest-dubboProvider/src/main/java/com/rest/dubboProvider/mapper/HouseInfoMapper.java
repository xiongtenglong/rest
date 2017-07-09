package com.rest.dubboProvider.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.rest.common.mapper.SysMapper;
import com.rest.dubbox.pojo.HouseInfo;

public interface HouseInfoMapper extends SysMapper<HouseInfo>{

	public List<HouseInfo> queryHouseListByTimeArea(@Param("outTime") Integer outTime, @Param("areaId") Integer areaId);

}
