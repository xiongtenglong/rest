package com.rest.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginAndRegistController {
	@RequestMapping("/login")
	public String toLogin(){
		return "login/login";
	}
	@RequestMapping("/regist")
	public String toRegist(){
		return "login/regist";
	}
}
