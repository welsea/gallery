package util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.transaction.interceptor.MatchAlwaysTransactionAttributeSource;

public class DataValidator {
	/*
	 * 验证字符串
	 */
	public static boolean isNullOrEmpty(String input) {
		return "".equals(input)||input==null;
	}
	
	/*
	 * 匹配正则表达式
	 */
	public static boolean regexMatch(String input,String pattern) {
		if(isNullOrEmpty(input)){
			return false;
		}
		return Pattern.compile(pattern).matcher(input).matches();
	}
	
	/*
	 * TML编码
	 */
	public static String  htmlEncode(String input) {
		if(!DataValidator.isNullOrEmpty(input)){
			input=input.replace("&", "&amp;");
			input=input.replace("<", "&lt;");
			input=input.replace(">", "&gt;");
			input=input.replace("'", "&#39;");
			input=input.replace("\"", "&quot;");
			input=input.replace("\r\n", "<br>");
			input=input.replace("\n", "<br>");
		}
		return input;
	}
	
	/*
	 * html反编码
	 */
	public static String htmlDecode(String input) {
		if(!DataValidator.isNullOrEmpty(input)){
			input=input.replace( "&amp;","&");
			input=input.replace("&lt;","<");
			input=input.replace("&gt;",">");
			input=input.replace("&#39;","'");
			input=input.replace("&quot;","\"");
			input=input.replace( "<br>","\r\n");
			input=input.replace("<br>","\n");
		}
		return input;
	}
	
	/*
	 * html编码
	 */
	public static String serverHtmlEncode(String input) {
		if(!DataValidator.isNullOrEmpty(input)){
			input=input.replace("&", "&amp;");
			input=input.replace("<", "&lt;");
			input=input.replace(">", "&gt;");
			input=input.replace("'", "&#39;");
			input=input.replace("\"", "&quot;");
		}
		return input;
	}
	
	/*
	 * html反编码，不支持换行符
	 */
	public static String serverHtmlDecode(String input) {
		if(DataValidator.isNullOrEmpty(input))
			return input;
		
		input=input.replace( "&amp;","&");
		input=input.replace("&lt;","<");
		input=input.replace("&gt;",">");
		input=input.replace("&#39;","'");
		input=input.replace("&quot;","\"");
	
		return input;
	}
	
	/*
	 * 过滤所有html代码
	 */
	public static String removeHtml(String input) {
		if(DataValidator.isNullOrEmpty(input))
			return input;
		Pattern p=Pattern.compile("<[^>]*>",Pattern.MULTILINE |Pattern.UNICODE_CASE);
		Matcher m=p.matcher(input);
		return m.replaceAll("");
	}
}
