<%@ page language="java" import="com.chat.bean.*,java.util.*" pageEncoding="gbk"%>

<% 
	Users user = (Users)session.getAttribute("user");
	String message = request.getParameter("message");//接收发送的消息
	List<String> messageList = (List<String>)application.getAttribute("messageList");
	if(messageList == null || messageList.size() == 0){
		messageList = new ArrayList<String>();
	}
	if(message != null && !message.equals("")){
		messageList.add("<img src='../images/iboy.gif'/>&nbsp;<font color='blue'>" + 
						user.getUsername() + "&nbsp;<b>说：</b></font><br>"+
						"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + message);
	}
	application.setAttribute("messageList", messageList);
	
%>

<html>
<head>

<title>message</title>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="refresh" content="3">
<link href="image/css.css" rel="stylesheet" type="text/css" />

</head>

<body onload="scroll(0,9999)">
<table width="100%" border="0" align="left" cellpadding="0"
	cellspacing="0">
	<% 
		for(String mess : messageList){
	%>
	<tr align="left">
		<td height="20" class="p16"><%=mess %></td>
	</tr>
	<% 
		}
	%>
</table>
</body>
</html>
