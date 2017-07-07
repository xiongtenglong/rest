package com.rest.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.common.vo.SysResult;
import com.rest.web.pojo.User;
import com.rest.web.service.UserService;
import com.sun.jmx.snmp.UserAcl;

@Controller
public class LoginAndRegistController {
	@Autowired
	private UserService userService;
	//转向登陆页面
	@RequestMapping("/login")
	public String toLogin(){
		return "login/login";
	}
	//转向注册页面
	@RequestMapping("/regist")
	public String toRegist(){
		return "login/regist";
	}
	
	//注册
	@RequestMapping("/doRegist")
	@ResponseBody
	public SysResult doRegist(User user){
		String username = userService.saveRegist(user);
		return SysResult.oK(username);
	}
}
