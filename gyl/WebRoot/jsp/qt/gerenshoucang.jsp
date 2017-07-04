<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
  <head>
<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<TITLE>应聘职位收藏夹</TITLE>

</HEAD>
<BODY>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>
 
  <TR>
    <TD class=tdtit height=30><B>应聘职位收藏夹--你已收藏的招聘职位信息</B></TD></TR>
  <TR>
  <%
		List kanshoucangdelist=(List)request.getAttribute("kanshoucangdelist");
		System.out.println(kanshoucangdelist.size());
		int kanshoucangtiao=kanshoucangdelist.size();



   %>
    <TD class=tdtin height=30>共收藏<SPAN 
class=aler><%=kanshoucangtiao %></SPAN>条招聘职位</TD></TR></TABLE>
<FORM  action="" method=post name="thisfrom">
  <INPUT TYPE="hidden" NAME="actionType">
<TABLE id=table4 cellSpacing=0 cellPadding=0 width="100%" border=0>
 <TR>
    <TD class=tdlit width="50"> <input name="selectAll" type="checkbox" title='全选/取消' onclick="checkAll()">全选</TD>
    <TD class=tdlit10>招聘职位</TD>
    <TD class=tdlit10>招聘公司</TD>
    <TD class=tdlit1 width=120>投递日期</TD>
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
    <TD class=tdlib1 colSpan=5><INPUT class=input2 type="button" value=彻底删除 onClick="del()">	</TD>
</TABLE>
</FORM>
<TABLE id=table3 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdbr></TD></TR>
  <TR>
    <TD class=tdtop><B>说明</B></TD></TR>
  <TR>
    <TD class=tdmi>
      <TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>
   
        <TR>
          <TD><FONT color=#ff0000>·</FONT>
		  <FONT color=#000000>“<STRONG>彻底删除</STRONG>”</FONT>
			<FONT color=#333333>即对选择的招聘职位信息 从收藏夹中删除。</FONT>
		  </TD>
		</TR>
        <TR>
          <TD><FONT color=#ff0000>·</FONT><SPAN 
            class=line>如果你收藏的招聘职位没有显示出来，则表示招聘公司已删除该招聘信息。</SPAN></TD></TR></TABLE></TD></TR>
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
			if(confirm("是否确认取消应聘，取消不可恢复")==true)
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
						if(confirm("是否确认取消应聘，取消不可恢复")==true)
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
		 alert('请选择要取消应聘项！');
		 return;	 
	 }	
}	
//-->
</SCRIPT>