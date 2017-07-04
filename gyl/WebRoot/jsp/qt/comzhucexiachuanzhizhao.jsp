<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>企业会员注册————上传营业执照</title>
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
	<span style="font-size: 15px; color: red; ">请您上传公司营业执照以便网站的管理人员进行审核:</span></TR><BR><BR>
	<TR class="ttdd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT  type=file name=img style="	border: 1px solid #A7A6AA; height: 17px;	font: bold 15px Arial;	color: #000000;	padding: 0 2px 0 2px;" ></TR><BR>
	<TR >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT type=button style="	border: 1px solid #A7A6AA; height: 19px;	font: bold 15px ;	color: #000000; margin-top:5px;	padding: 0 2px 0 2px;" value=上传营业执照 name=zhizhao onclick="chuan()"></TR><BR><BR><BR>  </table>
	<table  width="800px" style="margin-left: 250px; ">
	<tr> <span style="font-size: 16px; color: #FF0066 ">说明：请你上传您的营业执照，网站审核通过后您就可以进入自己的企业管理中心，进行招聘。<BR>
	上传营业执照后您将完能注册操作，我们将尽快审核企业的真实性，请您在<span style="font-size: 16px; color: #0000FF ">一周后登陆</span>本网站。<BR>
	如果您在一周后登陆网站没有成功，请和我们联系，联系电话为：0451-88128159。</span><BR>
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
		    alert("请选择要上传的营业执照的照片！  ");
		    c.img.focus();
		    return;
		  }
	  c.zhizhao.value="上传中...";
	document.forms[0].action="<%=request.getContextPath()%>/comzhuce?actionType=chuanzhizhao";
	document.forms[0].submit();
	}
//-->
</SCRIPT>