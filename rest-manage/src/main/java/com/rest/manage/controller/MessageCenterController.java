package com.rest.manage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.manage.pojo.HouseInfo;
import com.rest.manage.pojo.User;
import com.rest.manage.service.MessageCenterService;

@Controller
@RequestMapping("/messageCenter")
public class MessageCenterController {
	@Autowired
	private MessageCenterService messageCenterService;
	/**
	 * 信息中心查询用户信息
	 * @return
	 */
	@RequestMapping("/findUser/{id}")
	@ResponseBody
	public User findUser(@PathVariable Long id) {
		User user = messageCenterService.findUserById(id);
		return user;
	}
	
	/**
	 * 信息中心查询房屋信息
	 * @return
	 */
	@RequestMapping("/findhouse/{id}")
	@ResponseBody
	public List<HouseInfo> findhouse(@PathVariable Long id) {
		List<HouseInfo> houses = messageCenterService.findHouseById(id);
		return houses;
	}
}
