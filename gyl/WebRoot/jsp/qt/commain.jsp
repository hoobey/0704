<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html><head>

<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<title>��ҵ�������ġ���������ӭ����</title>
<!-- base -->
</head><body>
<table id="table2" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td class="tdtop" bgcolor="#e2e2e2"><b>��Ƹ����</b></td></tr>
<tr><td class="tdtopi" bgcolor="#fff8ee">
<table border="0" width="100%">

<tr><td height="26"><span class="aler">��</span><span>��ϲ��������վ������Ա�ĵ�����˹�˾����Ϣ��ʵ�ɿ����������Ѿ�����ʹ�ñ���վ��������Ƹ��</span><BR><span class="aler">��</span>����<span class="aler"><b>֣������ </b></span>��ҵ��������Ϣ������ʱ��Ч��������վ����Զ��Ϊ����ҵ�ṩ����<a href="<%=request.getContextPath() %>/jsp/qt/comhelp.jsp" target="_parent">������Ƹ��Ϣע������</a></td></tr>
</table></td></tr>
<tr><td class="tdbr"></td></tr>
<tr><td class="tdtop"><b>��Ƹ��Ϣ</b></td></tr>
<tr><td class="tdmi">
<table id="table3" border="0" width="100%">

<tr><td>������������Ƹ��Ϣ����������Ϊ��ҵ�Ƽ�һЩ�˲š�</td></tr>
<tr><td>���������Ѿ���������վ�ϲ����˲���Ϣ��</td></tr>
<tr><td></td></tr>
</table></td></tr>


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
<td class="tdlib" colspan="7">
<table id="table5" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td><a target="_parent" href="<%=request.getContextPath()%>/sourencai?actionType=sourencai" ><font color="#ff0000">����鿴<b>�����˲���Ϣ&gt;&gt;&gt;</b></font></a></td>
<td></td></tr>
</table></td>
</tr>
	
	
</table>

</td></tr>

<tr><td class="tdbr"></td></tr>
<tr><td class="tdtop"><b>������Ϣ</b></td></tr>
<tr><td class="tdmi">
<table id="table3" border="0" width="100%">
<%
//�յ�Ͷ�����ĸ���		
List shoutouList=(List)request.getAttribute("shoutouList");
System.out.println("������û��"+shoutouList.size());
int shoutoushu=shoutouList.size();
		
//���͵�����֪ͨ
List mianshiList=(List)request.getAttribute("mianshiList");
int famianshishu=mianshiList.size();
//�ղص���Ƹ��Ϣ
List shoucangList=(List)request.getAttribute("shoucangList");
int shourenshou=shoucangList.size();
 %>
	<%
		 List Loginlist=(List)session.getAttribute("Loginlist");
		Map yhMap=(Map)Loginlist.get(0);
		String id=(String)yhMap.get("company_id");				
	 %>
<tr><td>���˲ſ⹲�ղ���<span class="aler"><b><a href="<%=request.getContextPath() %>/shoucangrencai?actionType=comkanshourencai&id=<%=id %>">&nbsp;<%=shourenshou %>&nbsp;</a></b></span>���˲š�</td></tr>
<tr><td>���յ�<span class="aler"><b><a href="<%=request.getContextPath()%>/comkantoujianli?actionType=kantoude&id=<%=id %>">&nbsp;<%=shoutoushu %>&nbsp;</a></b></span>��Ͷ�ݵļ�����</td></tr>
<tr><td>����������<span class="aler"><b><a href="<%=request.getContextPath()%>/mianshitongzhi?actionType=kanmianshitongzhi&id=<%=id %>">&nbsp;<%=famianshishu %>&nbsp;</a></b></span>��֪ͨ������Ϣ�� </td></tr>
</table></td></tr>
<tr><td height="30"></td></tr>
</table>
</body></html>