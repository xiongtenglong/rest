package com.rest.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.common.vo.SysResult;
import com.rest.web.pojo.HouseInfo;
import com.rest.web.service.HouseInfoService;

//@Controller
//@RequestMapping("")
public class HouseInfoController {
	@Autowired
	private HouseInfoService houseInfoService;
	
	/**
	 * 增加房源
	 * @param houseInfo
	 * @return
	 */
	@RequestMapping("")
	@ResponseBody
	public SysResult add(HouseInfo houseInfo){
		Long userId = 9L;
		houseInfo.setUserId(userId);
		try {
			houseInfoService.add(houseInfo);
			return SysResult.oK();
		} catch (Exception e) {
			e.printStackTrace();
			return SysResult.build(201, "新增房源失败！");
		}
	}
	
	/**
	 * 根据房屋id查找房屋
	 * @param houseInfo
	 * @return
	 */
	@RequestMapping("")
	@ResponseBody
	public SysResult findOne(@PathVariable Long houseId){
		try {
			HouseInfo houseInfo = houseInfoService.findOne(houseId);
			return SysResult.oK(houseInfo);
		} catch (Exception e) {
			e.printStackTrace();
			return SysResult.build(201, "查看房屋信息失败！");
		}
	}
	
	
	
}
