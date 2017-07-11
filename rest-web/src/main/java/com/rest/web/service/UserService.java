package com.rest.web.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.rest.common.service.HttpClientService;
import com.rest.dubbox.service.DubboxLAndRService;
import com.rest.web.pojo.User;

@Service
public class UserService {
	@Autowired
	private DubboxLAndRService dubboxLAndRService;
	private static final ObjectMapper MAPPER = new ObjectMapper();
	private static Logger log = Logger.getLogger(UserService.class);
	public String saveRegist(User user) throws Exception {
		
		return dubboxLAndRService.saveRegist(user.getUsername(), user.getPassword(), user.getPhone());
	}
	public String saveLogin(String username, String password){
		
		String ticket = dubboxLAndRService.saveLogin(username, password);
		
		return ticket;
	}

}
