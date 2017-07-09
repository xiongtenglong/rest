package com.rest.web.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rest.dubbox.service.DubboxHouseStatusService;

@Controller
@RequestMapping("houseStatus")
public class HouseStatusController {

	@Autowired
	private DubboxHouseStatusService dubboxHouseStatusService;
	
	@RequestMapping("unitDate/{houseId}")
	@ResponseBody
	public List<List<List<Integer>>> queryHouseStatusByIdAndTime(@PathVariable Long houseId,Date beginDate){
		List<List<List<Integer>>> unitDate =null;
		try {
			unitDate = dubboxHouseStatusService.getUnitDate(houseId, beginDate);
		} catch (Exception e) {
			return unitDate;
		}
		return unitDate;
	}
}
