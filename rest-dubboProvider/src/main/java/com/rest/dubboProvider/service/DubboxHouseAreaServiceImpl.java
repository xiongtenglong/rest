package com.rest.dubboProvider.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.rest.common.service.BaseService;
import com.rest.common.vo.SysResult;
import com.rest.dubboProvider.mapper.HouseAreaMapper;
import com.rest.dubbox.pojo.HouseArea;
import com.rest.dubbox.service.DubboxHouseAreaService;

public class DubboxHouseAreaServiceImpl extends BaseService<HouseArea> implements DubboxHouseAreaService{

	@Autowired
	private HouseAreaMapper houseAreaMapper;
	@Override
	public SysResult queryallCity() {
		HouseArea params=new HouseArea();
		params.setAreaPid(0);
		params.setStatus(1);
		List<HouseArea> list=super.queryListByWhere(params);
		return SysResult.oK(list);
	}

}
