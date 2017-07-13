package com.rest.manage.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rest.manage.mapper.HouseInfoMapper;
import com.rest.manage.mapper.UserMapper;
import com.rest.manage.pojo.HouseInfo;
import com.rest.manage.pojo.User;

@Service
public class MessageCenterService {
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private HouseInfoMapper houseInfoMapper;
	//根据ID查询用户信息
	public User findUserById(Long id) {
		User user = userMapper.selectUserByPrimaryKey(id);
		return user;
	}
	public List<HouseInfo> findHouseById(Long id) {
		HouseInfo house = new HouseInfo();
		house.setUserId(id);
		List<HouseInfo> houses = houseInfoMapper.select(house);
		return houses;
	}
	
}
