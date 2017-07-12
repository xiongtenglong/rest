package com.rest.web.controller;

import java.util.List;

import com.rest.dubbox.pojo.User;
import com.rest.web.utils.UserThreadLocal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rest.web.service.MessageCenterService;

@Controller
@RequestMapping("/user/")
public class MessageCenterController {
	@Autowired
	private MessageCenterService messageCenterService;
	/**
	 * 转向个人中心
	 * @return
	 */
	@RequestMapping("mycenter")
	public String toMessageCenter(Model model) {
		User user = UserThreadLocal.getTL();
		model.addAttribute("user",user);
		System.out.println(user);
		return "center/messageCenter";
	}
	/**
	 * 获取个人信息
	 * @param model
	 * @return
	 */
	@RequestMapping("userInfo")
	public String toCenter(Model model) {
		Long userId = UserThreadLocal.getUserId();
		try {
			User user = messageCenterService.findUserById(userId);
			model.addAttribute("user",user);
		} catch (Exception e) {
			return "redirect:/login.html";
		}
		return "center/center";
	}
	
	/**
	 * 获取个人房屋信息
	 * @return
	 */
	@RequestMapping("houseMessage")
	public String houseMessage(Model model) {

		return "center/houseMessage";
	}
	/**
	 * 获取个人订单信息
	 * @return
	 */
	@RequestMapping("order")
	public String order(Model model) {

		return "center/order";
	}
	/**
	 * 密码修改
	 * @return
	 */
	@RequestMapping("uppassword")
	public String uPpassword(Model model) {

		return "center/UPpassword";
	}
}
