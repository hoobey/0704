<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<HTML><HEAD><TITLE>�鿴��ҵ��Ƹ��Ϣ</TITLE>

<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">

</HEAD>
<BODY>
<%
		List comzhaopinlist=(List)request.getAttribute("comzhaopinlist");
			Map zhaopinMap=(Map)comzhaopinlist.get(0);	
		%>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD height=30 bgcolor="#FFCCCC" class=tdtit><B>�鿴��ҵ��Ƹ��Ϣ--��Ƹ��Ϣ</B>    </TD>
    <TD bgcolor="#FFCCCC">
    ���������:&nbsp;<%=zhaopinMap.get("want_look_count") %>��
    </TD>
  </TR>

</TABLE>
<TABLE class=tableBorder style="WIDTH: 100%" cellSpacing=0 
borderColorDark=#ffffff cellPadding=0 width="96%" borderColorLight=#dddddd 
border=1>
 
  <TR>
    <TD height=23 colSpan=2 bgcolor="#FFFF99" class=tdtop><B>��ҵ��Ƹ��Ϣ</B></TD>
  </TR>

  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;ְλ����:</TD>
    <TD width="1023" height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_name") %></TD>
  </TR>
  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;��Ƹְλ����רҵ���:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_profession") %>-&gt;<%=zhaopinMap.get("want_position") %></TD>
  </TR>
  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;����Ҫ��:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_age") %>��</TD>
  </TR>
  <TR>
    <TD width=271 height=38 bgcolor="#FFFFCC" class=tdileft>
    &nbsp;�������༰ʹ�ó̶�:</TD>
	<TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_language") %></TD>
  </TR>
  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;��Ч��:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=((String)zhaopinMap.get("want_time")).substring(0,10) %></TD>
  </TR>
  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;�ؼ���:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_keyword") %></TD>
  </TR>
  <TR>
    <TD width=271 height=38 bgcolor="#FFFFCC" class=tdileft>
    &nbsp;��Ƹ����:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_amount") %>&nbsp;&nbsp;&nbsp;��</TD>
  </TR>
  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;�������ڵ�:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("big_address_name") %>-&gt;<%=zhaopinMap.get("small_address_name") %></TD>
  </TR>
  
  <TR>
    <TD width=271 height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;�Ա�Ҫ��:��</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_sex") %></TD>
  </TR>
  <TR>
    <TD width=271 height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;��н��Χ:��</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_month_wage") %>Ԫ������ң�</TD>
  </TR>
  <TR>
    <TD width=271 height=38 bgcolor="#FFFFCC" class=tdileft>
    &nbsp;����Ҫ��:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_now_address") %></TD>
  </TR>
  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;��Ƹ���ڵ�ַ:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_address") %></TD>
  </TR>
  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;ѧ��Ҫ��:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_degree") %></TD>
  </TR>
  <TR>
    <TD height=38 bgcolor="#FFFFCC" class=tdileft>&nbsp;��������:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright><%=zhaopinMap.get("want_experience") %></TD>
  </TR>
  <TR>
    <TD width=271 height=38 bgcolor="#FFFFCC" class=tdileft>
    &nbsp;����Ҫ��:</TD>
    <TD height=38 bgcolor="#FFFFCC" class=tdiright style="word-wrap:break-word; width:800px;"><%=zhaopinMap.get("want_require") %></TD>
  </TR>
  <TR>
    <TD class=tdileft width=271 height=50>��</TD>
<TD class=tdiright height=45><INPUT class=login_btn1 style="WIDTH: 180px" type=button value=���� onClick="javascript:history.back(1)"></TD></TR></TABLE>

</BODY></HTML>