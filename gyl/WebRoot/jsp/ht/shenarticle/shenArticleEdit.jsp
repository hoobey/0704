<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>
<html>
<head>

<title>修改推荐文章</title>
<script language=JScript.Encode src="<%= request.getContextPath() %>/fckeditor/fckeditor.js"></script>
</head>
<body>
<form name="theForm" method=post  action="<%=request.getContextPath()%>/shenarticle?" >
<INPUT TYPE="hidden" NAME="actionType" value="update">
        <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
      <tr>
        <td class="subtitle navi_bar" align="center">修改推荐文章</td>
      </tr>
    </table>
<br>
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
	<tr align="center">     
			<td width="100%"  class="page td_search">修改推荐文章信息</td> 
    </tr>
</table>
<%
	List list=(List)request.getAttribute("onelist");
	Map map=(Map)list.get(0);

		String content=map.get("content").toString();
	if(content != null)
	{
		content = content.replaceAll("\r\n", "");
		  content = content.replaceAll("\r", "");
		  content = content.replaceAll("\n", "");
		  content = content.replaceAll("\"", "'");

	}
%>
<INPUT TYPE="hidden" NAME="article_id" value="<%=(String)map.get("article_id")%>">
	<table class="table_style" cellspacing="1" cellpadding="4" width="100%" id="wish">
		<tr>
	  <td class="page td_title"></td>
      <td class="page td_title"></td>
      <td class="page td_title" width="60">文章名</td>
      <td class="page td_list" width="500" align="center">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="article_name" style="width:300;text-align:center;" type="text"class="input_area" value="<%=(String)map.get("article_name")%>">
	  </td>
      <td class="page td_title"></td>
      <td class="page td_title"></td>
    </tr>
  <tr>
	 <td class="page td_title"></td>
      <td class="page td_title" ></td>
      <td class="page td_title" width="60"> 文章内容</td>
      <td class="page td_list" width="500">
    		<script type="text/javascript">

		    var oFCKeditor = new FCKeditor('content');
		
		    oFCKeditor.BasePath = "<%=request.getContextPath()%>/fckeditor/";                   
		    oFCKeditor.Config["CustomConfigurationsPath"]="<%=request.getContextPath()%>/fckeditor/myconfig.js";
		
		    oFCKeditor.ToolbarSet = "usersBar";
		
		    oFCKeditor.Width="800";
		
		    oFCKeditor.Height="330";
			oFCKeditor.Value="<%=content%>";
		    oFCKeditor.Create();
		
			</script> 
	  </td>
	  
      <td class="page td_title"></td>
      <td class="page td_title"></td>
    </tr>
 

    <tr>
      <td colspan="12" class="page td_bottom"><input name="Submit" type="submit" class="input_text" value="保存">
        <input name="new_button5" type="reset" class="input_text" value="重置">
          <input name="new_button54" type="button" class="input_text" onClick="javascript:history.go(-1)" value="返回"></td>
    </tr>
  </table>
</form>
</body>
</html>
