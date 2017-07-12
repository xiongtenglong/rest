package com.rest.web.utils;

import com.rest.dubbox.pojo.User;

/**
 * 本地线程变量工具类
 * @author Administrator
 *
 */
public class UserThreadLocal {

	private static ThreadLocal<User> TL=new ThreadLocal<User>();
	public static void setTL(User user){
		TL.set(user);
	}
	public static User getTL(){
		return TL.get();
	}
	public static Long getUserId(){
		return getTL().getId();
	}
}
