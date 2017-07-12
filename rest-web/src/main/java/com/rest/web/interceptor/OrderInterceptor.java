package com.rest.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.rest.common.service.HttpClientService;
import com.rest.common.util.CookieUtils;
import com.rest.dubbox.pojo.User;
import com.rest.web.utils.UserThreadLocal;

public class OrderInterceptor implements HandlerInterceptor{

	@Autowired
	private HttpClientService httpClientService;
	private static final ObjectMapper MAPPER = new ObjectMapper();
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String ticket=CookieUtils.getCookieValue(request, "REST_TICKET");
		if(StringUtils.isNotEmpty(ticket)){
			String url="http://sso.rest.com/user/query/"+ticket;
			String result =httpClientService.doGet(url);
			if(StringUtils.isNotEmpty(result)){
				JsonNode jsonNode = MAPPER.readTree(result);
				String userJson=jsonNode.get("data").asText();
				User user=MAPPER.readValue(userJson, User.class);
				UserThreadLocal.setTL(user);
				return true;//放行
			}
		}
		response.sendRedirect("/login.html");
		return false;//拦截
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}



}
