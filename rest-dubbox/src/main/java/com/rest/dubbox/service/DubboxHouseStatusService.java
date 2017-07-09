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

@Path("houseStatus")
@Consumes({MediaType.APPLICATION_JSON, MediaType.TEXT_XML})
@Produces({ContentType.APPLICATION_JSON_UTF_8, ContentType.TEXT_XML_UTF_8})
public interface DubboxHouseStatusService {

	/**
	 * 根据开始时间，房屋id查询房屋出租状态
	 * @param houseId 房屋id
	 * @param beginDate 开始时间
	 * @return sysResult
	 */
	@Path("unitDetail")
	@GET
	public List<List<List<Integer>>> getUnitDate(@QueryParam("houseId")Long houseId,
								@QueryParam("beginDate")Date beginDate);
}
