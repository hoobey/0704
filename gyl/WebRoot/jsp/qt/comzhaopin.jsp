<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
  <head>
<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<TITLE>��ҵ�������ġ���������ҵ��Ƹ��Ϣ</TITLE>

</HEAD>
<BODY>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdtit height=30><B>��ҵ��Ƹ��Ϣ��¼--��ҵ��Ƹ��Ϣ</B></TD>
  </TR>
  <TR>
  <%
		List comzhaopinlist=(List)request.getAttribute("comzhaopinlist");
		System.out.println(comzhaopinlist.size());
		int comzhaopintiao=comzhaopinlist.size();
	
   %>
    <TD class=tdtin height=30>����<SPAN 
class=aler><%=comzhaopintiao %></SPAN>����Ƹ��Ϣ��¼</TD>
  </TR></TABLE>
<FORM  action="" method=post >
  <INPUT TYPE="hidden" NAME="actionType">
  <INPUT TYPE="hidden" NAME="company_id">
<TABLE id=table4 cellSpacing=0 cellPadding=0 width="100%" border=0>
 <TR>
    <TD class=tdlit width="50"> <input name="selectAll" type="checkbox" title='ȫѡ/ȡ��' onClick="checkAll()">ȫѡ</TD>
		<TD class="tdlit10">ְλ����</TD>
		<TD class="tdlit10">ְλ�����</TD>
		<TD class="tdlit10">ְλС���</TD>
		<TD class="tdlit10" >����Ҫ��</TD>	
		<TD class="tdlit10" >��Ч��</TD>
		<TD class="tdlit10" >�ؼ���</TD>
		<TD class="tdlit10" >��Ƹ����</TD>
		<TD class="tdlit10" >������</TD>
		  <TD class=tdlit10 >ѧ��Ҫ��</TD>
		  <TD class=tdlit10 >�������</TD>
		   <TD class=tdlit10 >�鿴����</TD>
		    <TD class=tdlit10 >����</TD>
  </TR>
  	<%
		if(comzhaopinlist.size()==0)
		{
	 %>
	  <TR>
    <TD class=tdlin colSpan=13>û����Ƹ��Ϣ</TD>
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
      <TD class=tdlin1 ><%=comzhaopinmap1.get("want_look_count") %>��</TD> 
	  <TD class=tdlin1 ><a href="comzhaopinxinxi?actionType=kanpage&want_information_id=<%=comzhaopinmap1.get("want_information_id") %>" target="jobmaincom">�鿴��ϸ����</a></TD>
	  	  <TD class=tdlin1 ><a href="comzhaopinxinxi?actionType=updatepage&want_information_id=<%=comzhaopinmap1.get("want_information_id") %>" target="jobmaincom">�޸�</a></TD>

  </TR>
<%} }%>

<%
			List Loginlist=(List)session.getAttribute("Loginlist");
			Map yhMap=(Map)Loginlist.get(0);
			String id=(String)yhMap.get("company_id");				

 %>
    <TD class=tdlib1 colSpan=13><INPUT class=input2 type="button" value=ɾ����Ƹ��Ϣ onClick="del()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT class=input2 type="button" value=�����µ���Ƹ��Ϣ onClick="add()"></TD>
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
			if(confirm("�Ƿ�ȷ��ȡ��ӦƸ��ȡ�����ɻָ�")==true)
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
						if(confirm("�Ƿ�ȷ��ȡ��ӦƸ��ȡ�����ɻָ�")==true)
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
		 alert('��ѡ��Ҫȡ��ӦƸ�');
		 return;	 
	 }	
}	
//-->
</SCRIPT>