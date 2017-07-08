package com.rest.sso.mapper;

import java.util.Map;

import com.rest.common.mapper.SysMapper;
import com.rest.sso.pojo.User;



public interface UserMapper extends SysMapper<User>{

	User check(String username);

	
	
}
