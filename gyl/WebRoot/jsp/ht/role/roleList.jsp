<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>
<html>
<head>

<title>��ɫ����</title>
</head>
<body>
<form name="thisfrom" method="get" action="" >
 <input type="hidden" name="actionType" value="">
        <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
      <tr>
        <td class="subtitle navi_bar" align="center">��ɫ����</td>		   
      </tr>
    </table>
  <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table11">
    <tr>
    <td class="page td_search">��ɫ��</td>
    <td class="td_search" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="role_name" type="text"  class="input_area"></td>
    <td class="td_search"><input type="button" name="new_button52" value="��ѯ" onClick="query()" class="input_text"></td>
    </tr>
  </table>
  <br>
  	<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
  	 <tr align="center">
    <td  class="page td_search" width="100%" >��ɫ��Ϣ</td>
  </tr>
  </table>
	<table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table14">
    <tr>
      <td class="align_right"><input name="new_button5" type="button" class="input_text" onClick="add()" value="���ӽ�ɫ">
      <input name="new_button5" type="button" class="input_text" onClick="del()" value="ɾ����ɫ">
      </td>
    </tr>
  </table>
   <table class="table_style" cellspacing="1" cellpadding="4" width="100%" id="table2" >
 
    <tr>
	<td class="page td_title" width="50"><input name="selectAll" type="checkbox" title='ȫѡ/ȡ��' onclick="checkAll()">ȫѡ</td>
   
       <td class="page td_title" width="30">���</td>
	  <td class="page td_title">��ɫ��</td>
      <td class="page td_title" >����</td>
      <td class="page td_title" >�����ɫ</td>
    </tr>	
		<%
			
			int j=0;
			Page page_=(Page)request.getAttribute("page");
			List list=(List)request.getAttribute("rolelist");
			for(Iterator it=list.iterator();it.hasNext();)
			{
				j++;
				Map map=(Map)it.next();
	%>
    <tr>
		<td class="page td_list"><input name="id" type="checkbox" value=<%=(String)map.get("role_id")%>></td>
        <td class="page td_list"><%=j%></td>
		<td class="page td_list"><%=(String)map.get("role_name")%></td>
        <td class="page td_list" >
			 <a href="htrole?actionType=updatePage&role_id=<%=(String)map.get("role_id")%>">�޸�</a>
	 </td>
      <td class="page td_list" >
	 <a href="htrole?actionType=fenquanxianPage&role_id=<%=(String)map.get("role_id")%>">����Ȩ��</a>
	 </td>
    </tr>
    <tr>
	<%
		 }
	 
	%>


  </table>
   <table width="100%" border="0" cellpadding="4" cellspacing="0" class="table_style" id="FYLB" align="center">
       <tr><td class="page td_search"><div>
		 	<% PageView view = new PageView(request,out,page_); %>
			<% view.setCurrentUrl("htrole"); %>
			<% view.setVisible(true,0,0); %>
	   </div></td></tr>

  </table>

</form>
</body>
</html>

<script language="javascript">
function query(){
		document.forms[0].actionType.value="query"		
		document.forms[0].action="<%=request.getContextPath()%>/htrole?";
		document.forms[0].submit();
}
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
		document.forms[0].action="<%=request.getContextPath()%>/htrole?";
		document.forms[0].submit();
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
				document.forms[0].action="<%=request.getContextPath()%>/htrole?";
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
						document.forms[0].action="<%=request.getContextPath()%>/htrole?";
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
  