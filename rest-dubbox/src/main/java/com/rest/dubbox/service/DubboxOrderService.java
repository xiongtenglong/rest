package com.rest.dubbox.service;

import java.util.Date;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.rest.dubbox.pojo.Order;

@Path("order")
@Consumes({MediaType.APPLICATION_JSON, MediaType.TEXT_XML})
@Produces({ContentType.APPLICATION_JSON_UTF_8, ContentType.TEXT_XML_UTF_8})
public interface DubboxOrderService {

	/**
	 * 新增订单
	 * @param userId 用户id
	 * @param houseId 房屋id
	 * @param startDate 起始时间
	 * @param endDate 结束时间
	 * @return 订单id
	 */
	@Path("save")
	@GET
	public String saveOrder(@QueryParam("userId")Long userId,
						@QueryParam("houseId")Long houseId,
						@QueryParam("startDate")Date startDate,
						@QueryParam("endDate")Date endDate,
						@QueryParam("payment")String payment);
	@Path("find")
	@GET
	public List<Order> fandOrderByUserId(@QueryParam("userId")Long userId);

}
