<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>

 <html>
  <head>
    <title>���԰�</title>

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
  
  <body >
  <%@include file="tou.jsp"%>	
  <TABLE width="950">
  <TR style="border:1px solid red;">
	<TD width="180" >
	<%
	if(session.getAttribute("Loginlist")!=null && !session.getAttribute("Loginlist").equals(""))
	{
	List Loginlist=(List)session.getAttribute("Loginlist");
	Map map=(Map)Loginlist.get(0);
	String id=null;
	if(map.get("company_id")!=null&&map.get("company_id")!="")
	{
	id=(String)map.get("company_id");
	}
	if(map.get("user_info_id")!=null&&map.get("user_info_id")!="")
	{
	id=(String)map.get("user_info_id");
	}
	System.out.println("id======"+id);
	 %>
	<form action="" method=post >
	  <INPUT TYPE="hidden" NAME="actionType">
	   <INPUT TYPE="hidden" NAME="message_s_id" value="<%=id %>">
		<table width="100%" height="100%" style="margin-top:10px;">
			<tr>
				<td  align="center">
					<div style="background-image:url(<%=request.getContextPath()%>/images/telephone.gif);height:60px;width:161px;font-size:14px;line-height:30px;margin-top:10px">
						<BR>&nbsp;&nbsp;&nbsp;&nbsp;<B>0451-88128159</B>
					</div>
				</td>
			</tr>
			<tr>
				<td  align="center" >
					<div style="height:60px;width:161px;font-size:12px;line-height:20px;text-align:left;margin-top:10px">
						<B>&nbsp;&nbsp;&nbsp;&nbsp;<p>���������ְ����Ƹ������ʲô������кõĽ��飬����д��Ŀ��У������ı����������Ϣ�������ǣ�</p><p>���ո��������޷���������ҳ�ϵģ����������������ԣ������Իظ���</p></B>
					</div>
				</td>
			</tr>
			<tr>
				<td  align="center">
					<div style="height:60px;width:161px;font-size:12px;margin-top:10px">
						<TEXTAREA NAME="message_content" ROWS="5" COLS="20"></TEXTAREA>
					</div>
				</td>
			</tr>
			<tr>
				<td  align="center">
					<div style="height:60px;width:161px;font-size:12px;margin-top:10px">
						<img src="<%=request.getContextPath() %>/images/message.png" onclick="tijiao()">
					</div>
				</td>
			</tr>
		</table>
		</form>
		<%} else {%>
				<table width="100%" height="100%" style="margin-top:10px;">
			<tr>
				<td  align="center">
					<div style="background-image:url(<%=request.getContextPath()%>/images/telephone.gif);height:60px;width:161px;font-size:14px;line-height:30px;margin-top:10px">
						<BR>&nbsp;&nbsp;&nbsp;&nbsp;<B>0451-88128159</B>
					</div>
				</td>
			</tr>
			<tr>
				<td  align="center" >
					<div style="height:60px;width:161px;font-size:12px;line-height:20px;text-align:left;margin-top:10px">
						<B>&nbsp;&nbsp;&nbsp;&nbsp;���������ְ����Ƹ������ʲô������кõĽ��飬����д�±������ı����������Ϣ�������ǣ�</B>
					</div>
				</td>
			</tr>
			<tr>
				<td  align="center">
					<div style="height:60px;width:161px;font-size:12px;margin-top:10px">
						<TEXTAREA NAME="message_content1" ROWS="5" COLS="20"></TEXTAREA>
					</div>
				</td>
			</tr>
			<tr>
				<td  align="center">
					<div style="height:60px;width:161px;font-size:12px;margin-top:10px">
						<IMG src="<%=request.getContextPath() %>/images/message.png" onclick="javascript:quxiang('<%=request.getContextPath() %>/jsp/qt/login.jsp')">
					</div>
				</td>
			</tr>
		</table>		
		<%} %>
	</TD>
	<TD width="800" valign="top">
		<table width="100%" cellspacing=0 cellpadding=0 border=1>
			<tr>
				<td valign="top" style="background-color:#525252">
					<TABLE width="100%">
						<TR>
							<TD width="50" align="center"><img src="<%=request.getContextPath()%>/images/messagetop.gif"></TD>
							<TD ><span style="font-size:12px;color:#FFFFFF"><B>��Ա��ְ����Ƹ���ʼ��������б�</B></span></TD>
						</TR>
					</TABLE>
				</td>
			</tr>
			<tr>
				<td valign="top">
					<TABLE  width="100%">
				<%
						Page page_=(Page)request.getAttribute("page");
					//������û�лظ����лظ�����ʾ�ˣ�û�ظ��ĺ��Կ�
						Boolean youmeihui=false;
						List messagelist=(List)request.getAttribute("messagelist");
						for(int i=0;i<messagelist.size();i++)
						{
						Map messagemap=(Map)messagelist.get(i);
						String message_id=(String)messagemap.get("message_id");

						 %>
						<TR>
							<TD  width="50" align="center"><img src="<%=request.getContextPath()%>/images/wen.gif"></TD>						
							<TD height="30"><span style="font-size:14px;color:#FF5C0F"><%=messagemap.get("message_content") %><font color="#009933">������ʱ��Ϊ��<%=((String)messagemap.get("message_updatetime")).substring(0,10) %>��</font></span></TD>
						</TR>
						<%
						List messagereplylist=(List)request.getAttribute("messagereply");
						for(int j=0;j<messagereplylist.size();j++)
						{
						Map messagereplymap=(Map)messagereplylist.get(j);
						String message_id1=(String)messagereplymap.get("message_id");
						System.out.println("message_id1==="+message_id1);
						System.out.println("message_id==="+message_id);
						System.out.println(message_id1==message_id);
					    if(message_id1.equals(message_id))
						{
						youmeihui=true;
						System.out.print(((String)messagereplymap.get("message_reply_content"))!=null &&((String)messagereplymap.get("message_reply_content"))!="");
						 %>					
						<TR>
							<TD  width="50" align="center"><img src="<%=request.getContextPath()%>/images/da.gif"></TD>
							<TD height="30"><span style="font-size:14px;"><%=messagereplymap.get("message_reply_content") %><font color="#009933">���ظ�ʱ��Ϊ��<%=((String)messagereplymap.get("message_reply_time")).substring(0,10) %>��</font></span></TD>
						</TR>
						<%}%>	  					
					<%} if(youmeihui==false){%> 
							<TR>
							<TD  width="50" align="center"><img src="<%=request.getContextPath()%>/images/da.gif"></TD>
							<TD height="30"><span style="font-size:14px;">����Ա��û�ش���������</span></TD>
						</TR> 
					<%}} %>	
					
					</TABLE>
					<table width="100%" border="0" cellpadding="4" cellspacing="0"   align="center">
					<tr><td class="page td_search">
					<% PageView view = new PageView(request,out,page_); %>
					<% view.setCurrentUrl("qtmessage"); %>
					<% view.setVisible(true,0,0); %>
					</td></tr>
					</table>
				</td>
			</tr>
	
		</table>
	
	</TD>
  </TR>
  </TABLE>
  <%@include file="wei.jsp"%>	
  </body>
</html>


<SCRIPT LANGUAGE="JavaScript">
<!--
	function tijiao()
	{
	var message_content=document.getElementById("message_content");
	if(message_content.value.length!=0)
	{
	document.forms[0].actionType.value="add";
	document.forms[0].action="<%=request.getContextPath()%>/qtmessage";
	document.forms[0].submit();
	}
	else
	{
	document.forms[0].actionType.value="query";
	document.forms[0].action="<%=request.getContextPath()%>/qtmessage";
	document.forms[0].submit();
	}
	}
	
	function quxiang(url)
	{
	window.parent.location.href=url;
	}
	
//-->
</SCRIPT>

