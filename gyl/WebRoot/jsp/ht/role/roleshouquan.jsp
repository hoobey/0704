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
    List rolelist=(List)request.getAttribute("rolelist1");
    Map map=(Map)rolelist.get(0);
    System.out.println("id"+(String)map.get("role_id"));
     %>
  <INPUT TYPE="hidden" NAME="role_id" value="<%=(String)map.get("role_id")%>">
        <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
      <tr>
        <td class="subtitle navi_bar" align="center">为角色赋权限</td>		   
      </tr>
    </table>
  <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table11">
    <tr>
    <td class="page td_search" colspan="3">您可以为<font color="red"><%=map.get("role_name") %></font>,赋予下列权限</td>
    </tr>
  </table>
  <br>
  	<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
  	 <tr align="center">
    <td  class="page td_search" width="100%" >现有权限信息</td>
  </tr>
  </table>
   <table  cellspacing="1" cellpadding="1" width="100%" id="table2" >
 
 <%
 	List limitdalist=(List)request.getAttribute("limitlist1");
 		for(int d=0;d<limitdalist.size();d++)
 		{
 		Map limitdamap=(Map)limitdalist.get(d);
 		String id=(String)limitdamap.get("limit_id"); 
  %>
 
  <tr class="page td_title"><td  colspan="3"> <input name="id" onclick="cc(this)" type="checkbox" value=<%=(String)limitdamap.get("limit_id")%> 
		<%
			List ylist=(List)request.getAttribute("youlimitlist");
			for(int b=0;b<ylist.size();b++)
			{
				Map ymap=(Map)ylist.get(b);
				if(ymap.get("limit_id").equals(limitdamap.get("limit_id")))
				{
				%>
					checked				
				<%
				}
			}
		
		 %>
		 ><%=(String)limitdamap.get("limit_name")%></td>
		</tr>
		<tr>
		<%
			List list=(List)request.getAttribute("limitlist2");
			int a=0;
				for(int i=0;i<list.size();i++)
				{
				Map map1=(Map)list.get(i);
				String faid=(String)map1.get("father_id");
				if(faid.equals(id))
				{
				a++;
	%>
		<td class="page td_list"><input name="id" type="checkbox" value=<%=(String)map1.get("limit_id")%> 
		<%
			List ylist1=(List)request.getAttribute("youlimitlist");
			for(int b=0;b<ylist1.size();b++)
			{
				Map ymap=(Map)ylist1.get(b);
				if(ymap.get("limit_id").equals(map1.get("limit_id")))
				{
				%>
					checked				
				<%
				}
			}
		
		 %>
		 onclick="aa(this.value)"
		>
		<%=(String)map1.get("limit_name")%></td>
		
	<%
		if(a%3==0)
		{
	%>
			</tr>
			<tr>
	<%
		}
		 }
	 
	%>

<% }%>
</tr>
<%} %>
		
  </table>
   <table width="100%" border="0" cellpadding="4" cellspacing="0" class="table_style" id="FYLB" align="center">
       <tr><td class="page td_search"><input name="new_button5" type="button" class="input_text" onClick="fenjiaose()" value="分权限">
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
			if(confirm("是否确认，为该管理赋予选中权限")==true)
			{
				document.forms[0].actionType.value="fenquanxian";
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
					if(confirm("是否确认，为该管理赋予选中权限")==true)
					{
						document.forms[0].actionType.value="fenquanxian";
						document.forms[0].action="<%=request.getContextPath()%>/htrole?";
						document.forms[0].submit();
					}
					break;
				}			 	
			}
		 }
		 }
		 if(!flag){
		 alert('请选择权限项！');
		 return;	 
	 }	
}	

function aa(val)
{
	var aa=document.getElementsByName("id");
	for(var i=0;i<aa.length;i++)
	{
		val=val.substring(0,2);
		if(aa[i].value==val)
		{
			aa[i].checked=true;
		}
	}
}

function cc(obj)
{
	val=obj.value;
	var aa=document.getElementsByName("id");
	for(var i=0;i<aa.length;i++)
	{
		var zhi=aa[i].value
		zhi=zhi.substring(0,2);
		if(zhi==val)
		{
			aa[i].checked=obj.checked;
		}
	}
}
</script>
  