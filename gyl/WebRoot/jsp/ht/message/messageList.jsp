<%@ page  pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>

<html>
  <head>    
   <title>������Ϣ����</title>
  	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>  
  <body>
<form name="thisfrom" action="#" >
<input type="hidden" name="actionType" value="">
<table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
	<tr>
		<td class="subtitle">������Ϣ����</td>
	</tr>
</table>
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
	<tr align="center">
		<td  class="page td_search" width="100%" >������Ϣ</td>
	</tr>
</table>
<table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style" id="table14">
	<tr>
		<td class="align_right">  <input name="new_button5" type="button" class="input_text" onClick="del()" value="ɾ��">
	<input name="new_button6"  type="button" class="input_text" onClick="examine()"  value="ͬ��ͨ�����">
	<input name="new_button6"  type="button" class="input_text" onClick="meihuiquery()"  value="ֻ��ʾû�лظ���">
	<input name="new_button6"  type="button" class="input_text" onClick="meishenquery()"  value="ֻ��ʾû����˵�">
	<input name="new_button6"  type="button" class="input_text" onClick="query()"  value="��ʾȫ��">
	</tr>
</table>
<table class="table_style" cellspacing="1" cellpadding="4" width="100%" id="table2" >
	<tr>
		<td class="page td_title" width="50"><input name="selectAll" type="checkbox" title='ȫѡ/ȡ��' onclick="checkAll()">ȫѡ</td>
		<td class="page td_title" width="30">���</td>
		<td class="page td_title">����</td>
		<td class="page td_title">����ʱ��</td>
		<td class="page td_title">�Ƿ������</td>
		<td class="page td_title">������</td>		
		<td class="page td_title">�Ƿ��ѻظ�</td>		
		<td class="page td_title" >����</td>
	</tr>		
		<%
			
			int j=0;
			Page page_=(Page)request.getAttribute("page");
			List list=(List)request.getAttribute("messagelist");
			for(Iterator it=list.iterator();it.hasNext();)
			{
				j++;
				Map map=(Map)it.next();
	%>
	<tr>
		<td class="page td_list"><input name="id" type="checkbox" value=<%=(String)map.get("message_id")%>></td>
		<td class="page td_list"><%=j%></td>
		<td class="page td_list"><%=(String)map.get("message_content")%></td>
		<td class="page td_list"><%=((String)map.get("message_updatetime")).substring(0,10)%></td>
		<td class="page td_list"><%=(String)map.get("message_is_examine")%></td>
		<td class="page td_list"><%=(String)map.get("user_info_name")%></td>
		<td class="page td_list"><%=(String)map.get("is_reply")%></td>
		<td class="page td_list"><% if(((String)map.get("is_reply")).equals("��")){%><a href="message?actionType=replycontent&message_id=<%=(String)map.get("message_id")%>">��ʾ�ظ���Ϣ</a><%} else{ %><a href="message?actionType=replyPage&message_id=<%=(String)map.get("message_id")%>">�ظ�</a><%} %></td>
	</tr>
	<%
		 }
	 
	%>
</table>
<table width="100%" border="0" cellpadding="4" cellspacing="0" class="table_style" id="FYLB" align="center">
	<tr><td class="page td_search">
			<% PageView view = new PageView(request,out,page_); %>
			<% view.setCurrentUrl("message"); %>
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
				document.forms[0].action="<%=request.getContextPath()%>/message?";
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
							document.forms[0].action="<%=request.getContextPath()%>/message?";
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

function examine()
{
	var flag = false;
		if(document.forms[0].id.length==undefined)
		{
			flag = true;
			if(confirm("�Ƿ�ȷ����ѡ��ܹ�ͨ�����")==true)
			{
				document.forms[0].actionType.value="alterexamine";
				document.forms[0].action="<%=request.getContextPath()%>/message?";
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
						if(confirm("�Ƿ�ȷ����ѡ��ܹ�ͨ�����")==true)
						{
							document.forms[0].actionType.value="alterexamine";
							document.forms[0].action="<%=request.getContextPath()%>/message?";
							document.forms[0].submit();
						}
						break;
					}			 	
				}
			}
		 }
		 if(!flag){
		 alert('��ѡ�����ͨ���');
		 return;	 
	 }	
}


function meihuiquery()
{
	document.forms[0].actionType.value="meihuiquery";
	document.forms[0].action="<%=request.getContextPath()%>/message?";
	document.forms[0].submit();
}
function meishenquery()
{
	document.forms[0].actionType.value="meishenquery";
	document.forms[0].action="<%=request.getContextPath()%>/message?";
	document.forms[0].submit();
}
function query()
{
	document.forms[0].actionType.value="query";
	document.forms[0].action="<%=request.getContextPath()%>/message?";
	document.forms[0].submit();
}

</script>