package com.rest.dubboProvider.mapper;

import com.rest.common.mapper.SysMapper;
import com.rest.dubbox.pojo.User;

public interface UserMapper extends SysMapper<User>{
	
	User check(String username);
}
