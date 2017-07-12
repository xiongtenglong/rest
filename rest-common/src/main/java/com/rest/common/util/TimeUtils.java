package com.rest.common.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class TimeUtils {

	private static SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMdd");
	private static Calendar cal=Calendar.getInstance();
	public static String toOutTime(Date date){
		return sdf.format(date);
	}
	public static Integer parseInt(Date date){
		return Integer.parseInt(toOutTime(date));
	}
	public static Date dateAdd(Date date){
		cal.setTime(date);
		cal.add(Calendar.DAY_OF_YEAR,1);
		return cal.getTime();
		
	}
}
