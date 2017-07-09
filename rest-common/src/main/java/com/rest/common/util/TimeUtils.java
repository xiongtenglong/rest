package com.rest.common.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeUtils {

	private static SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
	public static String toOutTime(Date date){
		return sdf.format(date);
	}
	public static Integer parseInt(Date date){
		return Integer.parseInt(toOutTime(date));
	}
}
