<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�һ�����ҳ</title>

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
  <div style="background:#C6C2DE; height:30px; line-height:30px; width:900px; FONT-SIZE:18PX; font-family: 'Lucida Console', Monaco, monospace;" align="left" > <span class="v"><b> �һ�����</b>&nbsp;</span></div>
<div align="center" style="width:900px;">

<form method="POST" action=""  >
<input type="hidden" name="actionType" value="" >
<table id="table13" cellpadding="0" cellspacing="0" border="0" width="700" style="width:900px;" align="center">
<br>
<tr height="50" ><FONT  COLOR="red" size="4" >�������������Ϣ��������Ǹ�����ְ��Ա���������������Ϣ��ȷ�����Ϳ����һ�����        (���������ҵ��Ա���뵥����������վ����Ա��վ����)</FONT></tr>

	<tr align="center">
		<td width="132"   height="38" bgcolor="#FFFFCC">�û�����</td>
		<td width="232" bgcolor="#FFFFCC">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT type=text size=19 name="user_info_name" style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;width:150px;"> </td>
		<td bgcolor="#FFFFCC"></td>
	</tr>
	<tr align="center">
		<td width="132"  height="38" bgcolor="#FFFFCC">��ʾ���⣺</td>
		<td width="232" bgcolor="#FFFFCC">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<SELECT NAME="user_problem" id="problem" >
	<OPTION VALUE="0" SELECTED>ѡ����ʾ��Ϣ</option>
	<OPTION VALUE="��ĸ�׵�����">��ĸ�׵�����</option>
	<OPTION VALUE="�㸸�׵�����">�㸸�׵�����</option>
	<OPTION VALUE="�������">�������</option>
	<OPTION VALUE="��ϲ�����˵�����">��ϲ�����˵�����</option>
	<OPTION VALUE="����ʦ������">����ʦ������</option>
  </SELECT></td>
		<td bgcolor="#FFFFCC"><span class="c" style="color:red;font-size:16px">ע��</span><span class="c" style="color:red;font-size:16px"></span><span style="color:red;font-size:16px">��</span>��ҵ����վ��վ���������룺<a href="<%=request.getContextPath() %>/jsp/qt/zhaomimacom.jsp" ><FONT  COLOR="red">��վվ����&gt;&gt;</FONT></a></td>
	</tr>
	<tr align="center">
	<td width="132"   height="38" bgcolor="#FFFFCC">��ʾ�����:</td>
	<td width="300" bgcolor="#FFFFCC">
	<INPUT name="user_answer" style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;width:150px;">
	</td>
	<td bgcolor="#FFFFCC"></td>
	</tr>
	<tr align="center">
		<td width="132" height="50" bgcolor="#FFFFCC"></td>
		<td width="232" bgcolor="#FFFFCC">&nbsp;&nbsp;&nbsp;<input type="button"  class="input_text" style="width:85; height:29" value="�����һ�����" onclick="tijiao()"></td>
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
