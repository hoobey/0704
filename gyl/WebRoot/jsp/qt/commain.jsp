<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html><head>

<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<title>企业管理中心————欢迎界面</title>
<!-- base -->
</head><body>
<table id="table2" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td class="tdtop" bgcolor="#e2e2e2"><b>招聘声明</b></td></tr>
<tr><td class="tdtopi" bgcolor="#fff8ee">
<table border="0" width="100%">

<tr><td height="26"><span class="aler">·</span><span>恭喜！经过网站工作人员的调查审核贵公司的信息真实可靠，你现在已经可以使用本网站，进行招聘。</span><BR><span class="aler">·</span>我们<span class="aler"><b>郑重提醒 </b></span>企业发布的信息必须真时有效，否则网站将永远不为该企业提供服务。<a href="<%=request.getContextPath() %>/jsp/qt/comhelp.jsp" target="_parent">发布招聘信息注意事项</a></td></tr>
</table></td></tr>
<tr><td class="tdbr"></td></tr>
<tr><td class="tdtop"><b>招聘信息</b></td></tr>
<tr><td class="tdmi">
<table id="table3" border="0" width="100%">

<tr><td>·请您发布招聘信息，方便我们为企业推荐一些人才。</td></tr>
<tr><td>·您现在已经可以在网站上查找人才信息了</td></tr>
<tr><td></td></tr>
</table></td></tr>


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
<td class="tdlib" colspan="7">
<table id="table5" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr><td><a target="_parent" href="<%=request.getContextPath()%>/sourencai?actionType=sourencai" ><font color="#ff0000">点击查看<b>更多人才信息&gt;&gt;&gt;</b></font></a></td>
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
//收到投简历的个数		
List shoutouList=(List)request.getAttribute("shoutouList");
System.out.println("个数有没有"+shoutouList.size());
int shoutoushu=shoutouList.size();
		
//发送的面试通知
List mianshiList=(List)request.getAttribute("mianshiList");
int famianshishu=mianshiList.size();
//收藏的招聘信息
List shoucangList=(List)request.getAttribute("shoucangList");
int shourenshou=shoucangList.size();
 %>
	<%
		 List Loginlist=(List)session.getAttribute("Loginlist");
		Map yhMap=(Map)Loginlist.get(0);
		String id=(String)yhMap.get("company_id");				
	 %>
<tr><td>·人才库共收藏了<span class="aler"><b><a href="<%=request.getContextPath() %>/shoucangrencai?actionType=comkanshourencai&id=<%=id %>">&nbsp;<%=shourenshou %>&nbsp;</a></b></span>个人才。</td></tr>
<tr><td>·收到<span class="aler"><b><a href="<%=request.getContextPath()%>/comkantoujianli?actionType=kantoude&id=<%=id %>">&nbsp;<%=shoutoushu %>&nbsp;</a></b></span>份投递的简历。</td></tr>
<tr><td>·共发送了<span class="aler"><b><a href="<%=request.getContextPath()%>/mianshitongzhi?actionType=kanmianshitongzhi&id=<%=id %>">&nbsp;<%=famianshishu %>&nbsp;</a></b></span>条通知面试信息。 </td></tr>
</table></td></tr>
<tr><td height="30"></td></tr>
</table>
</body></html>