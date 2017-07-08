package com.rest.web.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.rest.common.service.HttpClientService;
import com.rest.web.pojo.HouseInfo;

@Service
public class HouseInfoService {
	@Autowired
	private HttpClientService httpClientService;
	
	private static final ObjectMapper OBJECTMAPPER = new ObjectMapper();

	public void add(HouseInfo houseInfo) throws Exception {
		String url = "manage.rest.com/houseInfo/addHouse";
		Map<String,String> param = new HashMap<String, String>();
		param.put("userId", houseInfo.getUserId()+"");
		param.put("title", houseInfo.getTitle());
		param.put("prive", houseInfo.getPrive()+"");
		param.put("houseDesc", houseInfo.getHouseDesc());
		param.put("imagePath", houseInfo.getImagePath());
		param.put("address", houseInfo.getAddress());
		param.put("notice", houseInfo.getNotice());
		
		String jsonData = httpClientService.doPost(url, param);
		
	}

	public HouseInfo findOne(Long houseId) throws Exception {
		String url = "manage.rest.com/houseInfo/findHouse/"+houseId;
		String jsonData = httpClientService.doGet(url);
		String data = OBJECTMAPPER.readTree(jsonData).get("data").asText();
		return OBJECTMAPPER.readValue(data, HouseInfo.class);
	}
	
	
}
