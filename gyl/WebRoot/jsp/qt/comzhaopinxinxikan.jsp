<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<HTML><HEAD><TITLE>查看企业招聘信息</TITLE>

<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">

</HEAD>
<BODY>
<%
		List comzhaopinlist=(List)request.getAttribute("comzhaopinlist");
			Map zhaopinMap=(Map)comzhaopinlist.get(0);	
		%>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD height=30 bgcolor="#FFCCCC" class=tdtit><B>查看企业招聘信息--招聘信息</B>    </TD>
    <TD bgcolor="#FFCCCC">
    被浏览次数:&nbsp;<%=zhaopinMap.get("want_look_count") %>次
    </TD>
  </TR>

</TABLE>
<TABLE class=tableBorder style="WIDTH: 100%" cellSpacing=0 
borderColorDark=#ffffff cellPadding=0 width="96%" borderColorLight=#dddddd 
border=1>
 
  <TR>
    <TD height=23 colSpan=2 bgcolor="#FFFF99" class=tdtop><B>企业招聘信息</B></TD>
  </TR>

  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;职位名称:</TD>
    <TD width="1023" height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_name") %></TD>
  </TR>
  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;招聘职位所属专业类别:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_profession") %>-&gt;<%=zhaopinMap.get("want_position") %></TD>
  </TR>
  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;年龄要求:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_age") %>岁</TD>
  </TR>
  <TR>
    <TD width=271 height=38 bgcolor="#FFFFCC" class=tdileft>
    &nbsp;语言种类及使用程度:</TD>
	<TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_language") %></TD>
  </TR>
  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;有效期:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=((String)zhaopinMap.get("want_time")).substring(0,10) %></TD>
  </TR>
  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;关键词:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_keyword") %></TD>
  </TR>
  <TR>
    <TD width=271 height=38 bgcolor="#FFFFCC" class=tdileft>
    &nbsp;招聘人数:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_amount") %>&nbsp;&nbsp;&nbsp;人</TD>
  </TR>
  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;工作所在地:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("big_address_name") %>-&gt;<%=zhaopinMap.get("small_address_name") %></TD>
  </TR>
  
  <TR>
    <TD width=271 height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;性别要求:　</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_sex") %></TD>
  </TR>
  <TR>
    <TD width=271 height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;月薪范围:　</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_month_wage") %>元（人民币）</TD>
  </TR>
  <TR>
    <TD width=271 height=38 bgcolor="#FFFFCC" class=tdileft>
    &nbsp;户籍要求:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_now_address") %></TD>
  </TR>
  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;招聘所在地址:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_address") %></TD>
  </TR>
  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;学历要求:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_degree") %></TD>
  </TR>
  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;工作经验:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_experience") %></TD>
  </TR>
  <TR>
    <TD width=271 height=38 bgcolor="#FFFFCC" class=tdileft>
    &nbsp;具体要求:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright style="word-wrap:break-word; width:800px;"><%=zhaopinMap.get("want_require") %></TD>
  </TR>
  <TR>
    <TD class=tdileft width=271 height=50>　</TD>
<TD class=tdiright height=45><INPUT class=login_btn1 style="WIDTH: 180px" type=button value=后退 onClick="javascript:history.back(1)"></TD></TR></TABLE>

</BODY></HTML>