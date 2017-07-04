<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>找回密码页</title>

<style type="text/css">
<!--
.q {
	text-align: center;
}
.v {
	text-align: center;
}
.c {
	color: #9F0;
}
-->
</style>
</head>
<body>

<span class="v">
<%@include file="tou.jsp"%>	
</span>
<div style="border:1px #99CCCC solid; width:900px;">
  <div style="background:#C6C2DE; height:30px; line-height:30px; width:900px; FONT-SIZE:18PX; font-family: 'Lucida Console', Monaco, monospace;" align="left" > <span class="v"><b> 找回密码</b>&nbsp;</span></div>
<div align="center" style="width:900px;">

<form method="POST" action=""  >
<input type="hidden" name="actionType" value="" >
<table id="table13" cellpadding="0" cellspacing="0" border="0" width="700" style="width:900px;" align="center">
<br>
<tr height="50" ><FONT  COLOR="red" size="4" >请输入下面的信息，如果您是个人求职会员，并且您输入的信息正确，您就可以找回密码        (如果您是企业会员，请单击链接向网站管理员发站内信)</FONT></tr>

	<tr align="center">
		<td width="132"   height="38" bgcolor="#FFFFCC">用户名：</td>
		<td width="232" bgcolor="#FFFFCC">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT type=text size=19 name="user_info_name" style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;width:150px;"> </td>
		<td bgcolor="#FFFFCC"></td>
	</tr>
	<tr align="center">
		<td width="132"  height="38" bgcolor="#FFFFCC">提示问题：</td>
		<td width="232" bgcolor="#FFFFCC">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<SELECT NAME="user_problem" id="problem" >
	<OPTION VALUE="0" SELECTED>选择提示信息</option>
	<OPTION VALUE="你母亲的名字">你母亲的名字</option>
	<OPTION VALUE="你父亲的名字">你父亲的名字</option>
	<OPTION VALUE="你的名字">你的名字</option>
	<OPTION VALUE="你喜欢的人的名字">你喜欢的人的名字</option>
	<OPTION VALUE="你老师的名字">你老师的名字</option>
  </SELECT></td>
		<td bgcolor="#FFFFCC"><span class="c" style="color:red;font-size:16px">注意</span><span class="c" style="color:red;font-size:16px"></span><span style="color:red;font-size:16px">：</span>企业向网站发站内信找密码：<a href="<%=request.getContextPath() %>/jsp/qt/zhaomimacom.jsp" ><FONT  COLOR="red">发站站内信&gt;&gt;</FONT></a></td>
	</tr>
	<tr align="center">
	<td width="132"   height="38" bgcolor="#FFFFCC">提示问题答案:</td>
	<td width="300" bgcolor="#FFFFCC">
	<INPUT name="user_answer" style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;width:150px;">
	</td>
	<td bgcolor="#FFFFCC"></td>
	</tr>
	<tr align="center">
		<td width="132" height="50" bgcolor="#FFFFCC"></td>
		<td width="232" bgcolor="#FFFFCC">&nbsp;&nbsp;&nbsp;<input type="button"  class="input_text" style="width:85; height:29" value="个人找回密码" onclick="tijiao()"></td>
		<td bgcolor="#FFFFCC"></td>
	</tr>

	</table>
  </form>


</div>
</div>
<%@include file="wei.jsp"%>	
<SCRIPT type=text/javascript>


function tijiao()
{

		document.forms[0].actionType.value="zhaohui"		
		document.forms[0].action="<%=request.getContextPath()%>/zhaomima?";
		document.forms[0].submit();
}

</SCRIPT>
</body>
</html>
