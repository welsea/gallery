package util;

import java.text.*;
import java.util.*;

public class DataConverter {
	/*
	 * 格式化日期，转为字符串
	 */
	
	public static String dataToString(Date date){
		return dataToString(date,"yyyy-MM-dd HH:mm:ss");
	}
	
	public static String dataToString(Date date,String formatType) {
		if(date==null){
			date=Utility.getNowDateTime();
		}
		SimpleDateFormat formatter=new SimpleDateFormat(formatType);
		return formatter.format(date);
	}
	
	/*
	 * 字符串转日期
	 */
	public static Date toDate(String input) {
		return toDate(input,"yyyy-MM-dd HH:mm:ss");
	}
	public static Date toDate(String input,String formetType) {
		SimpleDateFormat format=new SimpleDateFormat(formetType);
		Date dt=new Date();
		if(DataValidator.isNullOrEmpty(input)){
			return dt;
		}
		try{
		dt=format.parse(input);
		}catch (ParseException e) {
			// TODO: handle exception
		}
		return dt;
	}
	
	/*
	 * 短日期格式
	 */
	public static java.util.Date toShortDate(String input){
		return toDate(input,"yyyy-MM-dd");
	}
	
	/*
	 * 长日期格式
	 */
	public static java.util.Date toFullDate(String input){
		return toDate(input,"yyyy-MM-dd HH:mm:ss");
	}
	
	/*
	 * 字符串转为int
	 */
	public static int  toInt(String input) {
		try{
			return Integer.parseInt(input);
		}catch (Exception e) {
			// TODO: handle exception
			return 0;
		}
		
	}

}
