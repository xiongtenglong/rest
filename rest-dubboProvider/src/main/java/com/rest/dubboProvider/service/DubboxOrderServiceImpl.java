package com.rest.dubboProvider.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.rest.common.service.BaseService;
import com.rest.common.util.TimeUtils;
import com.rest.dubboProvider.mapper.HouseStatusMapper;
import com.rest.dubboProvider.mapper.OrderMapper;
import com.rest.dubbox.pojo.HouseStatus;
import com.rest.dubbox.pojo.Order;
import com.rest.dubbox.service.DubboxOrderService;

public class DubboxOrderServiceImpl extends BaseService<Order> implements DubboxOrderService{
	@Autowired
	private OrderMapper orderMapper;
	@Autowired
	private HouseStatusMapper houseStatusMapper;

	@Override
	public String saveOrder(Long userId, Long houseId, Date startDate, Date endDate, String payment) {
		String orderId=userId+""+System.currentTimeMillis();;
		Order order=new Order();
		HouseStatus houseStatus=new HouseStatus();
		order.setHouseId(houseId);
		order.setUserId(userId);
		order.setStartTime(startDate);
		order.setEndTime(endDate);
		order.setPayment(payment);
		order.setStatus(1);
		orderMapper.insertSelective(order);
		while(TimeUtils.parseInt(startDate)<TimeUtils.parseInt(endDate)){
			HouseStatus oldHouseStatus = houseStatusMapper.selectStatusByhouseIdAndOutTime(houseId,TimeUtils.parseInt(startDate));
			houseStatus.setHouseId(houseId);
			houseStatus.setOutTime(TimeUtils.parseInt(startDate));
			houseStatus.setOutStatus(2);
			if(oldHouseStatus==null){
				houseStatusMapper.insertSelective(houseStatus);
			}else{
				houseStatusMapper.updateHouseStatusByHouseidAndOutTime(houseId,houseStatus.getOutTime(),houseStatus.getOutStatus());
			}
			startDate=TimeUtils.dateAdd(startDate);
		}
		
		return orderId;
	}

	@Override
	public List<Order> fandOrderByUserId(Long userId) {
		List<Order> list=null;
		list=orderMapper.selectByUserId(userId);
		return list;
	}

}
