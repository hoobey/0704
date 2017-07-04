<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
  <head>
<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<TITLE>企业人才库</TITLE>

</HEAD>
<BODY>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdtit height=30><B>企业看收藏的人才--企业收藏的人才记录</B></TD></TR>
  <TR>
  <%
		List comkanshourencailist=(List)request.getAttribute("comkanshourencailist");
		System.out.println(comkanshourencailist.size());
		int comkanshourencaitiao=comkanshourencailist.size();



   %>
    <TD class=tdtin height=30>共有<SPAN 
class=aler><%=comkanshourencaitiao %></SPAN>条收藏的人才简历记录</TD></TR></TABLE>
<FORM  action="" method=post >
  <INPUT TYPE="hidden" NAME="actionType">
<TABLE id=table4 cellSpacing=0 cellPadding=0 width="100%" border=0>
 <TR>
    <TD class=tdlit width="50"> <input name="selectAll" type="checkbox" title='全选/取消' onclick="checkAll()">全选</TD>
		<TD class="tdlit10">人才名</TD>
		<TD class="tdlit10">主修专业</TD>
		<TD class="tdlit10" >学历</TD>
		<TD class="tdlit10" >希望从事的行业</TD>	
		<TD class="tdlit10" >希望从事的职业</TD>
		<TD class="tdlit10" >希望从事的职位</TD>
		<TD class="tdlit10" >现在居住地</TD>
    	<TD class=tdlit10 >发面试通知的日期</TD>
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
    <TD class=tdlib1 colSpan=9><INPUT class=input2 type="button" value=彻底删除 onClick="del()">	</TD>
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
			<FONT color=#333333>即对选择的人才的信息 从人才库中删除。</FONT>
		  </TD>
		</TR>
        <TR>
          <TD><FONT color=#ff0000>·</FONT><SPAN 
            class=line>如果你收藏的人才没有显示出来，则表示人才已网站的工作人员删除。</SPAN></TD></TR></TABLE></TD></TR>
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
						if(confirm("是否确认取消应聘，取消不可恢复")==true)
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
		 alert('请选择要取消应聘项！');
		 return;	 
	 }	
}	
//-->
</SCRIPT>