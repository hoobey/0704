<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>
<html>
<head>
<title>显示文章内容</title>
</head>
<body>

<table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
	<tr>
		<td class="subtitle navi_bar">查看文章内容</td>
	</tr>
</table>
<br>
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
	<tr align="center">
		<td width="100%"  class="page td_search">
    <%
	List list=(List)request.getAttribute("onelist");
	Map map=(Map)list.get(0);
%>
<%=map.get("article_name") %></tr>
</table>
<table class="table_style" cellspacing="1" cellpadding="4" width="100%" id="wish">

	<tr>
	 <td class="page td_list" colspan="6"><%=map.get("content") %>
	 						
	  </td>
	</tr>
	<tr>
	  <td class="page td_list" width="100%" align="center" colspan="2"><a href="javascript:history.back(1)"><font size="3px" color="#FF9933">返回</font></a></td>
    </tr>
</table>
	 
  </body>
</html>
