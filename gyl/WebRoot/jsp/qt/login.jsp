<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��¼ҳ</title>

</head>
<body>
<%@include file="tou.jsp"%>	
<div style="border:1px #99CCCC solid; width:900px;">
<div style="background:#C6C2DE;height:30px;line-height:30px;width:900px; FONT-SIZE:18PX;" align="left" ><b>��Ա��¼</b>&nbsp;</div>
<div align="center" style="width:900px;">

<form method="POST" action=""  >
<input type="hidden" name="actionType" value="" >
<table id="table13" cellpadding="0" cellspacing="0" border="0" width="700" style="width:900px;" align="center">
<br>
<tr height="50" >
<td  colspan="3">
<span ><FONT  COLOR="red" size="4"  >��Ŀǰ���еĲ�������Ҫ����¼������ܼ��������������ĵ�¼�û��������뿪ʼ��¼</FONT></span>
</td>
</tr>
	<tr align="center">
		<td width="132"   height="38">��¼�û�����</td>
		<td width="232">
		<INPUT type=text size=19 name="loginName" style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;"> </td>
		<td align="left">
		��������ҵ��Ա��<a href="<%=request.getContextPath() %>/comzhuce?actionType=chasheng"><font color="#FF6600">����ע����ҵ��Ա&gt;&gt;</font></a></td>
	</tr>
	<tr align="center">
		<td width="132"  height="38">���룺</td>
		<td width="232"><INPUT type=password size=19 name="loginPassword" style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;"></td>
		<td align="left">
		�����ǻ�Ա��<a href="<%=request.getContextPath() %>/jsp/qt/gerenzhuce.jsp"><font color="#FF6600">����ע����ְ��Ա&gt;&gt;</font></a></td>
	</tr>
	<tr align="center">
	<td width="132"   height="38">��֤��:</td>
	<td width="300">
	<INPUT maxLength=4 name="yzm" style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;">
	<IMG src="<%=request.getContextPath() %>/qtlogin?actionType=yzm" >	</td>
	<td align="left"><a href="<%=request.getContextPath() %>/jsp/qt/zhaomima.jsp"><font color="#FF6600">��������</font></a></td>
	</tr>
		<tr align="center"> 
	  <td  width="132">�û����ͣ�</td>
	  <td>
	    
	      <input type="radio" name="bj" value="0" CHECKED>
	      ��ְ��Ա
	    
	    <input type="radio" name="bj" value="1">
	    ��Ƹ��Ա
	
	  </td>
	  <td>&nbsp;</td>
	  </tr>
	<tr align="center">
		<td width="132" height="50"></td>
		<td width="232"><img src="<%=request.getContextPath() %>/images/deng.jpg"   onclick="tijiao()"></td>
		
	</tr>

	</table>
  </form>


</div>
</div>
<%@include file="wei.jsp"%>	
<SCRIPT type=text/javascript>


function tijiao()
{

		document.forms[0].actionType.value="qtdl"		
		document.forms[0].action="<%=request.getContextPath()%>/qtlogin?";
		document.forms[0].submit();
}

</SCRIPT>
</body>
</html>