<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>
<html>
<head>

<title>添加管理员</title>
</head>
<body>
<form name="theForm" method="get" >
<INPUT TYPE="hidden" NAME="actionType" value="add">
        <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
      <tr>
        <td class="subtitle navi_bar" align="center">添加管理员</td>
      </tr>
    </table> 
<br>
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
	<tr align="center">     
			<td width="100%"  class="page td_search">添加管理员信息</td> 
    </tr>
</table>

	<table class="table_style" cellspacing="1" cellpadding="4" width="100%" id="wish">
	<tr>

      <td class="page td_title" ></td>
      <td class="page td_title" width="100">管理员名</td>
      <td class="page td_list" width="100">
             <input name="admin_name" type="text" class="input_area" value="" >
	  </td>
      <td class="page td_title" width="150"><div id=div1></div></td>
      <td class="page td_title"></td>

    </tr>
    	<tr>

      <td class="page td_title" ></td>
      <td class="page td_title" width="100">登录名</td>
      <td class="page td_list" width="100">
             <input name="admin_login_name" type="text" class="input_area" value="" >
	  </td>
      <td class="page td_title" width="150"><div id=div2></div></td>
      <td class="page td_title"></td>

    </tr>
    	<tr>

      <td class="page td_title" ></td>
      <td class="page td_title" width="100">登录密码</td>
      <td class="page td_list" width="100">
             <input name="admin_login_pass" type="password" class="input_area" value="" >
	  </td>
      <td class="page td_title" width="150"><div id=div3></div></td>
      <td class="page td_title"></td>

    </tr>
       <tr>

      <td class="page td_title" ></td>
      <td class="page td_title" width="100">确认密码</td>
      <td class="page td_list" width="100">
             <input name="radmin_login_pass" type="password" class="input_area" value="" >
	  </td>
      <td class="page td_title" width="150"><div id=div4></div></td>
      <td class="page td_title"></td>

    </tr>
    <tr>
      <td colspan="12" class="page td_bottom"><input  name="Submit" type="button" class="input_text" value="保存" ONCLICK="baocun()">
        <input name="new_button5" type="reset" class="input_text" value="重置">
          <input name="new_button54" type="button" class="input_text" onClick="javascript:history.go(-1)" value="返回"></td>
    </tr>
  </table>
</form>
</body>
</html>
<SCRIPT LANGUAGE="JavaScript">
<!--
	function  baocun()
	{
	 var admin_name=document.getElementById("admin_name");
	 var admin_login_name=document.getElementById("admin_login_name");
	 var admin_login_pass=document.getElementById("admin_login_pass");
	 var radmin_login_pass=document.getElementById("radmin_login_pass");
	 if(admin_name.value=="")
	 {
	 div1.innerHTML="<span style='color:red'>用户名不能为空<span>";
	 return;
	 }
	 else
	 {
	 div1.innerHTML="";
	 }
	 	 if(admin_login_name.value=="")
	 {
	 div2.innerHTML="<span style='color:red'>登录名不能为空<span>";
	 return;
	 }
	 else
	 {
	 div2.innerHTML="";
	 }
	 	 if(admin_login_pass.value=="")
	 {
	 div3.innerHTML="<span style='color:red'>登录密码不能为空<span>";
	 return;
	 }
	 else
	 {
	 div3.innerHTML="";
	 }	 
	 if(radmin_login_pass.value!=admin_login_pass.value)
	 {
	 div4.innerHTML="<span style='color:red'>确认密码不正确<span>";
	 return;
	 }
	 else
	 {
	 div4.innerHTML="";
	 }
	 
	 	document.forms[0].actionType.value="add" ;
		document.forms[0].action="<%=request.getContextPath()%>/htadmin";
		document.forms[0].submit();
	 
	}
//-->
</SCRIPT>