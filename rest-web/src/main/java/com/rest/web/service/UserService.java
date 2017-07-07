package com.rest.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.rest.common.service.HttpClientService;
import com.rest.web.pojo.User;

@Service
public class UserService {
	@Autowired
	private HttpClientService httpClientService;
	private static final ObjectMapper MAPPER = new ObjectMapper();
	public String saveRegist(User user) {
		String url = "http://sso.rest.com/regist";
		return null;
	}

}
