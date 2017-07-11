package com.rest.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.common.util.CookieUtils;
import com.rest.common.vo.SysResult;
import com.rest.web.pojo.User;
import com.rest.web.service.UserService;
import com.sun.jmx.snmp.UserAcl;

@Controller
public class LoginAndRegistController {
	@Autowired
	private UserService userService;
	private static Logger log = Logger.getLogger(LoginAndRegistController.class);
	//转向注册页面
	@RequestMapping("/regist")
	public String toRegist(){
		return "login/regist";
	}
	
	//注册
	@RequestMapping("/doRegist")
	public String doRegist(User user,Model model){
		String username = "";
		try {
			username = userService.saveRegist(user);
		} catch (Exception e) {
			log.debug(e.getMessage());
		}
		model.addAttribute("username", username);
		return "login/login";
	}
	
	//转向登陆页面
	@RequestMapping("/login")
	public String toLogin(){
		return "login/login";
	}
	
	//登录
	@RequestMapping("/doLogin")
	public String doLogin(String username,String password,HttpServletRequest request,HttpServletResponse response){
		String ticket = userService.saveLogin(username, password);
		String cookieName = "REST_TICKET";
		//将ticket放在本地的浏览器的cookie中，作为唯一标识，可以同可ticket从redis获取用户信息
		CookieUtils.setCookie(request, response, cookieName, ticket, 60*60*24*7);
		return "redirect:/home.html";
	}
	
	//退出
	@RequestMapping("/doLogout")
	public String doLogout(HttpServletRequest request, HttpServletResponse response){
		//删除cookie
		CookieUtils.deleteCookie(request, response, "REST_TICKET");
		
		return "redirect:/home.html";
	}
	
}
