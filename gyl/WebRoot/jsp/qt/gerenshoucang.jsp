<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
  <head>
<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<TITLE>ӦƸְλ�ղؼ�</TITLE>

</HEAD>
<BODY>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>
 
  <TR>
    <TD class=tdtit height=30><B>ӦƸְλ�ղؼ�--�����ղص���Ƹְλ��Ϣ</B></TD></TR>
  <TR>
  <%
		List kanshoucangdelist=(List)request.getAttribute("kanshoucangdelist");
		System.out.println(kanshoucangdelist.size());
		int kanshoucangtiao=kanshoucangdelist.size();



   %>
    <TD class=tdtin height=30>���ղ�<SPAN 
class=aler><%=kanshoucangtiao %></SPAN>����Ƹְλ</TD></TR></TABLE>
<FORM  action="" method=post name="thisfrom">
  <INPUT TYPE="hidden" NAME="actionType">
<TABLE id=table4 cellSpacing=0 cellPadding=0 width="100%" border=0>
 <TR>
    <TD class=tdlit width="50"> <input name="selectAll" type="checkbox" title='ȫѡ/ȡ��' onclick="checkAll()">ȫѡ</TD>
    <TD class=tdlit10>��Ƹְλ</TD>
    <TD class=tdlit10>��Ƹ��˾</TD>
    <TD class=tdlit1 width=120>Ͷ������</TD>
  </TR>
  	<%
		if(kanshoucangdelist.size()==0)
		{
	 %>
	  <TR>
    <TD class=tdlin width=30></TD>
    <TD class=tdlin1></TD>
    <TD class=tdlin1></TD>
    <TD class=tdlin1 width=120></TD>
  </TR>
<%
	}else{
		for(int i=0;i<kanshoucangdelist.size();i++)
		{
		Map kanshoucangmap=(Map)kanshoucangdelist.get(i);

 %>
  <TR>
    <TD class=tdlin width=30><input name="id" type="checkbox" value="<%=(String)kanshoucangmap.get("save_com_id") %>"></TD>
    <TD class=tdlin1><a  target="_blank" href="<%=request.getContextPath()%>/souzhiwei?actionType=zaizaiquery&want_information_id=<%=(String)kanshoucangmap.get("want_information_id")%>"><%=(String)kanshoucangmap.get("want_name") %></a></TD>

    <TD class=tdlin1><a target="_blank" href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=(String)kanshoucangmap.get("company_id")%>"><%=(String)kanshoucangmap.get("company_name") %></a></TD>

    <TD class=tdlin1 width=120><%=((String)kanshoucangmap.get("save_time")).substring(0,10) %></TD>
  </TR>
<%} }%>

<%
			List Loginlist=(List)session.getAttribute("Loginlist");
			Map yhMap=(Map)Loginlist.get(0);
			String id=(String)yhMap.get("user_info_id");				

 %>
    <TD class=tdlib1 colSpan=5><INPUT class=input2 type="button" value=����ɾ�� onClick="del()">	</TD>
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
			<FONT color=#333333>����ѡ�����Ƹְλ��Ϣ ���ղؼ���ɾ����</FONT>
		  </TD>
		</TR>
        <TR>
          <TD><FONT color=#ff0000>��</FONT><SPAN 
            class=line>������ղص���Ƹְλû����ʾ���������ʾ��Ƹ��˾��ɾ������Ƹ��Ϣ��</SPAN></TD></TR></TABLE></TD></TR>
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
				document.forms[0].action="<%=request.getContextPath()%>/kangerenshoucanginfo?user_info_id=<%=id%>";
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
							document.forms[0].action="<%=request.getContextPath()%>/kangerenshoucanginfo?user_info_id=<%=id%>";
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