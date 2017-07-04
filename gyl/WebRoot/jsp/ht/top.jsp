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
		<li><a href="##" title="欢迎您<%=yhMap.get("admin_name")%>"><span>欢迎您：<%=yhMap.get("admin_name")%></span></a></li>
		<li><a href="<%=request.getContextPath()%>/jsp/ht/login.jsp" target="_parent" title="返回首页"><span>返回登录页</span></a></li>
		<li><a href="javascript:history.back(1)" title="后退"><span>后退</span></a></li>
		<li><a href="javascript:history.forward(1)" title="前进"><span>前进</span></a></li>
		<li><a href="javascript:location.reload()" target="main" title="刷新"><span>刷新</span></a></li>
		<li><a href="javascript:window.close()" target="_parent" title="关闭"><span>关闭</span></a></li>
		<li><a href="##" title="登录时间为：<%=loginTime%>"><span>登录时间为：<%=loginTime%></span></a></li>
	 </ul>
</div>
	</TD>
</TR>
</TABLE>
</body>
</html>
