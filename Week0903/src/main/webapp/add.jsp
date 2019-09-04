<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
    <!-- c:set声明变量 -->
<c:set var="path" value="${pageContext.request.contextPath}" scope="page"/>
<!-- 引入css样式 -->
<link rel="stylesheet" type="text/css" href="${path}/resource/css/css.css"/>
<!-- 引入jquery插件 -->
<script type="text/javascript" src="${path}/resource/jquery/jquery-3.2.1.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form action="">
       <table>
              <tr>
                        <td>名称:<input type="text" name="name" id="name"> </td>
              </tr>
              <tr>
                        <td>剧情:<input type="text" name="juqing" id="juqing"> </td>
              </tr>
              <tr>
                        <td>导演:<input type="text" name="daoyan" id="daoyan"> </td>
              </tr>
              <tr>
                        <td>时间:<input type="text" name="times" id="times"> </td>
              </tr>
              <tr>
                        <td>类别:<div></div> </td>
              </tr>
              <tr>
                        <td><input type="button" value="添加"></td>
              </tr>
         
       </table>
   
   
   </form>
</body>
<script type="text/javascript">
  $.post("duoxuan.do",function(res){
	   for ( var i in res) {
		$("div").append("<input type='checkbox' id='did' name='did' value='"+res[i].did+"'>"+res[i].dname)	   
	}
  },"json")
  $("input[value='添加']").click(function(){
	  $.post("add.do",$("form").serialize(),function(res){
		   if(res>0){
			   location.href="list.do"
		   }else{
			   alert("添加失败")
			   location.href="list.do"
		   }
	  })
	  
  })

</script>
</html>