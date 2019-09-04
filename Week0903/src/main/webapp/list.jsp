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
<input type="text" id="name" value="${name}">
<input type="button" value="查找">
<input type="button" value="添加页面">
<input type="button" value="批量删除">
   <table>
       <tr>
          <td><input type="checkbox" id="all" name="all">全选和反选</td>
          <td>序号</td>
          <td>名称</td>
          <td>剧情</td>
          <td>导演</td>
          <td>时间</td>
          <td>分类</td>
       </tr>
    <c:forEach items="${list}" var="list">
      <tr>
          <td><input type="checkbox"  id="alll" value="${list.id}"></td>
          <td>${list.id}</td>
          <td>${list.name}</td>
          <td>${list.juqing}</td>
          <td>${list.daoyan}</td>
          <td>${list.times}</td>
          <td>${list.dname}</td>
          <td><input type="button" value="修改"><input type="hidden" value="${list.id}"><input type="button" value="删除"></td>
      </tr>
    
    </c:forEach>
    <tr>
       <td colspan="7">
           <input type="button" value="首页"  onclick="fenye(1)">
           <input type="button" value="上页"  onclick="fenye(${ pi.isIsLastPage()?1:pi.getPrePage()})">
           <input type="button" value="下页"  onclick="fenye(${ pi.isIsLastPage()? pi.getPages(): pi.getNextPage()})">
           <input type="button" value="尾页"  onclick="fenye(${pi.getPages()})">
          <!--   pi.isIsFirstPage();
	 pi.isIsLastPage();
	 pi.getNextPage();
	 pi.getPrePage();
	 pi.getPages(); -->
       </td>
    </tr>
   </table>
</body>
  <script type="text/javascript">
         $("input[value='查找']").click(function(){
        	 var name=$("[id='name']").val()
        	 location.href="list.do?name="+name;
         })
         $("input[value='添加页面']").click(function(){
        location.href="add.jsp";
         })
         $("input[value='批量删除']").click(function(){
        	var id=$("[id='alll']").map(function(){
        		return $(this).val();
        	}).get().join(",");
        	alert(id)
         })
         $("input[value='修改']").click(function(){
               var id= $(this).next().val();
             location.href="update.jsp?id="+id;
         })
         
         function fenye(cpage){
        	 location.href="list.do?cpage="+cpage;
         }
        /*  $("[id='all']").click(function(){
       	 if($(this).attr("checked")){
       		 
       	 }
        }) */

         $("[id='all']").click(function(res){
        	 $("[id='alll']").each(function(){
        		  if($(this).attr("checked")){
        			  $(this).attr("checked",false)
        		  }else{
        			  $(this).attr("checked",true)
        		  }
        		 
        		 
        		 
        	 })
         })
  </script>
</html>