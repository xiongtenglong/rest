package com.rest.dubboProvider.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.rest.common.mapper.SysMapper;
import com.rest.dubbox.pojo.HouseStatus;

public interface HouseStatusMapper extends SysMapper<HouseStatus>{

	public List<Integer> queryOutTimeByHousId(@Param("houseId")Long houseId,@Param("outTime")Integer outTime);

	/**
	 * 根据房屋id和出租时间查询
	 * @param houseId 房屋id
	 * @param outTime 出租时间 
	 */
	public HouseStatus selectStatusByhouseIdAndOutTime(@Param("houseId") Long houseId,@Param("outTime") Integer outTime);

	/**
	 * 根据房屋id和出租时间修改出租状态
	 * @param houseId 房屋id
 	 * @param outTime 出租时间
	 * @param outStatus 出租状态
	 */
	public void updateHouseStatusByHouseidAndOutTime(@Param("houseId") Long houseId,
											@Param("outTime")Integer outTime,
											@Param("outStatus")Integer outStatus);

}
