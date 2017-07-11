package com.rest.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rest.web.pojo.HouseInfo;
import com.rest.web.pojo.User;
import com.rest.web.service.MessageCenterService;

@Controller
public class MessageCenterController {
	@Autowired
	private MessageCenterService messageCenterService;
	/**
	 * 转向个人中心
	 * @return
	 */
	@RequestMapping("center")
	public String toMessageCenter() {
		return "messageCenter";
	}
	/**
	 * 获取个人信息
	 * @param model
	 * @return
	 */
	@RequestMapping("center")
	public String toCenter(Model model) {
		Long id = 1L;
		try {
			User user = messageCenterService.findUserById(id);
			model.addAttribute("user", user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "center";
	}
	
	/**
	 * 获取个人房屋信息
	 * @return
	 */
	@RequestMapping("houseMessage")
	public String houseMessage(Model model) {
		Long id = 1L;
		try {
			List<HouseInfo> houseList = messageCenterService.findHouseById(id);
			model.addAttribute("houseList", houseList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "houseMessage";
	}
}
