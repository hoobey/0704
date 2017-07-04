<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html><head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<title>企业管理中心——————为企业推荐人才</title>
</head><body>
<table id="table2" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td class="tdbr"></td></tr>
<tr><td class="tdtop"><b><font color="#ff0000">为您推荐的人才信息（注意：如果你没有发布招聘信息，我们将无法为你推荐人才。）</font></b></td></tr>
<tr><td>

<table id="table4" border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td class="tdlit10">人才名</td>
		<td class="tdlit10">主修专业</td>
		<td class="tdlit10" >学历</td>
		<td class="tdlit10" >希望从事的行业</td>	
		<td class="tdlit10" >希望从事的职业</td>
		<td class="tdlit10" >希望从事的职位</td>
		<td class="tdlit10" >现在居住地</td>
	</tr>
	<%
		List comList=(List)request.getAttribute("comList");
		if(comList.size()==0)
		{
	 %>
	 <tr>
		<td class="tdlin1" colspan="7" align="center">没有信息</td>

	</tr>
	<%}else{ 
		for(int i=0;i<comList.size();i++)
		{
		Map commap=(Map)comList.get(i);
			
	%>
	<tr>
		<td class="tdlin1"><a  target="_blank" href="<%=request.getContextPath()%>/sourencai?actionType=zaisourencai&id=<%=commap.get("resume_id") %>"><%=commap.get("resume_name") %></a></td>
		<td class="tdlin1"><%=commap.get("major") %></td>
		<td class="tdlin1"><%=commap.get("educational_level") %></td>
		<td class="tdlin1"><%=commap.get("hope_industry") %></td>
		<td class="tdlin1"><%=commap.get("hope_occupation") %></td>
		<td class="tdlin1"><%=commap.get("hope_position") %></td>
		<td class="tdlin1" ><%=commap.get("now_live_city1") %>-&gt;<%=commap.get("now_live_city2") %></td>
	</tr>
	
	<%} }%>
	
	

	<tr>
<td class="tdlib" colspan="3">
<table id="table5" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td><a target="_parent" href="<%=request.getContextPath()%>/sourencai?actionType=sourencai" ><font color="#ff0000">点击查看<b>更多人才信息&gt;&gt;&gt;</b></font></a></td>
<td></td></tr>
</table></td>
</tr>
	
	
</table>

</td></tr>
	
</table>
</body></html>