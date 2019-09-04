package com.bw.Utils;

public class StringUtil {
  
	
	public static String Myreplace(String str){
		String str1="\\\\n\\\\r";
		String string = str.replaceAll(str1,"\n");
		
	    String str2="\\\\r";
	    String replaceAll = string.replaceAll(str2,"<br/>");
		return replaceAll;
	}
	
	public static Boolean isphone(String str){
	  String reg_phone="^1[3|8|6|5|7]\\d{9}$";
	    boolean matches = str.matches(reg_phone);
		return matches;
	}
	
	public static Boolean isemail(String str){
		//643219101@qq.com
		String reg_isemail="^\\d{6,11}[@][a-zA-Z]{2}[.][a-zA-Z]{3}$";
		boolean matches = str.matches(reg_isemail);
		return matches;
	}
}
