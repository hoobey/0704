<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>
<html>
<head>

<title>修改文章类别</title>
</head>
<body>
<form name="theForm" method=post  >
<INPUT TYPE="hidden" NAME="actionType" >
        <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
      <tr>
        <td class="subtitle navi_bar" align="center">修改文章类别</td>
      </tr>
    </table>
<br>
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
	<tr align="center">     
			<td width="100%"  class="page td_search">文章类别信息修改</td> 
    </tr>
</table>
<%
	List list=(List)request.getAttribute("onelist");
	Map map=(Map)list.get(0);
%>
<INPUT TYPE="hidden" NAME="article_sort_id" value="<%=(String)map.get("article_sort_id")%>">
	<table class="table_style" cellspacing="1" cellpadding="4" width="100%" id="wish">
		<tr>
	  <td class="page td_title"></td>
      <td class="page td_title"></td>
      <td class="page td_title" width="100">文章类别名称</td>
      <td class="page td_list" width="30">
             <input name="article_sort_name" type="text"class="input_area" value="<%=(String)map.get("article_sort_name")%>" >
	  </td>
      <td class="page td_title"></td>
      <td class="page td_title"></td>
    </tr>
    <tr>
      <td colspan="12" class="page td_bottom"><input name="Submit" type="button" class="input_text" value="保存" ONCLICK="tijiao()">
        <input name="new_button5" type="reset" class="input_text" value="重置">
          <input name="new_button54" type="button" class="input_text" onClick="javascript:history.go(-1)" value="返回"></td>
    </tr>
  </table>
</form>
</body>
</html>
<SCRIPT LANGUAGE="JavaScript">
<!--
	function tijiao()
	{
		document.forms[0].actionType.value="update"		
		document.forms[0].action="<%=request.getContextPath()%>/articleclass";
		document.forms[0].submit();
	
	}
//-->
</SCRIPT>