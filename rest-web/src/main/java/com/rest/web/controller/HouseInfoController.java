package com.rest.web.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.common.vo.SysResult;
import com.rest.dubbox.pojo.HouseInfo;
import com.rest.dubbox.service.DubboxHouseInfoService;
import com.rest.web.service.HouseInfoService;

@Controller
@RequestMapping("/house")
public class HouseInfoController extends BaseController{
	@Autowired
	private HouseInfoService houseInfoService;
	@Autowired
	private DubboxHouseInfoService dubboxHouseInfoService;
	
	/**
	 * 按照区id和开始时间查询房源信息
	 * @param areaId
	 * @param startDate
	 * @return
	 */
	@RequestMapping("/validHouse")
	public String queryHouseListByTimeArea(Integer areaId,Date startDate, Model model){
		SysResult sysResult = dubboxHouseInfoService.queryHouseListByTimeArea(startDate, areaId);
		List<HouseInfo> data = (List<HouseInfo>) sysResult.getData();
		model.addAttribute("houseInfoList", data);
		return "home/homelist";
	}
	
	/**
	 * 按照条件排序房源信息
	 * @param fieldN 字段名
	 * @param condition 条件
	 * @param areaId 区id
	 * @param startTime 开始时间
	 * @return
	 */
	@RequestMapping("/orderBy/{fieldN}/{condition}/{areaId}")
	@ResponseBody
	public List<HouseInfo> queryHouseOrderBy(@PathVariable String fieldN,@PathVariable String condition,@PathVariable Integer areaId,Date startTime){
		List<HouseInfo> list=null;
		try {
			list=dubboxHouseInfoService.queryHouseOrderBy (condition, fieldN,startTime,areaId);
		} catch (Exception e) {
			return list;
		}
		
		return list;
	}
	
	/**
	 * 根据区推出前十性价比房源
	 * @param areaId 区域id
	 * @param startTime 出租时间
	 * @return
	 */
	@RequestMapping("/hot/top/ten/{areaId}")
	@ResponseBody
	public List<HouseInfo> queryHotHouseInfoTopTen(@PathVariable Integer areaId,Date startTime){
		List<HouseInfo> list=null;
		try {
			list=dubboxHouseInfoService.queryHotHouseInfoTopTen(startTime, areaId);
		} catch (Exception e) {
			return list;
		}
		return list;
	}
	
	/**
	 * 增加房源
	 * @param houseInfo
	 * @return
	 */
	//@RequestMapping("")
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
	 * @param houseId
	 * @return
	 */
//	@RequestMapping("/detail")
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


	/**
	 * 根据房屋id查找房屋
	 * @param houseId
	 * @return
	 */
	@RequestMapping("/detail")
	public String toHouseDetail(Long houseId, Model model){
		HouseInfo houseInfo = dubboxHouseInfoService.queryOneByHouseId(houseId);
		model.addAttribute("houseInfo", houseInfo);
		model.addAttribute("imageList", houseInfo.getHouseImages().subList(0,2));
		return "/home/home";

	}
	
	
}
