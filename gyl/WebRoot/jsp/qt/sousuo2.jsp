<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>

<html>
  <head>
    <title>��ҵ��ְλ��Ϣ</title>
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
	��ҵ����:  <%=zaizaizhiweimap.get("company_name") %><br><br>
	��ҵ����:  <%=zaizaizhiweimap.get("com_property") %><br><br>
	ע���ʽ�: <%=zaizaizhiweimap.get("com_register_money") %>��Ԫ<br><br>
	��ҵ��ģ:<%=zaizaizhiweimap.get("com_extent") %><br><br>
	��ҵ���ڵ�: <%=zaizaizhiweimap.get("comdadi") %>&nbsp;&nbsp;<%=zaizaizhiweimap.get("comxiaodi") %><br><br>
	��˾��ַ:<%=zaizaizhiweimap.get("com_url") %><br><br>
	��ҵ������ҵ: <%=zaizaizhiweimap.get("com_industry1") %>/<%=zaizaizhiweimap.get("com_industry2") %>/<%=zaizaizhiweimap.get("com_industry3") %><br><br>
	��ҵ��ϵ��ַ��<%=zaizaizhiweimap.get("com_contact_address") %><br><br>
	��ҵ�ʱ�:<%=zaizaizhiweimap.get("com_post_code") %><br><br>
	��ҵ��ϵ�绰��<%=zaizaizhiweimap.get("com_contact_telephone") %><br><br>
	��ҵ�������:<%=zaizaizhiweimap.get("com_fax") %><br><br>
	��ҵ��Ƹ��ϵ�ˣ�<%=zaizaizhiweimap.get("com_contact_people") %><br><br>
 </div>
 <br>
  <div style="font-size:12px;text-align:left;line-height:35px;width:900px;height:36px;background: #D0EEFD;">
 ��ְλ��Ϣ
 </div>
  <div style="font-size:12px;text-align:left;width:900px;">
 <br>
ְλ����:  	<%=zaizaizhiweimap.get("want_name") %> <br> 	
ְλ�����: <%=zaizaizhiweimap.get("want_profession") %>   <br>
ְλС���: 	<%=zaizaizhiweimap.get("want_position") %> 	<br>
�ؼ��ʣ�   <%=zaizaizhiweimap.get("want_keyword") %> <br>
����Ҫ��: 	<%=zaizaizhiweimap.get("want_age") %> <br>
��Ƹ����: 	<%=zaizaizhiweimap.get("want_amount") %> <br>
�Ա�Ҫ��: 	<%=zaizaizhiweimap.get("want_sex") %>	<br>
ѧ��Ҫ��: 	<%=zaizaizhiweimap.get("want_degree") %>	<br>
����Ҫ��:   <%=zaizaizhiweimap.get("want_now_address") %><br>
��������: 	<%=zaizaizhiweimap.get("want_experience") %><br>
�ṩ��н��Χ: 	<%=zaizaizhiweimap.get("want_month_wage") %> 	<br>
������ַ��    <%=zaizaizhiweimap.get("zhidadi") %>&nbsp;&nbsp;<%=zaizaizhiweimap.get("zhixiaodi") %><br>
��Ƹ���ڵ�ַ:<%=zaizaizhiweimap.get("want_month_wage") %><br>
��Ч�ڣ�    <%=((String)zaizaizhiweimap.get("want_time")).substring(0,10) %><br>
�������:  <%=zaizaizhiweimap.get("want_look_count") %><br>
�������༰ʹ�ó̶ȣ�<%=zaizaizhiweimap.get("want_language") %><br><br><br>

 </div>
 <br>
   <div style="font-size:12px;text-align:left;line-height:35px;width:900px;height:36px;background: #D0EEFD;">
 ְλ������Ҫ��
 </div>
  <div style="font-size:12px;text-align:left;width:900px;">
 <br>
  <%=zaizaizhiweimap.get("want_require") %><br>
 </div>

  <div style="font-size:12px;text-align:left;line-height:35px;width:900px;height:36px;background: #D0EEFD;">
 ����˾���
 </div>
<div style="font-size:12px;text-align:left;width:900px;">
<%=zaizaizhiweimap.get("com_summary") %>
</div>
<br>
<br>
<br>
<br>&nbsp;&nbsp;<font size="5px"><a href="javascript:history.back(1)">[����]</a></font>&nbsp;&nbsp;
<%
			if(session.getAttribute("Loginlist")!=null && !session.getAttribute("Loginlist").equals("")&& ((List)session.getAttribute("Loginlist")).size()>0){
			List Loginlist=(List)session.getAttribute("Loginlist");
			Map yhMap=(Map)Loginlist.get(0);
			if(yhMap.get("user_info_id")!=null&&!yhMap.get("user_info_id").equals(""))
			{

 %>
	<font size="5px" color="red"><a href="<%=request.getContextPath() %>/gerenshoucanginfo?actionType=shoucang&company_id=<%=zaizaizhiweimap.get("company_id")%>&want_information_id=<%=zaizaizhiweimap.get("want_information_id") %>&user_info_id=<%=yhMap.get("user_info_id") %>">[�ղ���Ƹ��Ϣ]</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath() %>/gerentoujianli?actionType=toudi&company_id=<%=zaizaizhiweimap.get("company_id")%>&want_information_id=<%=zaizaizhiweimap.get("want_information_id") %>&user_info_id=<%=yhMap.get("user_info_id") %>">[Ͷ�ݼ���]</a></font>

	<%} }%>
  <%@include file="wei.jsp"%>	
  </body>
</html>
