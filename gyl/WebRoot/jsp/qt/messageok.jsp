<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>成功页</title>

	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


  </head>
  
  <body>
  <table align="center" width="100%">
  <tr  align="center">
  <td>
  <img name="ok" src="<%=request.getContextPath()%>/images/ok.gif"  id="ok" alt="" />
  </td>
  <td>
  </td>
  <tr>
  <td colspan="2">哈哈，你成功了<a href="qtmessage?actionType=query" ><span>单击反回上一步继续操作</span></a>
  </td>
  </tr>
  <tr align="center" style="width:900px;">
  <font size="13"><span id="tiao">3</span>秒后自动跳转到上一步页面</font><script language=javascript>countDown(3,'qtmessage?actionType=query');function countDown(secs,surl){
 //alert(surl);

 tiao.innerText=secs;
 if(--secs>0){
     setTimeout("countDown("+secs+",'"+surl+"')",1000);
     }
 else{
  
     location.href=surl;
     } 
 }</script>
  </tr>
  </body>
</html>
