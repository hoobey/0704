<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html>
  <head>
    <title>操作失败页面</title>

	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">


  </head>
  
  <body>
  <table align="center">
  <tr  align="center">
  <td>
  <img name="sorry" src="<%=request.getContextPath()%>/images/htloginimages/sorry.gif"   alt="" />
  </td>
  <td>
<%
			String gerencuo=(String)request.getParameter("gerencuo");
			System.out.println("gerencuo===="+gerencuo);
			if(gerencuo!=null)
			{
				if(gerencuo.equals("jiben")){
					%>
					您的个人基本信息没写!<%
				}
					else if(gerencuo.equals("qzyx")){
						%>您的求职意向信息没写!<%
				}
						else if(gerencuo.equals("congtou")){
						%>您已经向这个招聘信息投过简历了!<%
				}
						else if(gerencuo.equals("congshou")){
						%>您已经收藏过这条招聘信息了<%
				}
				else if(gerencuo.equals("jianli")){
						%>您还没有编写简历<%
				}
			}else
			{
			}
			%>
			<% 
						String comcuo=(String)request.getParameter("comcuo");
						if(comcuo!=null)
						{
						System.out.println("comcuo=========="+comcuo);
							if(comcuo.equals("congfa")){
						%>
							您已经对此人发过了面试通知了!<%
							}else if(comcuo.equals("shouguo"))
							{
							%>
							您已经收藏过此人了!<%
							}
						
						}
			%>
  </td>
  </tr>
  <tr>
  <td colspan="2">
         <a href="javascript:history.back(1)" ><span>单击返回上一步的页面</span></a>
  <span id="tiao">3</span>秒后自动跳转到上一步的页面<script language=javascript>countDown(3,'javascript:history.back(1)');function countDown(secs,surl){
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
