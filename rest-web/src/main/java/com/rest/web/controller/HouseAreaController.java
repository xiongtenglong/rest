package com.rest.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rest.dubbox.pojo.HouseArea;
import com.rest.dubbox.service.DubboxHouseAreaService;

@Controller
@RequestMapping("/area")
public class HouseAreaController {

	@Autowired
	private DubboxHouseAreaService dubboxHouseAreaService;
	@RequestMapping("/allCity")
	public List<HouseArea> queryAreaList(){
		return (List<HouseArea>) dubboxHouseAreaService.queryallCity().getData();
	}
	
}
