<%@page contentType="text/html;charset=GBK"%>
<html>
<head>
<title>招聘网站后台</title>
</head>
<frameset rows="83,*" frameborder="NO" border="0" framespacing="0" cols="*"> 
  <frame name="top" scrolling="NO" noresize src="<%=request.getContextPath()%>/jsp/ht/top.jsp" >
  <frameset cols="180,*" frameborder="NO" border="0" framespacing="0" rows="*"> 
    <frame  name="menu" scrolling="NO" noresize src="<%=request.getContextPath()%>/jsp/ht/menu.jsp">
    <frame src="<%=request.getContextPath()%>/jsp/ht/right.jsp" name="main">
  </frameset>

</frameset>
<noframes> 
<body bgcolor="#FFFFFF" text="#000000">此网页使用了框架，但您的浏览器不支持框架。
</body>
</noframes> 
</html>
