<%@page contentType="text/html;charset=GBK"%>
<%@page import="java.util.*"%>
<html>
<head>
<title>test</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="<%=request.getContextPath()%>/css/top.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#6699FF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<TABLE width="100%">
<TR>
	<TD><img src="<%=request.getContextPath()%>/images/htguanli/ba2_main_title.gif" width="117" height="16"></TD>
</TR>
<TR>
	<TD><img src="<%=request.getContextPath()%>/images/htguanli/ba2_thanks.gif" width="111" height="10"></TD>
	<TD>
	<%
		List yhList=(List)session.getAttribute("htyhList");
		Map yhMap=(Map)yhList.get(0);
		String loginTime=(String)session.getAttribute("htloginTime");
	%>
		<div id="tabs2">
	  <ul>	    
		<li><a href="##" title="��ӭ��<%=yhMap.get("admin_name")%>"><span>��ӭ����<%=yhMap.get("admin_name")%></span></a></li>
		<li><a href="<%=request.getContextPath()%>/jsp/ht/login.jsp" target="_parent" title="������ҳ"><span>���ص�¼ҳ</span></a></li>
		<li><a href="javascript:history.back(1)" title="����"><span>����</span></a></li>
		<li><a href="javascript:history.forward(1)" title="ǰ��"><span>ǰ��</span></a></li>
		<li><a href="javascript:location.reload()" target="main" title="ˢ��"><span>ˢ��</span></a></li>
		<li><a href="javascript:window.close()" target="_parent" title="�ر�"><span>�ر�</span></a></li>
		<li><a href="##" title="��¼ʱ��Ϊ��<%=loginTime%>"><span>��¼ʱ��Ϊ��<%=loginTime%></span></a></li>
	 </ul>
</div>
	</TD>
</TR>
</TABLE>
</body>
</html>
