<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html><head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<title>个人管理中心————为个人推荐工作</title>
</head><body>
<table id="table2" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td class="tdbr"></td></tr>
<tr><td class="tdtop"><b><font color="#ff0000">为您推荐的招聘信息（注意：如果你没有建个人的简历，我们将无法为你推荐招聘信息。）</font></b></td></tr>
<tr><td>

<table id="table4" border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td class="tdlit10">招聘职位</td>
		<td class="tdlit10">招聘公司</td>
		<td class="tdlit1" width="120">有效日期</td>
	</tr>
	<%
		List resumeList=(List)request.getAttribute("resumeList");
		if(resumeList.size()==0)
		{
	 %>
	 <tr>
		<td class="tdlin1"></td>
		<td class="tdlin1">没有信息</td>
		<td class="tdlin1" width="120"></td>
	</tr>
	<%}else{ 
		for(int i=0;i<resumeList.size();i++)
		{
			Map resumemap=(Map)resumeList.get(i);
			String zw = (String) resumemap.get("want_name");
			String gs = (String) resumemap.get("company_name");
			String rq = (String) resumemap.get("want_time");
			
	%>
	<tr>
		<td class="tdlin1"><a target="_parent" href="<%=request.getContextPath()%>/souzhiwei?actionType=zaizaiquery&want_information_id=<%=(String)resumemap.get("want_information_id")%>"><%=zw %></a></td>
		<td class="tdlin1"><a target="_parent" href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=(String)resumemap.get("company_id")%>"><%=gs %></a></td>
		<td class="tdlin1" width="120"><%=rq.substring(0,10) %></td>
	</tr>
	
	<%} }%>
	
	

	<tr>
<td class="tdlib" colspan="3">
<table id="table5" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td><a target="_parent" href="<%=request.getContextPath()%>/souzhiwei?actionType=query" target="_parent"><font color="#ff0000">点击查看<b>更多招聘信息&gt;&gt;&gt;</b></font></a></td>
<td></td></tr>
</table></td>
</tr>
	
	
</table>

</td></tr>
	
</table>
</body></html>