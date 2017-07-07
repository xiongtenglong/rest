package com.rest.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.common.vo.SysResult;
import com.rest.web.pojo.User;
import com.sun.jmx.snmp.UserAcl;

@Controller
public class LoginAndRegistController {
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
		return SysResult.oK();
	}
}
