<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html><head>

<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<title>个人管理中心————欢迎界面</title>
<!-- base -->
</head><body>
<table id="table2" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td class="tdtop" bgcolor="#e2e2e2"><b>重要求职提醒</b></td></tr>
<tr><td class="tdtopi" bgcolor="#fff8ee">
<table border="0" width="100%">

<tr><td height="26"><span class="aler">·</span>我们<span class="aler"><b>郑重提醒 </b></span>你找工作前勿必了解<span class="aler"><a href="<%=request.getContextPath() %>/jsp/qt/gerenhelp.jsp" target="_parent">求职防骗技巧</a></span>，现在阅读<span class="aler"><a href="<%=request.getContextPath() %>/jsp/qt/gerenhelp.jsp" target="_parent">求职防骗技巧请点击&gt;&gt;&gt;</a></span></td></tr>
</table></td></tr>
<tr><td class="tdbr"></td></tr>
<tr><td class="tdtop"><b>简历信息</b></td></tr>
<tr><td class="tdmi">
<table id="table3" border="0" width="100%">

<tr><td>·请完整的添加您的简历，让企业更加了解您的信息，方便我们为您推荐工作。</td></tr>
<tr><td>·请放心您的简历信息只会被审核和的企业查看，保证你的信息不会外泄,避免不必要的打扰。</td></tr>
<tr><td></td></tr>
</table></td></tr>


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

<tr><td class="tdbr"></td></tr>
<tr><td class="tdtop"><b>最新信息</b></td></tr>
<tr><td class="tdmi">
<table id="table3" border="0" width="100%">
<%
//找浏览次数
		List lookList=(List)request.getAttribute("lookList");
		System.out.println(lookList.size());
		String lookcount="0";
		if(lookList.size()>0)
		{
			Map lookmap=(Map)lookList.get(0);
			lookcount=(String)lookmap.get("resume_look_count");
		}
//投简历的个数		
		List touList=(List)request.getAttribute("touList");
		int toucount=touList.size();
		System.out.println("==="+toucount);
		
//收到的面试通知
		List mianshiList=(List)request.getAttribute("mianshiList");
		int mianshicount=mianshiList.size();
//收藏的招聘信息
		List shoucangList=(List)request.getAttribute("shoucangList");
		int shoucangcount=shoucangList.size();
 %>
	<%
		 List Loginlist=(List)session.getAttribute("Loginlist");
		Map yhMap=(Map)Loginlist.get(0);
		String id=(String)yhMap.get("user_info_id");				
	 %>
<tr><td>·您的简历被浏览<font color="red"><b>&nbsp;<%=lookcount%>&nbsp;</b></font>次。</td></tr>
<tr><td>·您共收藏了<span class="aler"><b><a href="<%=request.getContextPath()%>/kangerenshoucanginfo?actionType=kanshoucangde&id=<%=id %>">&nbsp;<%=shoucangcount%>&nbsp;</a></b></span>条招聘信息。</td></tr>
<tr><td>·您已经向招聘单位发送共<span class="aler"><b><a href="<%=request.getContextPath()%>/kangerentoujianli?actionType=kantoude&id=<%=id %>">&nbsp;<%=toucount%>&nbsp;</a></b></span>份应聘简历。</td></tr>
<tr><td>·招聘单位共向您发送共<span class="aler"><b><a href="<%=request.getContextPath()%>/gerenkanmianshitongzhi?actionType=gerenkantongzhi&id=<%=id %>">&nbsp;<%=mianshicount%>&nbsp;</a></b></span>条通知面试信息。 </td></tr>
</table></td></tr>
<tr><td height="30"></td></tr>
</table>
</body></html>