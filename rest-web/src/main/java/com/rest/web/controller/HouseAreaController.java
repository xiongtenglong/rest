package com.rest.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rest.dubbox.pojo.HouseArea;

@Controller
@RequestMapping("/area")
public class HouseAreaController {

	public List<HouseArea> queryAreaList(){
		return null;
	}
	
}
