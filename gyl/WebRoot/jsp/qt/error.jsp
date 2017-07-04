<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>


<html>
  <head>
    <title>错误页面</title>

	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


  </head>
  
  <body>
  <table align="center">
  <tr  align="center">
  <td>
  <img name="sorry" src="<%=request.getContextPath()%>/images/htloginimages/sorry.gif"  id="sorry" alt="" />
  </td>
  <td>
 
<%
			String error=(String)request.getParameter("error");
			System.out.println("err===="+error);
			if(error!=null)
			{
				if(error.equals("error")){
					%>
					用户名密码错误!<%
				}
					else if(error.equals("no")){
						%>用户名和密码不能为空!<%
				}
						else if(error.equals("erroryzm")){
						%>验证码为空，或验证码输入错误!<%
				}		else if(error.equals("errorzhaomima")){
						%>您输入的信息错误!无法找回密码<%
				}
						else if(error.equals("errorzhaomimacom")){
						%>您输入的登录名有误!本网站没有您输入的用户！<%
				}
			}
		%>
  
  
  
  </td>
  </tr>
  <tr>
  <td colspan="2">
         <a href="<%=request.getContextPath()%>/jsp/qt/shouye.jsp" ><span>单击返回首页继续操作</span></a>
  <span id="tiao">3</span>秒后自动跳转到首页<script language=javascript>countDown(3,'http://localhost:8080/lkx');function countDown(secs,surl){
 //alert(surl);

 tiao.innerText=secs;
 if(--secs>0){
     setTimeout("countDown("+secs+",'"+surl+"')",1000);
     }
 else{
  
     location.href=surl;
     } 
 }</script>
  </td></tr>
   </table>
  
  
  
  </body>
</html>
