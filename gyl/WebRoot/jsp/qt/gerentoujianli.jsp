<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
  <head>
<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<TITLE>ӦƸ��ʷ��¼</TITLE>

</HEAD>
<BODY>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdtit height=30><B>ӦƸ��ʷ��¼--��ļ���Ͷ�ݼ�¼</B></TD></TR>
  <TR>
  <%
		List kantouList=(List)request.getAttribute("kantoudelist");
		System.out.println(kantouList.size());
		int kantoutiao=kantouList.size();



   %>
    <TD class=tdtin height=30>����<SPAN 
class=aler><%=kantoutiao %></SPAN>������Ͷ�ݼ�¼</TD></TR></TABLE>
<FORM  action="" method=post name="thisfrom">
  <INPUT TYPE="hidden" NAME="actionType">
<TABLE id=table4 cellSpacing=0 cellPadding=0 width="100%" border=0>
 <TR>
    <TD class=tdlit width="50"> <input name="selectAll" type="checkbox" title='ȫѡ/ȡ��' onclick="checkAll()">ȫѡ</TD>
    <TD class=tdlit10>ӦƸְλ</TD>
    <TD class=tdlit10>��Ƹ��˾</TD>
    <TD class=tdlit1 width=120>Ͷ������</TD>
  </TR>
  	<%
		if(kantouList.size()==0)
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
		for(int i=0;i<kantouList.size();i++)
		{
		Map kantoumap=(Map)kantouList.get(i);

 %>
  <TR>
    <TD class=tdlin width=30><input name="id" type="checkbox" value="<%=(String)kantoumap.get("throw_history_id") %>"></TD>
    <TD class=tdlin1><a  target="_blank" href="<%=request.getContextPath()%>/souzhiwei?actionType=zaizaiquery&want_information_id=<%=(String)kantoumap.get("want_information_id")%>"><%=(String)kantoumap.get("want_name") %></a></TD>

    <TD class=tdlin1><a target="_blank" href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=(String)kantoumap.get("company_id")%>"><%=(String)kantoumap.get("company_name") %></a></TD>

    <TD class=tdlin1 width=120><%=((String)kantoumap.get("s_time")).substring(0,10) %></TD>
  </TR>
<%} }%>

<%
			List Loginlist=(List)session.getAttribute("Loginlist");
			Map yhMap=(Map)Loginlist.get(0);
			String id=(String)yhMap.get("user_info_id");				

 %>
    <TD class=tdlib1 colSpan=5><INPUT class=input2 type="button" value=ȡ��ӦƸ onClick="del()">	</TD>
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
		  <FONT color=#000000>��<STRONG>ȡ��ӦƸ</STRONG>��</FONT>
			<FONT color=#333333>����ѡ���ӦƸ����ȡ��ӦƸ��</FONT>
		  </TD>
		</TR>
        <TR>
          <TD><FONT color=#ff0000>��</FONT><SPAN 
            class=line>�������Ͷ�ݵļ�¼ͻȻ�����ˣ����ʾ��Ƹ��˾��ɾ����Ͷ���ļ�����Ϣ��</SPAN></TD></TR></TABLE></TD></TR>
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
				document.forms[0].action="<%=request.getContextPath()%>/kangerentoujianli?user_info_id=<%=id%>";
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
							document.forms[0].action="<%=request.getContextPath()%>/kangerentoujianli?user_info_id=<%=id%>";
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