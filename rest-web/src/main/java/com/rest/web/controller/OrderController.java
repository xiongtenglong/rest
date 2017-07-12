package com.rest.web.controller;

import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.common.util.TimeUtils;
import com.rest.common.vo.SysResult;
import com.rest.dubbox.pojo.HouseInfo;
import com.rest.dubbox.pojo.Order;
import com.rest.dubbox.service.DubboxHouseInfoService;
import com.rest.dubbox.service.DubboxOrderService;
import com.rest.web.utils.UserThreadLocal;


@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private DubboxOrderService dubboxOrderService;
	@Autowired
	private DubboxHouseInfoService dubboxHouseInfoService;

	@RequestMapping("/page")
	public String toOrderPage(Long houseId,Model model){
		HouseInfo houseInfo=null;
			houseInfo=dubboxHouseInfoService.queryOneByHouseId(houseId);
			model.addAttribute("houseInfo",houseInfo);
		return "/center/orderCreate";
	}
	@RequestMapping("/submit")
	@ResponseBody
	public SysResult saveOrder(Long houseId,Date startDate,Date endDate,String payment){
		if(TimeUtils.parseInt(endDate)<=TimeUtils.parseInt(startDate)){
			return SysResult.build(201,"输入时间不合法！");
		}
		Long userId=UserThreadLocal.getUserId();
		String orderId=dubboxOrderService.saveOrder(userId,houseId,startDate,endDate,payment);
		if(StringUtils.isNotEmpty(orderId)){
			return SysResult.oK(orderId);
		}
		return SysResult.build(201, "生成订单失败！");
	}
}
