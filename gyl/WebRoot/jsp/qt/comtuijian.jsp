<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html><head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<title>��ҵ�������ġ�����������Ϊ��ҵ�Ƽ��˲�</title>
</head><body>
<table id="table2" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td class="tdbr"></td></tr>
<tr><td class="tdtop"><b><font color="#ff0000">Ϊ���Ƽ����˲���Ϣ��ע�⣺�����û�з�����Ƹ��Ϣ�����ǽ��޷�Ϊ���Ƽ��˲š���</font></b></td></tr>
<tr><td>

<table id="table4" border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td class="tdlit10">�˲���</td>
		<td class="tdlit10">����רҵ</td>
		<td class="tdlit10" >ѧ��</td>
		<td class="tdlit10" >ϣ�����µ���ҵ</td>	
		<td class="tdlit10" >ϣ�����µ�ְҵ</td>
		<td class="tdlit10" >ϣ�����µ�ְλ</td>
		<td class="tdlit10" >���ھ�ס��</td>
	</tr>
	<%
		List comList=(List)request.getAttribute("comList");
		if(comList.size()==0)
		{
	 %>
	 <tr>
		<td class="tdlin1" colspan="7" align="center">û����Ϣ</td>

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
<tr><td><a target="_parent" href="<%=request.getContextPath()%>/sourencai?actionType=sourencai" ><font color="#ff0000">����鿴<b>�����˲���Ϣ&gt;&gt;&gt;</b></font></a></td>
<td></td></tr>
</table></td>
</tr>
	
	
</table>

</td></tr>
	
</table>
</body></html>