<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>看文章内容</title>
  
    <style type="text/css">
	<!--
	.ttdd {width:150px;font-size:12px;}
	.ddtt {width:100px;}
	.dt {width:100px;}
	.STYLE5 {color: #3399FF;}
	.STYLE7 {font-size: 15px}
	-->
	</style>
	<style type="text/css">
<!--
.STYLE1 {color: #000000}
.STYLE2 {color: #bd0a01}
.STYLE4 {color: #3399FF; font-size: 15px; }
-->
</style>

  </head>
  
  <body>


 <%@include file="tou.jsp"%>
 <%
	List list=(List)request.getAttribute("neironglist");
	Map map=(Map)list.get(0);

 %>	
	  <div style="width:900px;height:36px;"> 
	  <div style="float:center;font-size:16px;margin-top:10px;">
		<b><%=map.get("article_name") %></b>
		</div >
		<div style="float:right">浏览次数:&nbsp;&nbsp;&nbsp;&nbsp;<%=map.get("look_count") %>&nbsp;&nbsp;&nbsp;次</div>
	  </div>
	  

  
   <table style="width:900px;FONT-SIZE:13PX;float:center;">
	  <tr align="center" style="line-height:25px">&nbsp;&nbsp;<%=map.get("content") %>
		 
	  </tr>
  </table> 
  <%@include file="wei.jsp"%>	
  </body>
</html>
