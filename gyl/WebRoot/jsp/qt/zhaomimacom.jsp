<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��ҵ�һ�����ҳ</title>

</head>
<body>
<%@include file="tou.jsp"%>	
<div style="border:1px #99CCCC solid; width:900px;">
<div style="background:#C6C2DE;height:30px;line-height:30px;width:900px; FONT-SIZE:18PX;" align="left" ><b>����վ����Ա���������վ����</b>&nbsp;</div>
<div align="center" style="width:900px;">

<form method="POST" action=""  >
<input type="hidden" name="actionType" value="" >
<table id="table13" cellpadding="0" cellspacing="0" border="0" width="700" style="width:900px;" align="center">
<br>
<tr height="50" ><span ><FONT  COLOR="red" size="4" >Ϊ�˱�֤����ʹ�ð�ȫ���������������Ϣ������վ������Ա�������������˵����Ϣ������Ա�������Ϣ����ʵ�����������ΪĬ�����롣ע�⣺����¼���뾡���޸����롣</FONT></span></tr>

	<tr align="center">
		<td width="180"   height="38">�û�����</td>
		<td width="232"><INPUT type=text size=19 name="com_login_name" style="cursor:hand;background:#ffffff;border:1px #000000 dashed;width:150px;"> </td>
		<td ><div id="div1"></div></td>
	</tr>
	<tr align="center">
		<td width="180"  height="38">���������˵����Ϣ��</td>
		<td width="232"><TEXTAREA NAME="say_content" ROWS="6" COLS="35"></TEXTAREA>
	</td>
  <td ><div id="div2"></div></td>
	</tr>
	<tr align="center">
		<td width="132" height="50"></td>
		<td width="232"><img src="<%=request.getContextPath() %>/images/fa.jpg"  onclick="tijiao()"></td>
		<td></td>
	</tr>

	</table>
  </form>


</div>
</div>
<%@include file="wei.jsp"%>	
<SCRIPT type=text/javascript>


function tijiao()
{
		var com_login_name=document.getElementById("com_login_name");
		var say_content=document.getElementById("say_content");
		if(com_login_name.value=="")
		{
			div1.innerHTML="<span style='color:red'>��¼���ֲ���Ϊ��<span>";
			return;
		}
		else
		{
		div1.innerHTML="";
		}
		if(say_content.value=="")
		{
			div2.innerHTML="<span style='color:red'>���������˵����Ϣ����Ϊ��<span>";
			return;
		}
		else
		{
		div2.innerHTML="";
		}
		document.forms[0].actionType.value="zhaocominfo"		
		document.forms[0].action="<%=request.getContextPath()%>/zhaomimacom?";
		document.forms[0].submit();
}

</SCRIPT>
</body>
</html>
