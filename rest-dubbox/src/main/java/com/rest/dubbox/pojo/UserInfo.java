package com.rest.dubbox.pojo;

import javax.persistence.Id;
import javax.persistence.Table;

import com.rest.common.po.BasePojo;

@Table(name="tb_user_info")
public class UserInfo extends BasePojo{
	@Id
	private Long userInfoId;
	private String name;
	private String cardNo;
	private Integer status;
	private	String gender;
	private String email;
	private String cardPath;
	private Integer grade;
}
