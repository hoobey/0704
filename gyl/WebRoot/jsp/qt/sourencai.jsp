<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>


<html>
  <head>
    <title>找人才</title>

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
 
 	  <div style="float:left;margin:0px;width:350px;FONT-SIZE:13PX;color:#ffffff;height:18px;MARGIN-TOP:0px;">
       主修专业&nbsp;&nbsp;
        <SELECT NAME="major" style="margin-top:5px;width:200px;height:20px;">
		<OPTION VALUE="" SELECTED>不限</OPTION>
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
	 性别:&nbsp;&nbsp;&nbsp;<SELECT NAME="resume_sex" style="margin-top:5px;width:100px;height:20px;">
	 		<OPTION VALUE="" SELECTED>不限</OPTION>
	 		<OPTION VALUE="男">男</OPTION>
		    <OPTION VALUE="女">女</OPTION>
		     </SELECT>
	  </div>
	  <div style="margin-top:5px;"><INPUT type=image src="<%=request.getContextPath() %>/images/search_botton.gif"  ONCLICK="zhao()">&nbsp;&nbsp;&nbsp;&nbsp;
	  </div>
		
 </div>
  <div style="width:900px;height:36px;">
  <table id="table1" border="0" cellpadding="0" cellspacing="0" style="width:900px" align=center>
	<tr style="width:900px;height:36px;background:#D5D9FB;text-align:center;" height="200" >
		<td style="border-bottom:1px solid #C1C8D2;border-top:1px solid #C1C8D2;border-right:1px solid #C1C8D2;border-left:1px solid #FDFEFE;">人才名</td>
		<td style="border-bottom:1px solid #C1C8D2;border-top:1px solid #C1C8D2;border-right:1px solid #C1C8D2;border-left:1px solid #FDFEFE;">主修专业</td>
		<td style="border-bottom:1px solid #C1C8D2;border-top:1px solid #C1C8D2;border-right:1px solid #C1C8D2;border-left:1px solid #FDFEFE;" >学历</td>
		<td style="border-bottom:1px solid #C1C8D2;border-top:1px solid #C1C8D2;border-right:1px solid #C1C8D2;border-left:1px solid #FDFEFE;" >希望从事的行业</td>	
		<td style="border-bottom:1px solid #C1C8D2;border-top:1px solid #C1C8D2;border-right:1px solid #C1C8D2;border-left:1px solid #FDFEFE;" >希望从事的职业</td>
		<td style="border-bottom:1px solid #C1C8D2;border-top:1px solid #C1C8D2;border-right:1px solid #C1C8D2;border-left:1px solid #FDFEFE;" >希望从事的职位</td>
		<td style="border-bottom:1px solid #C1C8D2;border-top:1px solid #C1C8D2;border-right:1px solid #C1C8D2;border-left:1px solid #FDFEFE;" >现在居住地</td>
	</tr>
  	<%
		Page page_=(Page)request.getAttribute("page");
		List rencailist=(List)request.getAttribute("rencailist");
		for(int i=0;i<rencailist.size();i++)
		{
		Map rencaimap=(Map)rencailist.get(i);

	 %>

	 <tr style="text-align:center;" height="50">
		<td ><a  href="<%=request.getContextPath()%>/sourencai?actionType=zaisourencai&id=<%=rencaimap.get("resume_id") %>" style="TEXT-DECORATION:underline;"><%=rencaimap.get("resume_name") %></a></td>
		<td ><%=rencaimap.get("major") %></td>
		<td ><%=rencaimap.get("educational_level") %></td>
		<td ><%=rencaimap.get("hope_industry") %></td>
		<td ><%=rencaimap.get("hope_occupation") %></td>
		<td ><%=rencaimap.get("hope_position") %></td>
		<td  ><%=rencaimap.get("now_live_city1") %>-&gt;<%=rencaimap.get("now_live_city2") %></td>
	</tr>
	  	<%} %>
	  	 <tr align="center">
	  	<% PageView view = new PageView(request,out,page_); %>
		<% view.setCurrentUrl("sourencai"); %>
		<% view.setVisible(true,0,0); %>
		</tr>
  </table> 
  </div>
  <%@include file="wei.jsp"%>	
  </from>
  
  </body>
</html>
  <SCRIPT LANGUAGE="JavaScript">
  <!--
	function zhao()
	{
	document.forms[0].actionType.value="sourencai";
	document.forms[0].action="<%=request.getContextPath()%>/sourencai?";
	document.forms[0].submit();
	}
	function lianjie()
	{
		document.forms[0].action="<%=request.getContextPath() %>/jsp/qt/gaojizhaorencai.jsp";
		document.forms[0].submit();
	}
  //-->
  </SCRIPT>