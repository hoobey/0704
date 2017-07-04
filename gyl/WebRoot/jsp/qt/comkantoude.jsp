<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
  <head>
<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<TITLE>收到应聘记录</TITLE>

</HEAD>
<BODY>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdtit height=30><B>收到应聘记录--收到投递的简历记录</B></TD></TR>
  <TR>
  <%
		List comkantouList=(List)request.getAttribute("comkantoulist");
		System.out.println(comkantouList.size());
		int comkantoutiao=comkantouList.size();



   %>
    <TD class=tdtin height=30>共有<SPAN 
class=aler><%=comkantoutiao %></SPAN>条简历投递记录</TD></TR></TABLE>
<FORM  action="" method=post name="thisfrom">
  <INPUT TYPE="hidden" NAME="actionType">
<TABLE id=table4 cellSpacing=0 cellPadding=0 width="100%" border=0>
 <TR>
    <TD class=tdlit width="50"> <input name="selectAll" type="checkbox" title='全选/取消' onclick="checkAll()">全选</TD>
		<TD class="tdlit10">人才名</TD>
		<TD class="tdlit10">投递的职位名称</的TD>
		<TD class="tdlit10">主修专业</TD>
		<TD class="tdlit10" >学历</TD>
		<TD class="tdlit10" >希望从事的行业</TD>	
		<TD class="tdlit10" >希望从事的职业</TD>
		<TD class="tdlit10" >希望从事的职位</TD>
		<TD class="tdlit10" >现在居住地</TD>
    	<TD class=tdlit10 >投递日期</TD>
  </TR>
  	<%
		if(comkantouList.size()==0)
		{
	 %>
	  <TR>
    <TD class=tdlin width=30></TD>
    <TD class=tdlin1></TD>
    <TD class=tdlin1></TD>
    <TD class=tdlin1></TD>
    <TD class=tdlin1></TD>
    <TD class=tdlin1 ></TD>
    <TD class=tdlin1></TD>
    <TD class=tdlin1></TD>
    <TD class=tdlin1 ></TD>
    <TD class=tdlin1 ></TD>
  </TR>
<%
	}else{
		for(int i=0;i<comkantouList.size();i++)
		{
		Map comkantoumap=(Map)comkantouList.get(i);

 %>
  <TR>
    <TD class=tdlin width=30><input name="id" type="checkbox" value="<%=(String)comkantoumap.get("throw_history_id") %>"></TD>
    <TD class=tdlin1><a  target="_blank" href="<%=request.getContextPath()%>/comkantoujianli?actionType=zaikantoude&resume_id=<%=(String)comkantoumap.get("resume_id")%>"><%=(String)comkantoumap.get("resume_name") %></a></TD>
	<TD class=tdlin1><%=comkantoumap.get("want_name") %></TD>
    <TD class=tdlin1><%=comkantoumap.get("major") %></TD>
	<TD class=tdlin1><%=comkantoumap.get("educational_level") %></TD>
    <TD class=tdlin1><%=comkantoumap.get("hope_industry") %></TD>
    <TD class=tdlin1 ><%=comkantoumap.get("hope_occupation") %></TD>
    <TD class=tdlin1><%=comkantoumap.get("hope_position") %></TD>
    <TD class=tdlin1><%=comkantoumap.get("now_live_city1") %>-&gt;<%=comkantoumap.get("now_live_city2") %></TD>
    <TD class=tdlin1 width=120><%=((String)comkantoumap.get("s_time")).substring(0,10) %></TD>
  </TR>
<%} }%>

<%
			List Loginlist=(List)session.getAttribute("Loginlist");
			Map yhMap=(Map)Loginlist.get(0);
			String id=(String)yhMap.get("company_id");				

 %>
    <TD class=tdlib1 colSpan=10><INPUT class=input2 type="button" value=删除应聘 onClick="del()">	</TD>
</TABLE>
</FORM>
<TABLE id=table3 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdbr></TD></TR>
  <TR>
    <TD class=tdtop><B>说明</B></TD></TR>
  <TR>
    <TD class=tdmi>
      <TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>
   
        <TR>
          <TD><FONT color=#ff0000>·</FONT>
		  <FONT color=#000000>“<STRONG>删除应聘</STRONG>”</FONT>
			<FONT color=#333333>即删除选择中的投递来的应聘简历。</FONT>
		  </TD>
		</TR>
        <TR>
          <TD><FONT color=#ff0000>·</FONT><SPAN 
            class=line>如果，投递来的简历突然不见了，则表示求职的个人已取消了投递。如果您删除了投来的简历个人的投递记录中将不在出现本次投递记录</SPAN></TD></TR></TABLE></TD></TR>
  <TR>
    <TD height=30></TD></TR></TABLE></BODY></HTML>
<SCRIPT LANGUAGE="JavaScript">
<!--
function checkAll()
{
	var a=document.getElementsByName("id");
	for (var i=0;i<a.length;i++)
	{
		var e = a[i];
		e.checked = document.forms[0].selectAll.checked;
	}
}

function del()
{
	var flag = false;
		if(document.forms[0].id.length==undefined)
		{
			flag = true;
			if(confirm("是否确认取消应聘，取消不可恢复")==true)
			{
				document.forms[0].actionType.value="del";
				document.forms[0].action="<%=request.getContextPath()%>/comkantoujianli?company_id=<%=id%>";
				document.forms[0].submit();
			}
		}
		else{
			for(var i=0;i<document.forms[0].id.length;i++)
		 	{
				var obj=document.forms[0].id[i];
				if(obj.type=="checkbox" && obj.name=="id")
				{ 
					if(obj.checked==true)
					{
						flag = true;
						if(confirm("是否确认取消应聘，取消不可恢复")==true)
						{
							document.forms[0].actionType.value="del";
							document.forms[0].action="<%=request.getContextPath()%>/comkantoujianli?company_id=<%=id%>";
							document.forms[0].submit();
						}
						break;
					}			 	
				}
			}
		 }
		 if(!flag){
		 alert('请选择要取消应聘项！');
		 return;	 
	 }	
}	
//-->
</SCRIPT>