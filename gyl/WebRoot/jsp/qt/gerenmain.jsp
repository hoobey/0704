<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html><head>

<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<title>���˹������ġ���������ӭ����</title>
<!-- base -->
</head><body>
<table id="table2" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td class="tdtop" bgcolor="#e2e2e2"><b>��Ҫ��ְ����</b></td></tr>
<tr><td class="tdtopi" bgcolor="#fff8ee">
<table border="0" width="100%">

<tr><td height="26"><span class="aler">��</span>����<span class="aler"><b>֣������ </b></span>���ҹ���ǰ����˽�<span class="aler"><a href="<%=request.getContextPath() %>/jsp/qt/gerenhelp.jsp" target="_parent">��ְ��ƭ����</a></span>�������Ķ�<span class="aler"><a href="<%=request.getContextPath() %>/jsp/qt/gerenhelp.jsp" target="_parent">��ְ��ƭ��������&gt;&gt;&gt;</a></span></td></tr>
</table></td></tr>
<tr><td class="tdbr"></td></tr>
<tr><td class="tdtop"><b>������Ϣ</b></td></tr>
<tr><td class="tdmi">
<table id="table3" border="0" width="100%">

<tr><td>����������������ļ���������ҵ�����˽�������Ϣ����������Ϊ���Ƽ�������</td></tr>
<tr><td>����������ļ�����Ϣֻ�ᱻ��˺͵���ҵ�鿴����֤�����Ϣ������й,���ⲻ��Ҫ�Ĵ��š�</td></tr>
<tr><td></td></tr>
</table></td></tr>


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

<tr><td class="tdbr"></td></tr>
<tr><td class="tdtop"><b>������Ϣ</b></td></tr>
<tr><td class="tdmi">
<table id="table3" border="0" width="100%">
<%
//���������
		List lookList=(List)request.getAttribute("lookList");
		System.out.println(lookList.size());
		String lookcount="0";
		if(lookList.size()>0)
		{
			Map lookmap=(Map)lookList.get(0);
			lookcount=(String)lookmap.get("resume_look_count");
		}
//Ͷ�����ĸ���		
		List touList=(List)request.getAttribute("touList");
		int toucount=touList.size();
		System.out.println("==="+toucount);
		
//�յ�������֪ͨ
		List mianshiList=(List)request.getAttribute("mianshiList");
		int mianshicount=mianshiList.size();
//�ղص���Ƹ��Ϣ
		List shoucangList=(List)request.getAttribute("shoucangList");
		int shoucangcount=shoucangList.size();
 %>
	<%
		 List Loginlist=(List)session.getAttribute("Loginlist");
		Map yhMap=(Map)Loginlist.get(0);
		String id=(String)yhMap.get("user_info_id");				
	 %>
<tr><td>�����ļ��������<font color="red"><b>&nbsp;<%=lookcount%>&nbsp;</b></font>�Ρ�</td></tr>
<tr><td>�������ղ���<span class="aler"><b><a href="<%=request.getContextPath()%>/kangerenshoucanginfo?actionType=kanshoucangde&id=<%=id %>">&nbsp;<%=shoucangcount%>&nbsp;</a></b></span>����Ƹ��Ϣ��</td></tr>
<tr><td>�����Ѿ�����Ƹ��λ���͹�<span class="aler"><b><a href="<%=request.getContextPath()%>/kangerentoujianli?actionType=kantoude&id=<%=id %>">&nbsp;<%=toucount%>&nbsp;</a></b></span>��ӦƸ������</td></tr>
<tr><td>����Ƹ��λ���������͹�<span class="aler"><b><a href="<%=request.getContextPath()%>/gerenkanmianshitongzhi?actionType=gerenkantongzhi&id=<%=id %>">&nbsp;<%=mianshicount%>&nbsp;</a></b></span>��֪ͨ������Ϣ�� </td></tr>
</table></td></tr>
<tr><td height="30"></td></tr>
</table>
</body></html>