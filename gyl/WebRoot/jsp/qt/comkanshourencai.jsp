<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
  <head>
<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<TITLE>��ҵ�˲ſ�</TITLE>

</HEAD>
<BODY>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdtit height=30><B>��ҵ���ղص��˲�--��ҵ�ղص��˲ż�¼</B></TD></TR>
  <TR>
  <%
		List comkanshourencailist=(List)request.getAttribute("comkanshourencailist");
		System.out.println(comkanshourencailist.size());
		int comkanshourencaitiao=comkanshourencailist.size();



   %>
    <TD class=tdtin height=30>����<SPAN 
class=aler><%=comkanshourencaitiao %></SPAN>���ղص��˲ż�����¼</TD></TR></TABLE>
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
		if(comkanshourencailist.size()==0)
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
		for(int i=0;i<comkanshourencailist.size();i++)
		{
		Map comkanshourencaimap=(Map)comkanshourencailist.get(i);

 %>
  <TR>
    <TD class=tdlin width=30><input name="id" type="checkbox" value="<%=(String)comkanshourencaimap.get("save_man_id") %>"></TD>
    <TD class=tdlin1><a  target="_blank" href="<%=request.getContextPath()%>/sourencai?actionType=zaisourencai&id=<%=comkanshourencaimap.get("resume_id") %>"><%=(String)comkanshourencaimap.get("resume_name") %></a></TD>

    <TD class=tdlin1><%=comkanshourencaimap.get("major") %></TD>
	<TD class=tdlin1><%=comkanshourencaimap.get("educational_level") %></TD>
    <TD class=tdlin1><%=comkanshourencaimap.get("hope_industry") %></TD>
    <TD class=tdlin1 ><%=comkanshourencaimap.get("hope_occupation") %></TD>
    <TD class=tdlin1><%=comkanshourencaimap.get("hope_position") %></TD>
    <TD class=tdlin1><%=comkanshourencaimap.get("now_live_city1") %>-&gt;<%=comkanshourencaimap.get("now_live_city2") %></TD>
    <TD class=tdlin1 width=120><%=((String)comkanshourencaimap.get("save_time")).substring(0,10) %></TD>
  </TR>
<%} }%>

<%
			List Loginlist=(List)session.getAttribute("Loginlist");
			Map yhMap=(Map)Loginlist.get(0);
			String id=(String)yhMap.get("company_id");				

 %>
    <TD class=tdlib1 colSpan=9><INPUT class=input2 type="button" value=����ɾ�� onClick="del()">	</TD>
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
		  <FONT color=#000000>��<STRONG>����ɾ��</STRONG>��</FONT>
			<FONT color=#333333>����ѡ����˲ŵ���Ϣ ���˲ſ���ɾ����</FONT>
		  </TD>
		</TR>
        <TR>
          <TD><FONT color=#ff0000>��</FONT><SPAN 
            class=line>������ղص��˲�û����ʾ���������ʾ�˲�����վ�Ĺ�����Աɾ����</SPAN></TD></TR></TABLE></TD></TR>
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
				document.forms[0].action="<%=request.getContextPath()%>/shoucangrencai?company_id=<%=id%>";
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
							document.forms[0].action="<%=request.getContextPath()%>/shoucangrencai?company_id=<%=id%>";
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