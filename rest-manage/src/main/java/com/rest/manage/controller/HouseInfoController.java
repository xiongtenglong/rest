package com.rest.manage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.common.vo.SysResult;
import com.rest.manage.pojo.HouseInfo;
import com.rest.manage.service.HouseInfoService;

@Controller
@RequestMapping("/houseInfo")
public class HouseInfoController {
	@Autowired
	private HouseInfoService houseInfoService;
	
	/**
	 * 根据房屋Id查找房屋
	 * @param houseId
	 * @return	HouseInfo 房屋对象
	 */
	@RequestMapping("")
	@ResponseBody
	public SysResult findHouseById(@PathVariable Long houseId){
		try{
			HouseInfo houseInfo = houseInfoService.findHouseById(houseId);
			return SysResult.oK(houseInfo);
		}catch(Exception e){
			return SysResult.build(201, "查找房屋失败！");
		}
	}
	
	/**
	 * 根据屋主Id查找房屋
	 * @param houseId
	 * @return	HouseInfo 房屋对象
	 */
	@RequestMapping("")
	@ResponseBody
	public SysResult findHouseByUserId(@PathVariable Long userId){
		try{
			List<HouseInfo> houseInfoList = houseInfoService.findHouseByUserId(userId);
			return SysResult.oK(houseInfoList);
		}catch(Exception e){
			return SysResult.build(201, "查找房屋失败！");
		}
	}
	
	/**
	 * 新增房源
	 * @param houseInfo
	 * @return data为房屋标题
	 */
	@RequestMapping("/addHouse")
	@ResponseBody
	public SysResult add(HouseInfo houseInfo){
		try{
			String data = houseInfoService.saveHouseInfo(houseInfo);
			return SysResult.oK(data);
		}catch(Exception e){
			return SysResult.build(201, "发布房源失败！");
		}
	}
	
	/**
	 * 修改房源信息
	 * @param houseInfo
	 * @return
	 */
	@RequestMapping("")
	@ResponseBody
	public SysResult update(HouseInfo houseInfo){
		try{
			houseInfoService.updateHouseInfo(houseInfo);
			return SysResult.oK();
		}catch(Exception e){
			return SysResult.build(201, "修改房屋状态失败！");
		}
	}
	
	/**
	 * 删除房源信息
	 * @param houseInfo
	 * @return
	 */
	@RequestMapping("")
	@ResponseBody
	public SysResult delete(HouseInfo houseInfo){
		try{
			houseInfoService.deleteHouseInfo(houseInfo);
			return SysResult.oK();
		}catch(Exception e){
			return SysResult.build(201, "删除房屋信息失败！");
		}
	}
}
