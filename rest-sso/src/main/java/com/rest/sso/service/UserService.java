package com.rest.sso.service;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.rest.common.service.BaseService;
import com.rest.common.service.RedisService;
import com.rest.sso.mapper.UserMapper;
import com.rest.sso.pojo.User;


@Service
public class UserService extends BaseService<User>{
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private RedisService redisService;
	private static final ObjectMapper MAPPER = new ObjectMapper();
	
	//用户监测
	public Boolean check(String username){
		User user = userMapper.check(username);
		return null != user;
	}
	
	//注册
	public String saveRegister(User user){
		user.setCreated(new Date());
		user.setUpdated(user.getCreated());
		//因为页面上不填写，随便写的值，防止数据库唯一校验出错
		user.setPassword(DigestUtils.md5Hex(user.getPassword()));
		
		userMapper.insertSelective(user);
		return user.getUsername();
	}
	
	//登录
	public String saveLogin(String username, String passwd) throws JsonProcessingException{
		//1.根据用户名查询，和密码进行比较（规范）
		String ticket = "";
		User params = new User();
		params.setUsername(username);
		
		User curUser = super.queryByWhere(params);
		if(null!=curUser){
			//2.密码进行比较
			String newPasswd = DigestUtils.md5Hex(passwd);
			if(newPasswd.equals(curUser.getPassword())){
				//3.生成ticket：唯一性、动态性、混淆
				ticket = DigestUtils.md2Hex(System.currentTimeMillis()+curUser.getUsername() + curUser.getId());
				//4.把当前用户信息放入redis，设置一个定期自动删除，设置过期：7天，10天
				redisService.set(ticket, MAPPER.writeValueAsString(curUser), 60*60*24*7);	//60*60*24*7可以，jvm编译时值被算出来了
			}
		}
		return ticket;
	}
}
