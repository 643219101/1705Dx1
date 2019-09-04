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
                        <td><input type="hidden" name="id" id="id" value="${param.id}"> </td>
              </tr>
              <tr>
                        <td>名称:<input type="text" name="name" id="name"><input type="hidden" id="id" value="${param.id}"> </td>
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
                        <td><input type="button" value="修改"></td>
              </tr>
         
       </table>

   </form>
</body>
<script type="text/javascript">
$.ajaxSetup({
	async:false
})
$.post("duoxuan.do",function(res){
	   for ( var i in res) {
		$("div").append("<input type='checkbox' id='did' name='did' value='"+res[i].did+"'>"+res[i].dname)	   
	}
},"json")
   var id=$("[id='id']").val();
  $.post("show.do?id="+id,function(res){
	  var did=res.did.split(",");
	   $("[name='name']").val(res.name)
	   $("[name='juqing']").val(res.juqing)
	   $("[name='daoyan']").val(res.daoyan)
	   $("[name='times']").val(res.times)
	  
	   for ( var i in did) {
		$("[name='did'][value='"+did[i]+"']").attr("checked",true);
		   
	}
	  
  },"json")
  
      $("input[value='修改']").click(function(){
	  $.post("update.do",$("form").serialize(),function(res){
		   if(res>0){
			   location.href="list.do"
		   }else{
			   alert("修改失败")
			   location.href="list.do"
		   }
	  })
	  
  })
</script>
</html>