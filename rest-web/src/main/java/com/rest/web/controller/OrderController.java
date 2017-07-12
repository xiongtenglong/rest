package com.rest.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rest.dubbox.pojo.HouseInfo;
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

	@RequestMapping("/create")
	public String toCreateOrderPage(Long houseId,Model model){
		HouseInfo houseInfo=dubboxHouseInfoService.queryOneByHouseId(houseId);
		return "/center/orderCreate";
	}
}
