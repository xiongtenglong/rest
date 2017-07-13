package com.rest.dubboProvider.mapper;

import java.util.Date;
import java.util.List;

import com.rest.common.mapper.SysMapper;
import com.rest.dubbox.pojo.Order;

public interface OrderMapper extends SysMapper<Order> {

	/**
	 * 根据userId查询用户订单
	 * @param userId 用户id
	 * @return order集合
	 */
	public List<Order> selectByUserId(Long userId);

	/**
	 * 定时清理未完成订单
	 * @param date
	 */
	/*
	public void paymentOrderScan(Date date);
*/
}
