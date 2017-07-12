package com.rest.dubboProvider.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.rest.common.service.BaseService;
import com.rest.common.util.TimeUtils;
import com.rest.common.vo.SysResult;
import com.rest.dubboProvider.mapper.HouseInfoMapper;
import com.rest.dubbox.pojo.HouseInfo;
import com.rest.dubbox.pojo.HouseStatus;
import com.rest.dubbox.service.DubboxHouseInfoService;

public class DubboxHouseInfoServiceImpl extends BaseService<HouseInfo> implements DubboxHouseInfoService{

	@Autowired
	private HouseInfoMapper houseInfoMapper;
	
	/**
	 * 根据出租时间和地区查询房屋信息
	 * @param outTime 出租时间
	 * @param areaId 地区id
	 * @return sysResult
	 */
	public SysResult queryHouseListByTimeArea(Date outTime, Integer areaId) {
		List<HouseInfo> data=houseInfoMapper.queryHouseListByTimeArea(Integer.parseInt(TimeUtils.toOutTime(outTime)),areaId);
		for (HouseInfo houseInfo : data) {
			HouseStatus houseStatus = houseInfo.getHouseStatus();
			if(houseStatus!=null&&houseStatus.getNewPrice()!=null){
				houseInfo.setPrice(houseStatus.getNewPrice());
			}
		}
		return SysResult.oK(data);
	}

	@Override
	public List<HouseInfo> queryHouseOrderBy(String condition, String fieldN, Date outTime, Integer areaId) {
		List<HouseInfo> data=houseInfoMapper.queryHouseOrder(condition,fieldN,TimeUtils.parseInt(outTime),areaId);
		for (HouseInfo houseInfo : data) {
			HouseStatus houseStatus = houseInfo.getHouseStatus();
			if(houseStatus!=null&&houseStatus.getNewPrice()!=null){
				houseInfo.setPrice(houseStatus.getNewPrice());
			}
		}
		return data;
	}

	@Override
	public List<HouseInfo> queryHotHouseInfoTopTen(Date outTime, Integer areaId) {
		List<HouseInfo> data=houseInfoMapper.queryHotHouseInfoTopTen(TimeUtils.parseInt(outTime),areaId);
		for (HouseInfo houseInfo : data) {
			HouseStatus houseStatus = houseInfo.getHouseStatus();
			if(houseStatus!=null&&houseStatus.getNewPrice()!=null){
				houseInfo.setPrice(houseStatus.getNewPrice());
			}
		}
		return data;
	}

	@Override
	public HouseInfo queryOneByHouseId(Long houseId) {
		HouseInfo houseInfo=super.queryById(houseId);
		return houseInfo;
	}

}
