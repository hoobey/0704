<%@ page  pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>

<html>
  <head>    
   <title>������Ƭ���</title>
  	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>  
  <body>
<form name="thisfrom" action="#" >
<input type="hidden" name="actionType" value="">
<table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
	<tr>
		<td class="subtitle">�򵥵ĸ�����Ϣ����</td>
	</tr>
</table>
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
	<tr align="center">
		<td  class="page td_search" width="100%" >���ָ�����Ϣ</td>
	</tr>
</table>
<table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style" id="table14">
	<tr>
		<td class="align_right">  <input name="new_button5" type="button" class="input_text" onClick="del()" value="ɾ��">

	</tr>
</table>
<table class="table_style" cellspacing="1" cellpadding="4" width="100%" id="table2" >
	<tr>
		<td class="page td_title" width="50"><input name="selectAll" type="checkbox" title='ȫѡ/ȡ��' onclick="checkAll()">ȫѡ</td>
		<td class="page td_title" width="30">���</td>
		<td class="page td_title">�û���</td>
		<td class="page td_title">����</td>
		<td class="page td_title">����</td>
		<td class="page td_title">��������</td>
		<td class="page td_title">�ڶ�/��ҵԺУ</td>
		<td class="page td_title">ͨѶ��ַ</td>
		<td class="page td_title">��ѧ��������</td>	
		<td class="page td_title">���һ�ε�¼��ʱ��</td>		
	</tr>		
		<%
			
			int j=0;
			Page page_=(Page)request.getAttribute("page");
			List list=(List)request.getAttribute("userinfolist");
			for(Iterator it=list.iterator();it.hasNext();)
			{
				j++;
				Map map=(Map)it.next();
	%>
	<tr>
		<td class="page td_list"><input name="id" type="checkbox" value=<%=(String)map.get("user_info_id")%>></td>
		<td class="page td_list"><%=j%></td>
		<td class="page td_list"><%=(String)map.get("user_info_name")%></td>
		<td class="page td_list"><%=(String)map.get("resume_name")%></td>
		<td class="page td_list"><%=(String)map.get("resume_age")%>��</td>
		<td class="page td_list"><%=(String)map.get("work_year")%></td>
		<td class="page td_list"><%=(String)map.get("graduate_school")%></td>
		<td class="page td_list">
		<%
			String dz=(String)map.get("contact_address");
		%>
		
		<%=(dz.length()>4)?dz.substring(0,4):dz%></td>
		<td class="page td_list">
				<%
			String xuexijingguo=(String)map.get("study_history");
		%>
		
		<%=(xuexijingguo.length()>20)?xuexijingguo.substring(0,20):xuexijingguo%></td>
		<td class="page td_list"><%=((String)map.get("user_login_record")).substring(0,10)%></td>
	</tr>
	<%
		 }
	 
	%>
</table>
<table width="100%" border="0" cellpadding="4" cellspacing="0" class="table_style" id="FYLB" align="center">
	<tr><td class="page td_search">
			<% PageView view = new PageView(request,out,page_); %>
			<% view.setCurrentUrl("gereninfo"); %>
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
			if(confirm("�Ƿ�ȷ��ɾ���ɾ�����ɻָ�")==true)
			{
				document.forms[0].actionType.value="del";
				document.forms[0].action="<%=request.getContextPath()%>/gereninfo?";
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
						if(confirm("�Ƿ�ȷ��ɾ���ɾ�����ɻָ�")==true)
						{
							document.forms[0].actionType.value="del";
							document.forms[0].action="<%=request.getContextPath()%>/gereninfo?";
							document.forms[0].submit();
						}
						break;
					}			 	
				}
			}
		 }
		 if(!flag){
		 alert('��ѡ��ɾ���');
		 return;	 
	 }	
}	


</script>