<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>
<html>
<head>

<title>管理员赋权限</title>
</head>
<body>
<form name="thisfrom" method="get" action="" >
 <input type="hidden" name="actionType" value="">
     <%
    List adminlist=(List)request.getAttribute("adminlist1");
    Map map=(Map)adminlist.get(0);
    System.out.println("id"+(String)map.get("admin_id"));
     %>
  <INPUT TYPE="hidden" NAME="admin_id" value="<%=(String)map.get("admin_id")%>">
        <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
      <tr>
        <td class="subtitle navi_bar" align="center">为管理员分配角色</td>		   
      </tr>
    </table>
  <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table11">
    <tr>
    <td class="page td_search" colspan="3">您可以为<font color="red"><%=map.get("admin_name") %></font>,赋予下列角色</td>
    </tr>
  </table>
  <br>
  	<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
  	 <tr align="center">
    <td  class="page td_search" width="100%" >现有角色信息</td>
  </tr>
  </table>
   <table  cellspacing="1" cellpadding="1" width="100%" id="table2" >
 
  <tr>  
	
		<%
			List list=(List)request.getAttribute("rolelist");
				for(int i=0;i<list.size();i++)
				{
				Map map1=(Map)list.get(i);
	%>
		<td class="page td_list"><input name="id" type="checkbox" value=<%=(String)map1.get("role_id")%> 
		<%
			List ylist=(List)request.getAttribute("yourolelist");
			for(int b=0;b<ylist.size();b++)
			{
				Map ymap=(Map)ylist.get(b);
				if(ymap.get("role_id").equals(map1.get("role_id")))
				{
				%>
					checked				
				<%
				}
			}
		
		 %>
		
		>
		<%=(String)map1.get("role_name")%></td>
		
	<%
		if((i+1)%3==0)
		{
	%>
			</tr>
			<tr>
	<%
		}
		 }
	 
	%>
</tr>
  </table>
   <table width="100%" border="0" cellpadding="4" cellspacing="0" class="table_style" id="FYLB" align="center">
       <tr><td class="page td_search"><input name="new_button5" type="button" class="input_text" onClick="fenjiaose()" value="分角色">
       </td></tr>

  </table>

</form>
</body>
</html>

<script language="javascript">

function fenjiaose()
{
	var flag = false;
			if(document.forms[0].id.length==undefined)
		{
			flag = true;
			if(confirm("是否确认，为该管理赋予选中角色")==true)
			{
				document.forms[0].actionType.value="fenjiaose";
				document.forms[0].action="<%=request.getContextPath()%>/htadmin?";
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
					if(confirm("是否确认，为该管理赋予选中角色")==true)
					{
						document.forms[0].actionType.value="fenjiaose";
						document.forms[0].action="<%=request.getContextPath()%>/htadmin?";
						document.forms[0].submit();
					}
					break;
				}			 	
			}
		 }
		 }
		 if(!flag){
		 alert('请选择角色项！');
		 return;	 
	 }	
}	
</script>
  