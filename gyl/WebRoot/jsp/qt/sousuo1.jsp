<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>

<html>
  <head>
    <title>�ҹ�������������ҵ�Ͷ�Ӧ��ְλ</title>
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
		List zaizhiweilist=(List)request.getAttribute("zaizhiweilist");
		Map zaizhiweimap=(Map)zaizhiweilist.get(0);

 %>
 <div style="font-size:30px;text-align:left;width:900px;height:36px;background:url('<%=request.getContextPath() %>/images/bjj.bmp');">
 <%=zaizhiweimap.get("company_name") %>
 </div>
 <div style="font-size:12px;text-align:left;width:900px;">
 <br>
	��ҵ����:  <%=zaizhiweimap.get("company_name") %><br><br>
	��ҵ����:  <%=zaizhiweimap.get("com_property") %><br><br>
	ע���ʽ�: <%=zaizhiweimap.get("com_register_money") %>��Ԫ<br><br>
	��ҵ��ģ:<%=zaizhiweimap.get("com_extent") %><br><br>
	��ҵ���ڵ�: <%=zaizhiweimap.get("big_address_name") %>&nbsp;&nbsp;<%=zaizhiweimap.get("small_address_name") %><br><br>
	��˾��ַ:<%=zaizhiweimap.get("com_url") %><br><br>
	��ҵ������ҵ: <%=zaizhiweimap.get("com_industry1") %>/<%=zaizhiweimap.get("com_industry2") %>/<%=zaizhiweimap.get("com_industry3") %><br><br>
	��ҵ��ϵ��ַ��<%=zaizhiweimap.get("com_contact_address") %><br><br>
	��ҵ�ʱ�:<%=zaizhiweimap.get("com_post_code") %><br><br>
	��ҵ��ϵ�绰��<%=zaizhiweimap.get("com_contact_telephone") %><br><br>
	��ҵ�������:<%=zaizhiweimap.get("com_fax") %><br><br>
	��ҵ��Ƹ��ϵ�ˣ�<%=zaizhiweimap.get("com_contact_people") %><br><br>
 </div>
 <br>
  <div style="font-size:12px;text-align:left;line-height:35px;width:900px;height:36px;background: #D0EEFD;">
 ����˾���
 </div>
   <div style="font-size:12px;text-align:left;line-height:35px;width:900px;">
 ��<%=zaizhiweimap.get("com_summary") %>
 </div>
   <div style="font-size:12px;text-align:left;line-height:35px;width:900px;height:36px;background: #D0EEFD;">
 ��ְλ��Ƹ
 </div>
 <%
		List zaizhiweilist1=(List)request.getAttribute("zaizhiweilist1");
		for(int i=0;i<zaizhiweilist1.size();i++)
		{
		Map zhiweimap1=(Map)zaizhiweilist1.get(i);

 %>
  <div style="font-size:12px;text-align:left;width:900px;">
 <br>
<%=((String)zhiweimap1.get("want_time")).substring(0,10) %>&nbsp;&nbsp; ��<a href="<%=request.getContextPath()%>/souzhiwei?actionType=zaizaiquery&want_information_id=<%=(String)zhiweimap1.get("want_information_id")%>" style="TEXT-DECORATION:underline"><%=zhiweimap1.get("want_name") %></a>  (<%=zhiweimap1.get("big_address_name") %> &nbsp;<%=zhiweimap1.get("small_address_name") %>)<br>
 </div><br>
 <%} %>
  <%@include file="wei.jsp"%>	
  </body>
</html>
