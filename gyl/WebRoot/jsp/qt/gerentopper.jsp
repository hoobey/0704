<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html><head>


<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="<%=request.getContextPath() %>/images/guanli/cdjobma.css" rel="stylesheet" type="text/css">
<title>管理顶栏</title>
<!-- base -->
</head><body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" marginheight="0" marginwidth="0">
<table id="table1" background="<%=request.getContextPath() %>/images/guanli/pic.jpg" border="0" cellpadding="0" cellspacing="0" height="70" width="100%">
	<tr>
		
		<td class="td_mu" valign="top"><a class="abu" href="javascript:tj('http://localhost:8080/lkx')">首页</a>&nbsp;|&nbsp;<a class="abu" target="_parent" href="<%=request.getContextPath()%>/souwenzhang?actionType=query" >资讯中心</a>&nbsp;|&nbsp;<a class="abu" target="_parent" href="<%=request.getContextPath()%>/souzhiwei?actionType=query" >搜索招聘信息</a>&nbsp;|&nbsp;<a class="abu" href="<%=request.getContextPath()%>/qtmessage?actionType=query" target="_parent">留言信息</a>&nbsp;|&nbsp;<a class="abu" href="<%=request.getContextPath() %>/jsp/qt/gerenhelp.jsp"  target="_parent">个人帮助信息</a></td>
	</tr>
</table>
<table id="table2" bgcolor="#2b6fbd" border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr>
		<td height="26" width="40"><p align="right"><img src="<%=request.getContextPath() %>/images/guanli/myali_status_icon.gif" border="0" height="27" width="21"></p></td>
		<td class="td_dh" width="320">欢迎登录求职者管理中心&nbsp;[<a class="abu" href="<%=request.getContextPath()%>/qtlogin?actionType=tuichu" target="_parent">退出</a>]</td>
		<td class="td_dhright"> <span ><a href="<%=request.getContextPath() %>/jsp/qt/gerenhelp.jsp"  target="_blank">
		<font color="#ffff00">求职必读：求职防骗技巧&gt;&gt;&gt;</font></a><font color="#ffff00">
		</font>&nbsp; </span>服务热线:18724594508&nbsp; 在线QQ:308692467</td>
	</tr>
	<tr>
		<td colspan="3" bgcolor="#cccccc" height="3"></td>
	</tr>	
</table>
<SCRIPT LANGUAGE="JavaScript">
  <!--
  	function tj(url)
  	{
		window.parent.location.href=url;
	}
  //-->
  </SCRIPT>
</body></html>