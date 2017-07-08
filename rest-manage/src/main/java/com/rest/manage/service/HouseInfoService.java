package com.rest.manage.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rest.common.service.BaseService;
import com.rest.manage.mapper.HouseInfoMapper;
import com.rest.manage.pojo.HouseInfo;

@Service
public class HouseInfoService extends BaseService<HouseInfo> {
	@Autowired
	private HouseInfoMapper houseInfoMapper;
	/**
	 * 新增房源
	 * @param houseInfo
	 * @return String 房屋标题
	 */
	public String saveHouseInfo(HouseInfo houseInfo) {
		houseInfo.setCreated(new Date());
		houseInfo.setUpdated(houseInfo.getUpdated());
		houseInfoMapper.insert(houseInfo);
		return houseInfo.getTitle();
	}
	
	/**
	 * 修改房源信息
	 * @param houseInfo
	 */
	public void updateHouseInfo(HouseInfo houseInfo) {
		houseInfo.setUpdated(new Date());
		houseInfoMapper.updateByPrimaryKeySelective(houseInfo);
	}
	
	/**
	 * 删除房源信息
	 * @param houseInfo
	 */
	public void deleteHouseInfo(HouseInfo houseInfo) {
		houseInfo.setUpdated(new Date());
		houseInfo.setStatus(3);//房屋状态 ：1-正常，2-下架，3-删除
		houseInfoMapper.updateByPrimaryKeySelective(houseInfo);
	}
	
	/**
	 * 根据房屋Id查找房屋
	 * @param houseId
	 * @return	HouseInfo 房屋对象
	 */
	public HouseInfo findHouseById(Long houseId){
		return houseInfoMapper.selectByPrimaryKey(houseId);
	}
	
	/**
	 * 根据屋主Id查找房屋
	 * @param houseId
	 * @return	HouseInfo 房屋对象
	 */
	public List<HouseInfo> findHouseByUserId(Long userId){
		HouseInfo param = new HouseInfo();
		param.setUserId(userId);
		return houseInfoMapper.select(param);
	}
}
