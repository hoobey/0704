<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html>
  <head>
    <title>����ʧ��ҳ��</title>

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
					���ĸ��˻�����Ϣûд!<%
				}
					else if(gerencuo.equals("qzyx")){
						%>������ְ������Ϣûд!<%
				}
						else if(gerencuo.equals("congtou")){
						%>���Ѿ��������Ƹ��ϢͶ��������!<%
				}
						else if(gerencuo.equals("congshou")){
						%>���Ѿ��ղع�������Ƹ��Ϣ��<%
				}
				else if(gerencuo.equals("jianli")){
						%>����û�б�д����<%
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
							���Ѿ��Դ��˷���������֪ͨ��!<%
							}else if(comcuo.equals("shouguo"))
							{
							%>
							���Ѿ��ղع�������!<%
							}
						
						}
			%>
  </td>
  </tr>
  <tr>
  <td colspan="2">
         <a href="javascript:history.back(1)" ><span>����������һ����ҳ��</span></a>
  <span id="tiao">3</span>����Զ���ת����һ����ҳ��<script language=javascript>countDown(3,'javascript:history.back(1)');function countDown(secs,surl){
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
