<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>密码成功找回页</title>
   
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="text-align:center;margin-top:100px;">
    <%
    List list=(List)request.getAttribute("zhaomimalist");
    Map map=(Map)list.get(0);
     %>
     <div style="border:1px #99CCCC solid; width:900px;">
<div style="background:#C6C2DE;height:30px;line-height:30px;width:900px; FONT-SIZE:18PX;" align="left" ><b>找回密码</b>&nbsp;</div>
<div align="center" style="width:900px;margin-top:30px;">
您的名字是：<%=map.get("user_info_name") %><br><br>
您的密码是：<%=map.get("user_info_password") %><br><br><br><br><br><br>
<a href="http://localhost:8080/lkx" style="TEXT-DECORATION:underline;font-size:15px;color:#FF3300;">回首页</a><br><br>
<font size="3" style="color:#990033;"><font style="color:red;">说明：</font>你保管好您的密码，你最好先修改你的密码后在进行其它操作。</font>

</div>
</div>

  </body>
</html>
