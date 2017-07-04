<%@ page  pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>

<html>
  <head>
    <title>¡Ù—‘ªÿ∏¥“≥</title>   
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  <form name="theForm" method=post>
  <INPUT TYPE="hidden" NAME="actionType" value=""/>
<%
	List list=(List)request.getAttribute("onelist");
	Map map=(Map)list.get(0);
%>
<input type="hidden" name="message_id" value="<%=(String)map.get("message_id")%>">


<table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
	<tr>
		<td class="subtitle">ªÿ∏¥¡Ù—‘</td>
	</tr>
</table>
<br>
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
	<tr align="center">
	
		<td width="100%"  class="page td_search"><%=(String)map.get("message_content")%></td>
	</tr>
</table>
<table class="table_style" cellspacing="1" cellpadding="4" width="100%" id="wish" >

	<tr>
	<td class="page td_list" colspan="12" align="center" width="100%">
		 <TEXTAREA NAME="message_reply_content" ROWS="10" COLS="90"><%=(String)map.get("message_reply_content")%></TEXTAREA>
	  </td>
	</tr>
    <tr>
      <td colspan="12" class="page td_bottom"><input  name="Submit" type="button" class="input_text" value="±£¥Ê" onclick="tijiao()">
        <input name="new_button5" type="reset" class="input_text" value="÷ÿ÷√">
          <input name="new_button54" type="button" class="input_text" onClick="javascript:history.go(-1)" value="∑µªÿ"></td>
    </tr>
</table>
</form>
</body>
</html>
 <SCRIPT LANGUAGE="JavaScript">
  <!--
	function tijiao()
	{
	document.theForm.actionType.value="updateContent";
	document.theForm.action="<%=request.getContextPath()%>/message?";
	document.theForm.submit();
	}
  //-->
  </SCRIPT>
