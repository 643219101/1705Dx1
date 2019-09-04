package com.bw.Test;

import org.junit.Test;

import com.bw.Utils.StringUtil;

public class TestDome {
@Test
public void  replace(){
	 String string = StringUtil.Myreplace("你好啊\n\r我很好\n\r123恩恩\\r");
	 System.out.println(string);
	
}
@Test
public void  isphone(){
  String isphone="13505228880";
   Object isphone2 = StringUtil.isphone(isphone);
    System.out.println(isphone2);
}
@Test
public void  isemail(){
	String isemail="6432191011@qq.com";
	Object isemail2 = StringUtil.isemail(isemail);
	System.out.println(isemail2);
}
}
