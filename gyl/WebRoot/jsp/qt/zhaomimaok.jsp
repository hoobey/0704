<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>����ɹ��һ�ҳ</title>
   
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
<div style="background:#C6C2DE;height:30px;line-height:30px;width:900px; FONT-SIZE:18PX;" align="left" ><b>�һ�����</b>&nbsp;</div>
<div align="center" style="width:900px;margin-top:30px;">
���������ǣ�<%=map.get("user_info_name") %><br><br>
���������ǣ�<%=map.get("user_info_password") %><br><br><br><br><br><br>
<a href="http://localhost:8080/lkx" style="TEXT-DECORATION:underline;font-size:15px;color:#FF3300;">����ҳ</a><br><br>
<font size="3" style="color:#990033;"><font style="color:red;">˵����</font>�㱣�ܺ��������룬��������޸����������ڽ�������������</font>

</div>
</div>

  </body>
</html>
