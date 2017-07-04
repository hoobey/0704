<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>
<html>
<head>

<title>修改低层权限</title>
</head>
<body>
<form name="theForm" method=post  >
<INPUT TYPE="hidden" NAME="actionType" >
<%
	String father_id=(String)request.getParameter("father_id");
	System.out.println("==father_id=s="+father_id);
 %>
<INPUT TYPE="hidden" NAME="father_id" value="<%=father_id%>" >
<%
List list1=(List)request.getAttribute("limitlist");
System.out.println("==eeewew="+list1.size());
Map map=(Map)list1.get(0);
 %>
 <INPUT TYPE="hidden" NAME="limit_id" value="<%=map.get("limit_id")%>" >
        <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
      <tr>
        <td class="subtitle navi_bar" align="center">修改低层权限</td>
      </tr>
    </table> 
<br>
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
	<tr align="center">     
			<td width="100%"  class="page td_search">低层权限信息修改</td> 
    </tr>
</table>

	<table class="table_style" cellspacing="1" cellpadding="4" width="100%" id="wish">
	<tr>

      <td class="page td_title" ></td>
      <td class="page td_title" width="100">低层权限名</td>
      <td class="page td_list" width="100">
             <input name="limit_name" type="text" class="input_area" value="<%=map.get("limit_name") %>" >
	  </td>
      <td class="page td_title" width="150"><div id=div1></td>
      <td class="page td_title"></td>
    </tr>
    	<tr>

      <td class="page td_title" ></td>
      <td class="page td_title" width="100">请求的url</td>
      <td class="page td_list" width="100">
             <input name="url" type="text" class="input_area" value="<%=map.get("url") %>" >
	  </td>
      <td class="page td_title" width="150"><div id=div2></td>
      <td class="page td_title"></td>
    </tr>
    <tr>
      <td colspan="12" class="page td_bottom"><input  name="Submit" type="button" class="input_text" value="保存" ONCLICK="add()">
        <input name="new_button5" type="reset" class="input_text" value="重置">
          <input name="new_button54" type="button" class="input_text" onClick="javascript:history.go(-1)" value="返回"></td>
    </tr>
  </table>
</form>
</body>
</html>
<SCRIPT LANGUAGE="JavaScript">
<!--
	function add()
	{	
	 var limit_name=document.getElementById("limit_name");
	 var url=document.getElementById("url");
	 
	 	 if(limit_name.value=="")
	 {
	 div1.innerHTML="<span style='color:red'>低权限名不能为空<span>";
	 return;
	 }
	 else
	 {
	 div1.innerHTML="";
	 }
	 	 if(url.value=="")
	 {
	 div2.innerHTML="<span style='color:red'>请求的url不能为空<span>";
	 return;
	 }
	 else
	 {
	 div2.innerHTML="";
	 }
		
		document.forms[0].actionType.value="update1"		
		document.forms[0].action="<%=request.getContextPath()%>/htlimit?";
		document.forms[0].submit();
	}
//-->
</SCRIPT>
