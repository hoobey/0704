<%@ page  pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>审核企业合法性</title>
    
  
	<meta http-equiv="keywords" content="审核,企业,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
 <form name="thisfrom" action="#" >
<input type="hidden" name="actionType" value="">
<table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
	<tr>
		<td class="subtitle">企业信息管理</td>
	</tr>
</table>
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
	<tr align="center">
		<td  class="page td_search" width="100%" >企业人信息</td>
	</tr>
</table>
<table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style" id="table14">
	<tr>
		<td class="align_right">  <input name="new_button5" type="button" class="input_text" onClick="del()" value="删除">
		<input name="new_button6" type="button" class="input_text" onClick="shen()" value="同意通过审核"></td>
	</tr>
</table>
<table class="table_style" cellspacing="1" cellpadding="4" width="100%" id="table2" >
	<tr>
		<td class="page td_title" width="50"><input name="selectAll" type="checkbox" title='全选/取消' onclick="checkAll()">全选</td>
		<td class="page td_title" width="30">序号</td>
		<td class="page td_title">公司名称</td>
		<td class="page td_title">公司所在地</td>
		<td class="page td_title">联系电话</td>
		<td class="page td_title">营业执照</td>	
		<td class="page td_title">注册的时间</td>
		<td class="page td_title">查看详细信息</td>		
	</tr>		
		<%
			
			int j=0;
			Page page_=(Page)request.getAttribute("page");
			List list=(List)request.getAttribute("comlist");
			for(int i=0;i<list.size();i++)
			{
				j++;
				Map map=(Map)list.get(i);
	%>
	<tr>
		<td class="page td_list"><input name="id" type="checkbox" value=<%=(String)map.get("company_id")%>></td>
		<td class="page td_list"><%=j%></td>
		<td class="page td_list"><%=(String)map.get("company_name")%></td>
		<td class="page td_list"><%=(String)map.get("big_address_name")%>-&gt;<%=(String)map.get("small_address_name")%></td>
		<td class="page td_list"><%=(String)map.get("com_contact_telephone")%></td>
		<td class="page td_list"><IMG height=200 src="<%=map.get("photo_url")%>" width=200 border=0></td>
		<td class="page td_list"><%=((String)map.get("com_login_record")).substring(0,10)%></td>
		<td class="page td_list"><a href="comshen?actionType=queryone&company_id=<%=(String)map.get("company_id")%>">看企业详细内容</a></td>
	</tr>
<%} %>
</table>
<table width="100%" border="0" cellpadding="4" cellspacing="0" class="table_style" id="FYLB" align="center">
	<tr><td class="page td_search">
			<% PageView view = new PageView(request,out,page_); %>
			<% view.setCurrentUrl("comshen"); %>
			<% view.setVisible(true,0,0); %>
	</td></tr>
</table>
</form>
</body>
</html>
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
			if(confirm("是否确认删除项，删除不可恢复")==true)
			{
				document.forms[0].actionType.value="del";
				document.forms[0].action="<%=request.getContextPath()%>/comshen?";
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
						if(confirm("是否确认删除项，删除不可恢复")==true)
						{
							document.forms[0].actionType.value="del";
							document.forms[0].action="<%=request.getContextPath()%>/comshen?";
							document.forms[0].submit();
						}
						break;
					}			 	
				}
			}
		 }
		 if(!flag){
		 alert('请选择删除项！');
		 return;	 
	 }	
}	
function shen()
{
	var flag = false;
		if(document.forms[0].id.length==undefined)
		{
			flag = true;
			if(confirm("是否确认所选项，能够通过审核")==true)
			{
				document.forms[0].actionType.value="shen";
				document.forms[0].action="<%=request.getContextPath()%>/comshen?";
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
						if(confirm("是否确认所选项，能够通过审核")==true)
						{
							document.forms[0].actionType.value="shen";
							document.forms[0].action="<%=request.getContextPath()%>/comshen?";
							document.forms[0].submit();
						}
						break;
					}			 	
				}
			}
		 }
		 if(!flag){
		 alert('请选择删除项！');
		 return;	 
	 }	
}	

</script>