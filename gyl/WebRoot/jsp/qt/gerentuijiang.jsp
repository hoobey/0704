<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html><head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<title>���˹������ġ�������Ϊ�����Ƽ�����</title>
</head><body>
<table id="table2" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td class="tdbr"></td></tr>
<tr><td class="tdtop"><b><font color="#ff0000">Ϊ���Ƽ�����Ƹ��Ϣ��ע�⣺�����û�н����˵ļ��������ǽ��޷�Ϊ���Ƽ���Ƹ��Ϣ����</font></b></td></tr>
<tr><td>

<table id="table4" border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td class="tdlit10">��Ƹְλ</td>
		<td class="tdlit10">��Ƹ��˾</td>
		<td class="tdlit1" width="120">��Ч����</td>
	</tr>
	<%
		List resumeList=(List)request.getAttribute("resumeList");
		if(resumeList.size()==0)
		{
	 %>
	 <tr>
		<td class="tdlin1"></td>
		<td class="tdlin1">û����Ϣ</td>
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
<tr><td><a target="_parent" href="<%=request.getContextPath()%>/souzhiwei?actionType=query" target="_parent"><font color="#ff0000">����鿴<b>������Ƹ��Ϣ&gt;&gt;&gt;</b></font></a></td>
<td></td></tr>
</table></td>
</tr>
	
	
</table>

</td></tr>
	
</table>
</body></html>