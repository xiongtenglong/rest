package com.rest.dubboProvider.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.rest.common.service.BaseService;
import com.rest.common.util.TimeUtils;
import com.rest.dubboProvider.mapper.HouseStatusMapper;
import com.rest.dubbox.pojo.HouseStatus;
import com.rest.dubbox.service.DubboxHouseStatusService;

public class DubboxHouseStatusServiceImpl extends BaseService<HouseStatus> implements DubboxHouseStatusService{

	@Autowired
	private HouseStatusMapper houseStatusMapper;
	
	@Override
	public List<List<List<Integer>>> getUnitDate(Long houseId, Date beginDate) {
		Calendar cal=Calendar.getInstance();
		cal.setTime(beginDate);
		int newday=cal.get(Calendar.DAY_OF_MONTH)-1;
		cal.add(Calendar.DAY_OF_YEAR, -newday);
		cal.setTime(cal.getTime());
		List<Integer> outList=houseStatusMapper.queryOutTimeByHousId(houseId,TimeUtils.parseInt(beginDate));
		List<List<List<Integer>>> resultList=new ArrayList<List<List<Integer>>>();
		for (int i = 0; i < 7 ; i++) {
			List<List<Integer>> monthList=new ArrayList<List<Integer>>();
			int dayInMonthNum = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
			for (int j = 0; j < dayInMonthNum; j++) {
				Integer outTime=TimeUtils.parseInt(cal.getTime());
				List<Integer> temp=new ArrayList<Integer>();
				if(outList.contains(outTime)){
					temp.add(0);
				}else if(outTime<TimeUtils.parseInt(beginDate)){
					temp.add(0);
				}else{
					temp.add(1);
				}
 				cal.add(Calendar.DAY_OF_YEAR, 1);
 				monthList.add(temp);
			}
			resultList.add(monthList);
		}
		return resultList;
	}


}
