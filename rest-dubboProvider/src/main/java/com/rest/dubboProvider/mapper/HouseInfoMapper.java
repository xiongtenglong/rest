package com.rest.dubboProvider.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.rest.common.mapper.SysMapper;
import com.rest.dubbox.pojo.HouseInfo;

public interface HouseInfoMapper extends SysMapper<HouseInfo>{

	public List<HouseInfo> queryHouseListByTimeArea(@Param("outTime") Integer outTime, @Param("areaId") Integer areaId);

	public List<HouseInfo> queryHouseOrder(@Param("condition") String condition,
										@Param("fieldN") String fieldN, 
										@Param("outTime")Integer outTime, 
										@Param("areaId") Integer areaId);

	
	public List<HouseInfo> queryHotHouseInfoTopTen(@Param("outTime") Integer outTime, @Param("areaId") Integer areaId);

	public HouseInfo queryHouseInfoById(Long houseId);

}
