<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>
<html>
<head>

<title>��ӽ�ɫ</title>
</head>
<body>
<form name="theForm" method=post action="<%=request.getContextPath()%>/htrole?" >
<INPUT TYPE="hidden" NAME="actionType" value="add">
        <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
      <tr>
        <td class="subtitle navi_bar" align="center">��ӽ�ɫ</td>
      </tr>
    </table> 
<br>
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
	<tr align="center">     
			<td width="100%"  class="page td_search">��ɫ��Ϣ���</td> 
    </tr>
</table>

	<table class="table_style" cellspacing="1" cellpadding="4" width="100%" id="wish">
	<tr>
	  <td class="page td_title"></td>
      <td class="page td_title" ></td>
      <td class="page td_title" width="100">��ɫ��</td>
      <td class="page td_list" width="30">
             <input name="role_name" type="text" class="input_area" value="" >
	  </td>
      <td class="page td_title"></td>
      <td class="page td_title"></td>
    </tr>
    <tr>
      <td colspan="12" class="page td_bottom"><input  name="Submit" type="submit" class="input_text" value="����">
        <input name="new_button5" type="reset" class="input_text" value="����">
          <input name="new_button54" type="button" class="input_text" onClick="javascript:history.go(-1)" value="����"></td>
    </tr>
  </table>
</form>
</body>
</html>