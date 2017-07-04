<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>
<html>
<head>

<title>修改高层权限</title>
</head>
<body>
<%
		List list=(List)request.getAttribute("limitlist");
		Map map=(Map)list.get(0);
		String id=(String)map.get("limit_id");
 %>
<form name="theForm" method=post >
<INPUT TYPE="hidden" NAME="actionType" >
<INPUT TYPE="hidden" NAME="limit_id" value="<%=id %>" >
        <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
      <tr>
        <td class="subtitle navi_bar" align="center">修改高层权限</td>
      </tr>
    </table> 
<br>
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
	<tr align="center">     
			<td width="100%"  class="page td_search">高层权限信息修改</td> 
    </tr>
</table>

	<table class="table_style" cellspacing="1" cellpadding="4" width="100%" id="wish">
	<tr>

      <td class="page td_title" ></td>
      <td class="page td_title" width="100">高层权限名</td>
      <td class="page td_list" width="100">
             <input name="limit_name" type="text" class="input_area" value="<%=map.get("limit_name") %>" >
	  </td>
      <td class="page td_title" width="150"><div id=div1></td>
      <td class="page td_title"></td>
    </tr>
    <tr>
      <td colspan="12" class="page td_bottom"><input  name="Submit" type="button" class="input_text" value="保存"  ONCLICK="update()">
        <input name="new_button5" type="reset" class="input_text" value="重置">
          <input name="new_button54" type="button" class="input_text" onClick="javascript:history.go(-1)" value="返回"></td>
    </tr>
  </table>
</form>
</body>
</html>
<SCRIPT LANGUAGE="JavaScript">
<!--
	function update()
	{	
	 var limit_name=document.getElementById("limit_name");
	 	 if(limit_name.value=="")
	 {
	 div1.innerHTML="<span style='color:red'>高权限名不能为空<span>";
	 return;
	 }
	 else
	 {
	 div1.innerHTML="";
	 }
	 	document.forms[0].actionType.value="update"		
		document.forms[0].action="<%=request.getContextPath()%>/htlimit?";
		document.forms[0].submit();
	 
	}
//-->
</SCRIPT>