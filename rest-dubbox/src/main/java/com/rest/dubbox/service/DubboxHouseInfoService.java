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
import com.rest.common.vo.SysResult;
import com.rest.dubbox.pojo.HouseInfo;

@Path("house")
@Consumes({MediaType.APPLICATION_JSON, MediaType.TEXT_XML})
@Produces({ContentType.APPLICATION_JSON_UTF_8, ContentType.TEXT_XML_UTF_8})
public interface DubboxHouseInfoService {

	/**
	 * 根据出租时间和地区id查询有效房源信息
	 * @param outTime 出租时间
	 * @param areaId 区域id
	 * @return sysResult
	 */
	@Path("list")
	@GET
	public SysResult queryHouseListByTimeArea(@QueryParam("outTime")Date outTime,
											@QueryParam("areaId")Integer areaId);
	
	/**
	 * 根据条件排序房源信息
	 * @param condition 条件
	 * @param fieldN 字段名
	 * @return list 房源信息的集合
	 */
	@Path("orderBy")
	@GET
	public List<HouseInfo> queryHouseOrderBy(@QueryParam("condition")String condition,
											@QueryParam("fieldN")String fieldN,
											@QueryParam("outTime")Date outTime,
											@QueryParam("areaId")Integer areaId);
	
	/**
	 * 根据区域查询热门十大房屋信息
	 * @param outTime 出租时间
	 * @param areaId 区域id
	 * @return 
	 */
	@Path("hot_top")
	@GET
	public List<HouseInfo> queryHotHouseInfoTopTen(@QueryParam("outTime")Date outTime,
											@QueryParam("areaId")Integer areaId);

	/**
	 * 根据房子id查询房子信息
	 * @param houseId
	 * @return
	 */
	@Path("findOne")
	@GET
	public HouseInfo queryOneByHouseId(@QueryParam("houseId")Long houseId);
}
