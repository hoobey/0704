<%@ page pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>�鿴�ظ�����</title>
     
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
   <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
	<tr>
		<td class="subtitle navi_bar">�鿴�ظ�����</td>
	</tr>
	</table>
<br>
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
	<tr align="center">
<%
	List list=(List)request.getAttribute("onelist");
	Map map=(Map)list.get(0);
%>
	<td  class="page td_search" width="10%">�û���������:</td>
	<td   class="page td_search"><%=(String)map.get("message_content")%></td>
	</tr>
</table>
<table class="table_style" border="0" cellspacing="1" cellpadding="4" width="100%" id="wish">

	<tr>
	<td class="page td_list" align="left" width="10%" >�ظ�����:</td>	
	 <td class="page td_list" >
	<%=(String)map.get("message_reply_content")%></td>				
	</tr>
   <tr>
   <td class="page td_list" width="100%" align="center" colspan="2"><a href="message?actionType=updateContentPage&message_id=<%=(String)map.get("message_id")%>"><font color="#FF9933" size="3px">�޸Ļظ�����</font></a> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href="javascript:history.back(1)"><font size="3px" color="#FF9933">����</font></a></td>
    </tr>
</table>
  </body>
</html>
