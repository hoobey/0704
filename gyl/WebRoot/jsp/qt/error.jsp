<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>


<html>
  <head>
    <title>����ҳ��</title>

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
					�û����������!<%
				}
					else if(error.equals("no")){
						%>�û��������벻��Ϊ��!<%
				}
						else if(error.equals("erroryzm")){
						%>��֤��Ϊ�գ�����֤���������!<%
				}		else if(error.equals("errorzhaomima")){
						%>���������Ϣ����!�޷��һ�����<%
				}
						else if(error.equals("errorzhaomimacom")){
						%>������ĵ�¼������!����վû����������û���<%
				}
			}
		%>
  
  
  
  </td>
  </tr>
  <tr>
  <td colspan="2">
         <a href="<%=request.getContextPath()%>/jsp/qt/shouye.jsp" ><span>����������ҳ��������</span></a>
  <span id="tiao">3</span>����Զ���ת����ҳ<script language=javascript>countDown(3,'http://localhost:8080/lkx');function countDown(secs,surl){
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
