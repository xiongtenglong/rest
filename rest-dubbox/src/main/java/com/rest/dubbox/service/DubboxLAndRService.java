package com.rest.dubbox.service;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
@Path("user")
//支持的请求类型
@Consumes({MediaType.APPLICATION_JSON,MediaType.TEXT_XML})
@Produces({ContentType.APPLICATION_JSON_UTF_8,ContentType.TEXT_XML_UTF_8})
public interface DubboxLAndRService {
	
	@GET
	@Path("check")
	public Boolean check(@QueryParam(value="username") String username);
	
	@POST
	@Path("regist")
	public String saveRegist(@QueryParam(value="username") String username,
							 @QueryParam(value="password") String password,
							 @QueryParam(value="phone") String phone
							 );
	@POST
	@Path("login")
	public String saveLogin(@QueryParam(value="username") String username,
				 		    @QueryParam(value="password") String password
				 		    );
}
