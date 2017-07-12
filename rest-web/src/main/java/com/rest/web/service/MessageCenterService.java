package com.rest.web.service;

import java.util.List;

import com.rest.dubbox.pojo.HouseInfo;
import com.rest.dubbox.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.rest.common.service.HttpClientService;


@Service
public class MessageCenterService {
	
	@Autowired
	private HttpClientService httpClientService;
	
	private static final ObjectMapper OBJECTMAPPER = new ObjectMapper();
	/**
	 * 获取个人信息
	 * @param userId
	 * @return
	 * @throws Exception
	 */
	public User findUserById(Long userId) throws Exception {
		String url = "http://manage.rest.com/messageCenter/findUser/"+userId;
		String jsonData = httpClientService.doGet(url);
		User user = OBJECTMAPPER.readValue(jsonData, User.class);
		return user;
	}
	//获取个人房屋信息
	public List<HouseInfo> findHouseById(Long id) throws Exception {
		String url = "http://manage.rest.com/messageCenter/findhouse/"+id;
		String jsonData = httpClientService.doGet(url);
		JsonNode jsonNode = OBJECTMAPPER.readTree(jsonData);
        JsonNode data = jsonNode.get("data");
        Object obj = null;
        if (data.isArray() && data.size() > 0) {
            obj = OBJECTMAPPER.readValue(data.traverse(),
            		OBJECTMAPPER.getTypeFactory().constructCollectionType(List.class, HouseInfo.class));
        }
        return (List<HouseInfo>) obj;
	}

}
