<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>��ҵ��Աע�ᡪ�������ϴ�Ӫҵִ��</title>
    <%@include file="tou.jsp"%>	
    <style type="text/css">
	<!--
	.ttdd {width:300px;font-size:12px;}
	.ddtt {width:100px;}
	.dt {width:100px;}
	.STYLE5 {color: #3399FF;}
	.STYLE7 {font-size: 15px}
	-->
	</style>
	<style type="text/css">
<!--
.STYLE1 {color: #000000}
.STYLE2 {color: #bd0a01}
.STYLE4 {color: #3399FF; font-size: 15px; }
-->
</style>
  </head>
  <body>
  <%
  List list =(List)request.getAttribute("listid");
  Map idmap=(Map)list.get(0);
   %>
  <form   method="post" ENCTYPE="multipart/form-data">
 <INPUT TYPE="hidden" NAME="id" value="<%=idmap.get("company_id") %>">
 <%System.out.println(idmap.get("company_id")); %>
  <div style="height:300px;width: 800px; float: center;" >
  <table width="800px" style="float: center; margin-left: 380px;margin-top: 35px;">
   <TR class="ttdd" align="center">
	<span style="font-size: 15px; color: red; ">�����ϴ���˾Ӫҵִ���Ա���վ�Ĺ�����Ա�������:</span></TR><BR><BR>
	<TR class="ttdd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT  type=file name=img style="	border: 1px solid #A7A6AA; height: 17px;	font: bold 15px Arial;	color: #000000;	padding: 0 2px 0 2px;" ></TR><BR>
	<TR >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT type=button style="	border: 1px solid #A7A6AA; height: 19px;	font: bold 15px ;	color: #000000; margin-top:5px;	padding: 0 2px 0 2px;" value=�ϴ�Ӫҵִ�� name=zhizhao onclick="chuan()"></TR><BR><BR><BR>  </table>
	<table  width="800px" style="margin-left: 250px; ">
	<tr> <span style="font-size: 16px; color: #FF0066 ">˵���������ϴ�����Ӫҵִ�գ���վ���ͨ�������Ϳ��Խ����Լ�����ҵ�������ģ�������Ƹ��<BR>
	�ϴ�Ӫҵִ�պ���������ע����������ǽ����������ҵ����ʵ�ԣ�������<span style="font-size: 16px; color: #0000FF ">һ�ܺ��½</span>����վ��<BR>
	�������һ�ܺ��½��վû�гɹ������������ϵ����ϵ�绰Ϊ��0451-88128159��</span><BR>
	</tr>
   </table>
 </div> 
   </form>
<%@include file="wei.jsp"%>	
  </body>
</html>
<SCRIPT LANGUAGE="JavaScript">
<!--
	function chuan()
	{
	  var c=document.forms[0];
		  if (c.img.value=="" )
		  {
		    alert("��ѡ��Ҫ�ϴ���Ӫҵִ�յ���Ƭ��  ");
		    c.img.focus();
		    return;
		  }
	  c.zhizhao.value="�ϴ���...";
	document.forms[0].action="<%=request.getContextPath()%>/comzhuce?actionType=chuanzhizhao";
	document.forms[0].submit();
	}
//-->
</SCRIPT>