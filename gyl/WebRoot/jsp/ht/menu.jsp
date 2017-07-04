<%@page contentType="text/html;charset=GBK"%>
<%@page import="java.util.*"%>

<HTML>
 <HEAD>
  <TITLE> 后台功能列表 </TITLE>
  <META NAME="Generator" CONTENT="EditPlus">
  <META NAME="Author" CONTENT="">
  <META NAME="Keywords" CONTENT="">
  <META NAME="Description" CONTENT="">
  <SCRIPT LANGUAGE="JavaScript">
  <!--
	function cc(id)
	{
		var a=document.getElementById(id);
		
		if(a.style.display=="none")
		{
			a.style.display="block";
		}else{
			a.style.display="none";
		}
	}
  //-->
  </SCRIPT>
  <style>
	.d{width:180px;height:30px;line-height:30px;}
	.d1{width:180px;height:30px;line-height:30px;background-color:#33CCFF}
  </style>
 </HEAD>

 <BODY bgcolor="#fefefe" style="margin:0 auto" >
 <table border="0" cellpadding="0" cellspacing="0" width="180" height="100%"bgcolor="#B9DDFE">
 	<tr><td valign="top">
  <TABLE border="0" cellpadding="0" cellspacing="0" width="180">
  <%  
 		List list=(List)session.getAttribute("htLoginlist"); 
 		List list1=(List)session.getAttribute("htLoginlist1"); 
 		for(int i=0;i<list.size();i++) 
 		{ 
 			Map mapi=(Map)list.get(i); 
 			String id=(String)mapi.get("limit_id"); 
  %>
  <TR>
	<TD style="cursor:hand;height:29;background:#B9DDFE;BORDER-top: #DCEDFC 2px solid;BORDER-bottom: #A5B7DC 1px solid;BORDER-right: #6666FF; 1px solid;color:#CC3300;">
		<div onclick="cc('div<%=i %>')" class="d" >&nbsp;&nbsp;<%=mapi.get("limit_name")%></div>
		<DIV style="float:left;display:block" id="div<%=i %>" class="d1">
			<TABLE width="90%"align="right">
			<%
				for(int j=0;j<list1.size();j++)
				{
					Map mapj=(Map)list1.get(j);
					String faid=(String)mapj.get("father_id");
					if(faid.equals(id))
					{
			 %>
			<TR>
				<TD style="font-size:12px" ><a href="<%=request.getContextPath()%>/<%=mapj.get("url")%>" target="main"><%=mapj.get("limit_name")%></a></TD>
			</TR>
			<%} 
			}%>
			</TABLE>
		</DIV>
	</TD>
  </TR>
  <%} %>
  </TABLE>
  </td></tr></table>
 </BODY>
</HTML>
