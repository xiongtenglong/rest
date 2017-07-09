package com.rest.dubboProvider.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.rest.common.mapper.SysMapper;
import com.rest.dubbox.pojo.HouseStatus;

public interface HouseStatusMapper extends SysMapper<HouseStatus>{

	public List<Integer> queryOutTimeByHousId(@Param("houseId")Long houseId,@Param("outTime")Integer outTime);

}
