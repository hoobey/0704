<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>


<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=gbk">
    <title>找工作</title>

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
  <form method="post">
  <INPUT TYPE="hidden" NAME="actionType" value="">
 <div style="width:900px;height:36px;background:url('<%=request.getContextPath() %>/images/bjj.bmp');">
 
 	  <div style="float:left;margin:0px;width:350px;FONT-SIZE:13PX;color:#ffffff;height:18px;MARGIN-TOP:0px;">
       职业类别&nbsp;&nbsp;
        <SELECT NAME="want_profession" style="margin-top:5px;width:200px;height:20px;">
		<OPTION VALUE="0" SELECTED>^请选择你要搜索的职业类别^</OPTION>
		<OPTION VALUE="管理科学与工程类">管理科学与工程类</OPTION>
		<OPTION VALUE="工商管理类">工商管理类</OPTION>
		<OPTION VALUE="公共管理类">公共管理类</OPTION>
		<OPTION VALUE="图书档案学">图书档案学类</OPTION>
		<OPTION VALUE="电子信息类">电子信息类</OPTION>
		<OPTION VALUE="计算机类">计算机类</OPTION>
		<OPTION VALUE="机械类">机械类</OPTION>
		<OPTION VALUE="仪器仪表类">仪器仪表类</OPTION>
		<OPTION VALUE="能源动力类">能源动力类</OPTION>
		<OPTION VALUE="材料类">材料类</OPTION>
		<OPTION VALUE="轻工纺织食品类">轻工纺织食品类</OPTION>		
		<OPTION VALUE="土建类">土建类</OPTION>
		<OPTION VALUE="环境科学与安全类">环境科学与安全类</OPTION>
		<OPTION VALUE="制药工程类">制药工程类</OPTION>
		<OPTION VALUE="交通运输类">交通运输类</OPTION>
		<OPTION VALUE="航空航天类">航空航天类</OPTION>		
		<OPTION VALUE="水利类">水利类</OPTION>
		<OPTION VALUE="公安技术类">公安技术类</OPTION>
		<OPTION VALUE="数学类">数学类</OPTION>
		<OPTION VALUE="物理学类">物理学类</OPTION>
		<OPTION VALUE="化学类">化学类</OPTION>	
		<OPTION VALUE="生物类">生物类</OPTION>
		<OPTION VALUE="天文地质地理类">天文地质地理类</OPTION>
		<OPTION VALUE="经济学类">经济学类</OPTION>
		<OPTION VALUE="语言学类">语言学类</OPTION>
		<OPTION VALUE="艺术类">艺术类</OPTION>	
		<OPTION VALUE="法学类">法学类</OPTION>
		<OPTION VALUE="哲学类">哲学类</OPTION>
		<OPTION VALUE="教育学类">教育学类</OPTION>
		<OPTION VALUE="医学类">医学类</OPTION>
		<OPTION VALUE="农业类">农业类</OPTION>
		<OPTION VALUE="历史学类">历史学类</OPTION>	
        </SELECT>
	  </div>
	  <div style="float:left;width:280px;FONT-SIZE:13PX;color:#ffffff;height:18px;MARGIN-TOP:0px;"> 
	  关键字&nbsp;&nbsp;&nbsp;<INPUT TYPE="text" NAME="want_keyword" style="margin-top:5px;width:100px;height:20px;">
	  </div>
	  <div style="margin-top:5px;"><img src="<%=request.getContextPath() %>/images/search_botton.gif"  ONCLICK="zhao()">&nbsp;&nbsp;&nbsp;&nbsp;
	  </div>
		
 </div>
  <div style="width:900px;height:36px;background:#D5D9FB;">
  <div style="float:left;width:150px;height:25px;FONT-SIZE:13PX;MARGIN-LEFT:20PX;MARGIN-TOP:10px;">
   公司名称
  </div>
   <div style="float:left;width:130px;height:25px;FONT-SIZE:13PX;MARGIN-LEFT:110PX;MARGIN-TOP:10px;">
   职位名称
  </div>
  <div style="width:150px;height:25px;FONT-SIZE:13PX;MARGIN-LEFT:0PX;MARGIN-TOP:10px;">
   截止日期
  </div>
  </div>
  	<%
  		Page page_=(Page)request.getAttribute("page");
		List zhiweilist=(List)request.getAttribute("zhiweilist");
		for(int i=0;i<zhiweilist.size();i++)
		{
			Map zhiweimap=(Map)zhiweilist.get(i);
			String zw = (String)zhiweimap.get("want_name");
			String gs = (String)zhiweimap.get("company_name");
			String rq = (String)zhiweimap.get("want_time");
	 %>
   <table style="width:800px;height:50px;FONT-SIZE:12PX;" >
	  <tr align="center">
		  <td width="150"> <a href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=(String)zhiweimap.get("company_id")%>" style="TEXT-DECORATION:underline"><%=gs %></a>
		  </td>
		  <td width="220"><a href="<%=request.getContextPath()%>/souzhiwei?actionType=zaizaiquery&want_information_id=<%=(String)zhiweimap.get("want_information_id")%>" style="TEXT-DECORATION:underline"><%=zw %></a>
		  </td>
		  <td width="200"><%=rq.substring(0,10) %>
		  </td>		  		  
	  </tr>
	  	<%} %>
	  	 <tr align="center">
	  	<% PageView view = new PageView(request,out,page_); %>
		<% view.setCurrentUrl("souzhiwei"); %>
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
	document.forms[0].action="<%=request.getContextPath()%>/souzhiwei?";
	document.forms[0].submit();
	}
	function gaozhao()
	{
	document.forms[0].actionType.value="sheng";
	document.forms[0].action="<%=request.getContextPath()%>/souzhiwei?";
	document.forms[0].submit();
	}
  //-->
  </SCRIPT>