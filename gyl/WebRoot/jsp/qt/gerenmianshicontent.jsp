<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<HTML>
<HEAD>
<TITLE>������֪ͨ����</TITLE>
<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<SCRIPT src="<%=request.getContextPath() %>/js/chkUtil.js" type=text/javascript></SCRIPT>
<SCRIPT src="<%=request.getContextPath() %>/js/common.js" type=text/javascript></SCRIPT>
</HEAD>
  <body>
  <%
  List tongzhicontentlist =(List)request.getAttribute("tongzhicontentlist");
  Map tongzhicontentmap=(Map)tongzhicontentlist.get(0);
  
   %>
   <TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdtop bgColor=#e2e2e2 style="text-align:center;"><B>�鿴����֪ͨ</B></TD></TR>
  <TR>
    <TD height=30>
	      <TABLE id=table3 height=223 cellSpacing=0 borderColorDark=#ffffff  cellPadding=0 width="100%"  border=1>
      
        <TR>
          <TD class=tdileft width=158 bgColor=#f6f6f6 >���ʼ���: </TD>
          <TD class=tdiright style="text-align:center;" width=228><%=tongzhicontentmap.get("company_name") %></TD>
          <TD class=tdileft width=100 bgColor=#f6f6f6 >����ʱ��: </TD>
          <TD class=tdiright><%=((String)tongzhicontentmap.get("s_time")).substring(0,10) %></TD>		  
		  
		  
		  </TR>
		          <TR>
          <TD class=tdileft width=158 bgColor=#f6f6f6 >����֪ͨ��Ŀ: </TD>
          <TD class=tdiright colspan=3 style="text-align:center;"><%=tongzhicontentmap.get("interview_title") %></TD>
			</TR>
		          <TR>
          <TD class=tdileft width=158 bgColor=#f6f6f6 >����֪ͨ����: </TD>
          <TD class=tdiright colspan=3 style="word-wrap:break-word; width:1000px;">&nbsp;&nbsp;<%=tongzhicontentmap.get("interview_content") %></TD>
		  
		  </TR>
        <TR>
          <TD class=tdileft width=158 bgColor=#f6f6f6>��</TD>
          <TD class=tdiright colspan=3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT class=login_btn1 style="WIDTH: 120px" type=button value=����  onclick="javascript:history.back(1)">
          </TD>
          </TR>
			 </TABLE>
          </TD>
          </TR>
  <TR>
    <TD height=30>
    </TD>
    </TR>
    
    </TABLE>
  </body>
</html>
