package com.rest.sso.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.common.service.RedisService;
import com.rest.common.vo.SysResult;
import com.rest.sso.pojo.User;
import com.rest.sso.service.UserService;



@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private RedisService redisService;
	
	//http://sso.jt.com/user/check/{param}
	@RequestMapping("/check/{username}")
	@ResponseBody
	public SysResult check(@PathVariable String username){
		try{
			Boolean flag = userService.check(username);
			return SysResult.oK(flag);
		}catch(Exception e){
			return SysResult.build(201, "监测失败!");
		}
	}
	
	//http://sso.jt.com/user/register
	@RequestMapping("/regist")
	@ResponseBody
	public SysResult register(User user){
		try{
			String username = userService.saveRegister(user);
			return SysResult.oK(username);
		}catch(Exception e){
			return SysResult.build(201, "注册失败!", user.getUsername());
		}
	}
	
	//http://sso.jt.com/user/login
	@RequestMapping("/login")
	@ResponseBody
	public SysResult login(String u, String p){
		try{
			String ticket = userService.saveLogin(u, p);
			return SysResult.oK(ticket);
		}catch(Exception e){
			return SysResult.build(201, "用户登录失败!");
		}
	}
	
	//http://sso.jt.com/user/query/{ticket}
	@RequestMapping("/query/{ticket}")
	@ResponseBody
	public SysResult queryByTicket(@PathVariable String ticket){
		try{
			String userJson = redisService.get(ticket);
			return SysResult.oK(userJson);
		}catch(Exception e){
			return SysResult.build(201, "查询用户信息失败!");
		}
	}
}
