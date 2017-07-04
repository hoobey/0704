<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
  <head>
<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<TITLE>企业管理中心————企业招聘信息</TITLE>

</HEAD>
<BODY>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdtit height=30><B>企业招聘信息记录--企业招聘信息</B></TD>
  </TR>
  <TR>
  <%
		List comzhaopinlist=(List)request.getAttribute("comzhaopinlist");
		System.out.println(comzhaopinlist.size());
		int comzhaopintiao=comzhaopinlist.size();
	
   %>
    <TD class=tdtin height=30>共有<SPAN 
class=aler><%=comzhaopintiao %></SPAN>条招聘信息记录</TD>
  </TR></TABLE>
<FORM  action="" method=post >
  <INPUT TYPE="hidden" NAME="actionType">
  <INPUT TYPE="hidden" NAME="company_id">
<TABLE id=table4 cellSpacing=0 cellPadding=0 width="100%" border=0>
 <TR>
    <TD class=tdlit width="50"> <input name="selectAll" type="checkbox" title='全选/取消' onClick="checkAll()">全选</TD>
		<TD class="tdlit10">职位名称</TD>
		<TD class="tdlit10">职位大类别</TD>
		<TD class="tdlit10">职位小类别</TD>
		<TD class="tdlit10" >年龄要求</TD>	
		<TD class="tdlit10" >有效期</TD>
		<TD class="tdlit10" >关键词</TD>
		<TD class="tdlit10" >招聘人数</TD>
		<TD class="tdlit10" >工作地</TD>
		  <TD class=tdlit10 >学历要求</TD>
		  <TD class=tdlit10 >被浏览数</TD>
		   <TD class=tdlit10 >查看详情</TD>
		    <TD class=tdlit10 >操作</TD>
  </TR>
  	<%
		if(comzhaopinlist.size()==0)
		{
	 %>
	  <TR>
    <TD class=tdlin colSpan=13>没有招聘信息</TD>
  </TR>
<%
	}else{
		for(int i=0;i<comzhaopinlist.size();i++)
		{
		Map comzhaopinmap1=(Map)comzhaopinlist.get(i);
 %>
  <TR>
    <TD class=tdlin width=30><input name="id" type="checkbox" value="<%=(String)comzhaopinmap1.get("want_information_id") %>"></TD>
    <TD class=tdlin1><%=(String)comzhaopinmap1.get("want_name") %></TD>
	<TD class=tdlin1><%=comzhaopinmap1.get("want_profession") %></TD>
    <TD class=tdlin1><%=comzhaopinmap1.get("want_position") %></TD>
	<TD class=tdlin1><%=comzhaopinmap1.get("want_age") %></TD>
    <TD class=tdlin1><%=((String)comzhaopinmap1.get("want_time")).substring(0,10)  %></TD>
    <TD class=tdlin1 ><%=comzhaopinmap1.get("want_keyword")  %></TD>
    <TD class=tdlin1><%=comzhaopinmap1.get("want_amount") %></TD>
	<TD class=tdlin1><%=comzhaopinmap1.get("big_address_name") %>-&gt;<%=comzhaopinmap1.get("small_address_name") %></TD>
    <TD class=tdlin1 ><%=comzhaopinmap1.get("want_degree") %></TD>
      <TD class=tdlin1 ><%=comzhaopinmap1.get("want_look_count") %>次</TD> 
	  <TD class=tdlin1 ><a href="comzhaopinxinxi?actionType=kanpage&want_information_id=<%=comzhaopinmap1.get("want_information_id") %>" target="jobmaincom">查看详细内容</a></TD>
	  	  <TD class=tdlin1 ><a href="comzhaopinxinxi?actionType=updatepage&want_information_id=<%=comzhaopinmap1.get("want_information_id") %>" target="jobmaincom">修改</a></TD>

  </TR>
<%} }%>

<%
			List Loginlist=(List)session.getAttribute("Loginlist");
			Map yhMap=(Map)Loginlist.get(0);
			String id=(String)yhMap.get("company_id");				

 %>
    <TD class=tdlib1 colSpan=13><INPUT class=input2 type="button" value=删除招聘信息 onClick="del()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT class=input2 type="button" value=创建新的招聘信息 onClick="add()"></TD>
</TABLE>
</FORM>
</BODY></HTML>
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

function add()
	{		
		document.forms[0].actionType.value="addPage"		
		document.forms[0].action="<%=request.getContextPath()%>/comzhaopinxinxi?";
		document.forms[0].submit();
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
				document.forms[0].action="<%=request.getContextPath()%>/comzhaopinxinxi?company_id=<%=id%>";
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
							document.forms[0].action="<%=request.getContextPath()%>/comzhaopinxinxi?company_id=<%=id%>";
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