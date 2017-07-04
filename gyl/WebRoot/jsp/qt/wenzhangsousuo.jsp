<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>找文章</title>

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
    <form>
  <INPUT TYPE="hidden" NAME="actionType" value="">
 <div style="width:900px;height:36px;background:url('<%=request.getContextPath() %>/images/bjj.bmp');">
 
	  <div style="float:left;margin:0px;width:510px;FONT-SIZE:13PX;color:#ffffff;height:18px;MARGIN-TOP:0px;">
	  文章类型&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<SELECT NAME="article_sort_id" style="margin-top:5px;width:200px;height:20px;">
		<OPTION VALUE="" SELECTED style="margin-top:5px;width:100px;height:20px;">=请您选择您要查看的文类型=
			        <%
      	List articleclasslist = (List)request.getAttribute("articleclasslist");
      	for(Iterator it=articleclasslist.iterator();it.hasNext();)
      	{
      		Map articleclassmap = (Map)it.next();
       %>
      	<option value="<%=articleclassmap.get("article_sort_id") %>" ><%=articleclassmap.get("article_sort_name") %>
      	<%} %>
	  </SELECT>    	
	   </div>
	   <div  style="float:left;width:360px;FONT-SIZE:15PX;color:#ffffff;height:18px;MARGIN-TOP:5px;"> 
	  <img src="<%=request.getContextPath() %>/images/search_botton.gif" name=sou ONCLICK="zhao()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  <%
			//看看你是不是会员，会员才可以推荐
			System.out.println(session.getAttribute("Loginlist"));
			if(session.getAttribute("Loginlist")!=null && !session.getAttribute("Loginlist").equals("")&& ((List)session.getAttribute("Loginlist")).size()>0)
			{%>
 				<a href="souwenzhang?actionType=querywenlei" style="MARGIN-TOP:5px;"><font color=red>我要推荐文章</font></a>	 
			<%}%>
			
	  </div>
	  
 </div>
  <div style="width:900px;height:36px;background:#D5D9FB;">
  <div style="float:left;width:350px;height:25px;FONT-SIZE:13PX;MARGIN-LEFT:30PX;MARGIN-TOP:10px;">
   文章名称
  </div>
   <div style="float:left;width:150px;height:25px;FONT-SIZE:13PX;MARGIN-LEFT:40PX;MARGIN-TOP:10px;">
   浏览次数
  </div>
  <div style="width:150px;height:25px;FONT-SIZE:13PX;MARGIN-LEFT:0PX;MARGIN-TOP:10px;">
   发布日期
  </div>
  </div>
  
   <table style="width:800px;height:80px;FONT-SIZE:12PX;" >
   	<%
   		Page page_=(Page)request.getAttribute("page");
      	List articlelist = (List)request.getAttribute("articlelist");
      	for(Iterator it=articlelist.iterator();it.hasNext();)
      	{
      		Map articlemap = (Map)it.next();
       %>
	  <tr align="center">
		  <td width="350" height="50"><a href="<%=request.getContextPath()%>/souwenzhang?actionType=kanweizhang&article_id=<%=(String)articlemap.get("article_id")%>" style="TEXT-DECORATION:underline;"><%=(String)articlemap.get("article_name")%>
		  </td>
		  <td width="250" height="50"><%=(String)articlemap.get("look_count")%>次
		  </td>
		  <td width="200" height="50"><%=((String)articlemap.get("update_time")).substring(0,10)%>
		  </td>		  		  
	  </tr>
		<%} %>
	  <tr align="center">
	  	<% PageView view = new PageView(request,out,page_); %>
		<% view.setCurrentUrl("souwenzhang"); %>
		<% view.setVisible(true,0,0); %>
		</tr>
  </table> 
  </form>
  <%@include file="wei.jsp"%>	
  </body>
</html>
  <SCRIPT LANGUAGE="JavaScript">
  <!--
	function zhao()
	{
	document.forms[0].actionType.value="query";
	document.forms[0].action="<%=request.getContextPath()%>/souwenzhang?";
	document.forms[0].submit();
	}

  //-->
  </SCRIPT>