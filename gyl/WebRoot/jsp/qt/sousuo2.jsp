<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>

<html>
  <head>
    <title>企业的职位信息</title>
  <%@include file="tou.jsp"%>	
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
<%
		List zaizaizhiweilist=(List)request.getAttribute("zaizaizhiweilist");
		Map zaizaizhiweimap=(Map)zaizaizhiweilist.get(0);
		

 %>
 <div style="font-size:30px;text-align:left;width:900px;height:36px;background:url('<%=request.getContextPath() %>/images/bjj.bmp');">
 <%=zaizaizhiweimap.get("company_name") %>
 </div>
 <div style="font-size:12px;text-align:left;width:900px;">
 <br>
	企业名称:  <%=zaizaizhiweimap.get("company_name") %><br><br>
	企业性质:  <%=zaizaizhiweimap.get("com_property") %><br><br>
	注册资金: <%=zaizaizhiweimap.get("com_register_money") %>万元<br><br>
	企业规模:<%=zaizaizhiweimap.get("com_extent") %><br><br>
	企业所在地: <%=zaizaizhiweimap.get("comdadi") %>&nbsp;&nbsp;<%=zaizaizhiweimap.get("comxiaodi") %><br><br>
	公司网址:<%=zaizaizhiweimap.get("com_url") %><br><br>
	企业所属行业: <%=zaizaizhiweimap.get("com_industry1") %>/<%=zaizaizhiweimap.get("com_industry2") %>/<%=zaizaizhiweimap.get("com_industry3") %><br><br>
	企业联系地址：<%=zaizaizhiweimap.get("com_contact_address") %><br><br>
	企业邮编:<%=zaizaizhiweimap.get("com_post_code") %><br><br>
	企业联系电话：<%=zaizaizhiweimap.get("com_contact_telephone") %><br><br>
	企业传真号码:<%=zaizaizhiweimap.get("com_fax") %><br><br>
	企业招聘联系人：<%=zaizaizhiweimap.get("com_contact_people") %><br><br>
 </div>
 <br>
  <div style="font-size:12px;text-align:left;line-height:35px;width:900px;height:36px;background: #D0EEFD;">
 　职位信息
 </div>
  <div style="font-size:12px;text-align:left;width:900px;">
 <br>
职位名称:  	<%=zaizaizhiweimap.get("want_name") %> <br> 	
职位大类别: <%=zaizaizhiweimap.get("want_profession") %>   <br>
职位小类别: 	<%=zaizaizhiweimap.get("want_position") %> 	<br>
关键词：   <%=zaizaizhiweimap.get("want_keyword") %> <br>
年龄要求: 	<%=zaizaizhiweimap.get("want_age") %> <br>
招聘人数: 	<%=zaizaizhiweimap.get("want_amount") %> <br>
性别要求: 	<%=zaizaizhiweimap.get("want_sex") %>	<br>
学历要求: 	<%=zaizaizhiweimap.get("want_degree") %>	<br>
户籍要求:   <%=zaizaizhiweimap.get("want_now_address") %><br>
工作经验: 	<%=zaizaizhiweimap.get("want_experience") %><br>
提供月薪范围: 	<%=zaizaizhiweimap.get("want_month_wage") %> 	<br>
工作地址：    <%=zaizaizhiweimap.get("zhidadi") %>&nbsp;&nbsp;<%=zaizaizhiweimap.get("zhixiaodi") %><br>
招聘所在地址:<%=zaizaizhiweimap.get("want_month_wage") %><br>
有效期：    <%=((String)zaizaizhiweimap.get("want_time")).substring(0,10) %><br>
浏览次数:  <%=zaizaizhiweimap.get("want_look_count") %><br>
语言种类及使用程度：<%=zaizaizhiweimap.get("want_language") %><br><br><br>

 </div>
 <br>
   <div style="font-size:12px;text-align:left;line-height:35px;width:900px;height:36px;background: #D0EEFD;">
 职位描述／要求
 </div>
  <div style="font-size:12px;text-align:left;width:900px;">
 <br>
  <%=zaizaizhiweimap.get("want_require") %><br>
 </div>

  <div style="font-size:12px;text-align:left;line-height:35px;width:900px;height:36px;background: #D0EEFD;">
 　公司简介
 </div>
<div style="font-size:12px;text-align:left;width:900px;">
<%=zaizaizhiweimap.get("com_summary") %>
</div>
<br>
<br>
<br>
<br>&nbsp;&nbsp;<font size="5px"><a href="javascript:history.back(1)">[后退]</a></font>&nbsp;&nbsp;
<%
			if(session.getAttribute("Loginlist")!=null && !session.getAttribute("Loginlist").equals("")&& ((List)session.getAttribute("Loginlist")).size()>0){
			List Loginlist=(List)session.getAttribute("Loginlist");
			Map yhMap=(Map)Loginlist.get(0);
			if(yhMap.get("user_info_id")!=null&&!yhMap.get("user_info_id").equals(""))
			{

 %>
	<font size="5px" color="red"><a href="<%=request.getContextPath() %>/gerenshoucanginfo?actionType=shoucang&company_id=<%=zaizaizhiweimap.get("company_id")%>&want_information_id=<%=zaizaizhiweimap.get("want_information_id") %>&user_info_id=<%=yhMap.get("user_info_id") %>">[收藏招聘信息]</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath() %>/gerentoujianli?actionType=toudi&company_id=<%=zaizaizhiweimap.get("company_id")%>&want_information_id=<%=zaizaizhiweimap.get("want_information_id") %>&user_info_id=<%=yhMap.get("user_info_id") %>">[投递简历]</a></font>

	<%} }%>
  <%@include file="wei.jsp"%>	
  </body>
</html>
