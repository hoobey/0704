<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
  <head>
<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<TITLE>��ҵ�ѷ�����֪ͨ��¼</TITLE>

</HEAD>
<BODY>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdtit height=30><B>�ѷ�����֪ͨ--�ѷ�����֪ͨ��¼</B></TD></TR>
  <TR>
  <%
		List comkantongzhilist=(List)request.getAttribute("comkantongzhilist");
		System.out.println(comkantongzhilist.size());
		int comkantoutiao=comkantongzhilist.size();



   %>
    <TD class=tdtin height=30>����<SPAN 
class=aler><%=comkantoutiao %></SPAN>������֪ͨ��¼</TD></TR></TABLE>
<FORM  action="" method=post >
  <INPUT TYPE="hidden" NAME="actionType">
<TABLE id=table4 cellSpacing=0 cellPadding=0 width="100%" border=0>
 <TR>
    <TD class=tdlit width="50"> <input name="selectAll" type="checkbox" title='ȫѡ/ȡ��' onclick="checkAll()">ȫѡ</TD>
		<TD class="tdlit10">�˲���</TD>
		<TD class="tdlit10">����רҵ</TD>
		<TD class="tdlit10" >ѧ��</TD>
		<TD class="tdlit10" >ϣ�����µ���ҵ</TD>	
		<TD class="tdlit10" >ϣ�����µ�ְҵ</TD>
		<TD class="tdlit10" >ϣ�����µ�ְλ</TD>
		<TD class="tdlit10" >���ھ�ס��</TD>
    	<TD class=tdlit10 >������֪ͨ������</TD>
  </TR>
  	<%
		if(comkantongzhilist.size()==0)
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
  </TR>
<%
	}else{
		for(int i=0;i<comkantongzhilist.size();i++)
		{
		Map comkantongzhimap=(Map)comkantongzhilist.get(i);

 %>
  <TR>
    <TD class=tdlin width=30><input name="id" type="checkbox" value="<%=(String)comkantongzhimap.get("interview_info_id") %>"></TD>
    <TD class=tdlin1><a  target="_blank" href="<%=request.getContextPath()%>/sourencai?actionType=zaisourencai&id=<%=comkantongzhimap.get("resume_id") %>"><%=(String)comkantongzhimap.get("resume_name") %></a></TD>

    <TD class=tdlin1><%=comkantongzhimap.get("major") %></TD>
	<TD class=tdlin1><%=comkantongzhimap.get("educational_level") %></TD>
    <TD class=tdlin1><%=comkantongzhimap.get("hope_industry") %></TD>
    <TD class=tdlin1 ><%=comkantongzhimap.get("hope_occupation") %></TD>
    <TD class=tdlin1><%=comkantongzhimap.get("hope_position") %></TD>
    <TD class=tdlin1><%=comkantongzhimap.get("now_live_city1") %>-&gt;<%=comkantongzhimap.get("now_live_city2") %></TD>
    <TD class=tdlin1 width=120><%=((String)comkantongzhimap.get("s_time")).substring(0,10) %></TD>
  </TR>
<%} }%>

<%
			List Loginlist=(List)session.getAttribute("Loginlist");
			Map yhMap=(Map)Loginlist.get(0);
			String id=(String)yhMap.get("company_id");				

 %>
    <TD class=tdlib1 colSpan=9><INPUT class=input2 type="button" value=ɾ������֪ͨ onClick="del()">	</TD>
</TABLE>
</FORM>
<TABLE id=table3 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdbr></TD></TR>
  <TR>
    <TD class=tdtop><B>˵��</B></TD></TR>
  <TR>
    <TD class=tdmi>
      <TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>
   
        <TR>
          <TD><FONT color=#ff0000>��</FONT>
		  <FONT color=#000000>��<STRONG>ɾ������֪ͨ</STRONG>��</FONT>
			<FONT color=#333333>��ɾ����ѡ�����˷���������֪��</FONT>
		  </TD>
		</TR>
        <TR>
          <TD><FONT color=#ff0000>��</FONT><SPAN 
            class=line>�������������֪ͨ����ͻȻ�������ˣ����ʾ��ְ�ĸ���ɾ��ӦƸ֪ͨ�������ɾ����ӦƸ֪ͨ����������֪ͨ�ĸ��˵Ľ�������֪ͨ�н����ڳ��ֱ�������֪ͨ��¼</SPAN></TD></TR></TABLE></TD></TR>
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
			if(confirm("�Ƿ�ȷ��ȡ��ӦƸ��ȡ�����ɻָ�")==true)
			{
				document.forms[0].actionType.value="del";
				document.forms[0].action="<%=request.getContextPath()%>/mianshitongzhi?company_id=<%=id%>";
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
							document.forms[0].action="<%=request.getContextPath()%>/mianshitongzhi?company_id=<%=id%>";
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