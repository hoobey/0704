<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html>
  <head>   
    <title>企业招聘管理中心</title>
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  <frameset framespacing="0" border="0" frameborder="0" rows="102,*">
	<frame name="jobtopcom" noresize="noresize" target="_parent" src="<%=request.getContextPath() %>/jsp/qt/comtop.jsp" marginwidth="0" marginheight="0" scrolling="no">
	<frameset cols="200,*">
		<frame name="menucom" target="jobmaincom" src="<%=request.getContextPath() %>/jsp/qt/commenu.jsp" marginwidth="0" marginheight="0" scrolling="auto">
		<frame name="jobmaincom" src="<%=request.getContextPath()%>/comguanli?actionType=shouyede" target="jobmaincom">
	</frameset>
	<noframes>
	<body>
	<p>此网页使用了框架，但您的浏览器不支持框架。</p>
	</body>
	</noframes>
</frameset>
</html>
