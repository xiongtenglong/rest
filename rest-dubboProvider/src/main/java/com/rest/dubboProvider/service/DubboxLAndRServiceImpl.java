package com.rest.dubboProvider.service;

import java.util.Date;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.rest.common.service.BaseService;
import com.rest.common.service.RedisService;
import com.rest.dubboProvider.mapper.UserMapper;
import com.rest.dubbox.pojo.User;
import com.rest.dubbox.service.DubboxLAndRService;

public class DubboxLAndRServiceImpl extends BaseService<User> implements DubboxLAndRService{
	
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private RedisService redisService;
	private static final ObjectMapper MAPPER = new ObjectMapper();
	
	private static Logger log = Logger.getLogger(DubboxLAndRServiceImpl.class);
	@Override
	public String saveRegist(String username, String password, String phone) {
		User user = new User();
		user.setUsername(username);
		user.setPhone(phone);
		user.setCreated(new Date());
		user.setUpdated(user.getCreated());
		//因为页面上不填写，随便写的值，防止数据库唯一校验出错
		user.setPassword(DigestUtils.md5Hex(password));
		
		userMapper.insertSelective(user);
		return username;
		
	}

	@Override
	public String saveLogin(String username, String password){
		String ticket = "";
		User params = new User();
		params.setUsername(username);
		
		User curUser = super.queryByWhere(params);
		if(null!=curUser){
			//2.密码进行比较
			String newPasswd = DigestUtils.md5Hex(password);
			if(newPasswd.equals(curUser.getPassword())){
				//3.生成ticket：唯一性、动态性、混淆
				ticket = DigestUtils.md2Hex(System.currentTimeMillis()+curUser.getUsername() + curUser.getId());
				//4.把当前用户信息放入redis，设置一个定期自动删除，设置过期：7天，10天
				try {
					redisService.set(ticket, MAPPER.writeValueAsString(curUser), 60*60*24*7);
				} catch (JsonProcessingException e) {
					log.debug(e.getMessage());
				}	//60*60*24*7可以，jvm编译时值被算出来了
			}
		}
		return ticket;
		
	}

	@Override
	public Boolean check(String username) {
		User user = userMapper.check(username);
		return null != user;
	}

}
