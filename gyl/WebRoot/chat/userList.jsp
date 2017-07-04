<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<title>message</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="refresh" content="3">
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body onload="scroll(0,9999)">
<table width="100%" border="0" align="left" cellpadding="0"
	cellspacing="0" bordercolor="#EBEBEB">
	<c:forEach items="${userList}" var="user">
	<tr align="left">
		<td height="20"class="p16"><img src="../images/iboy.gif" />&nbsp;${user.username}</td>
	</tr>	
	</c:forEach>
</table>
</body>
</html>
