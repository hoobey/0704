<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<!--�ײ���ʼ-->
<DIV id=foot>
  <table width="950" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td align="center" height="30" style="BACKGROUND: url(<%=request.getContextPath() %>/images/bj1.jpg)"><span ><a href="<%=request.getContextPath()%>/souwenzhang?actionType=query" >��Ѷ����</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/qtmessage?actionType=query">��ϵ����</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <%
    if(session.getAttribute("Loginlist")==null || session.getAttribute("Loginlist").equals(""))
    {
	
  
%> 
  <a href="<%=request.getContextPath() %>/jsp/qt/login.jsp">��ҵ��������</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="<%=request.getContextPath() %>/jsp/qt/login.jsp">���˹�������</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <%}else{  
      	List list2=(List)session.getAttribute("Loginlist");
		Map map2=(Map)list2.get(0);
		if((map2.get("user_info_id")==null||map2.get("user_info_id").equals(""))&&(map2.get("company_id")!=null||!map2.get("company_id").equals("")))
			{         
      %>
	  <a href="<%=request.getContextPath() %>/jsp/qt/comguanli.jsp">��ҵ��������</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="<%=request.getContextPath() %>/jsp/qt/login.jsp">���˹�������</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
      <%}else{%>
	  <a href="<%=request.getContextPath() %>/jsp/qt/login.jsp">��ҵ��������</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="<%=request.getContextPath() %>/jsp/qt/gerenguanli.jsp">���˹�������</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
      <%} }%>
      <a href="<%=request.getContextPath()%>/souzhiwei?actionType=query" >��Ѱ��Ƹ��Ϣ</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="abu" href="javascript:tj('<%=request.getContextPath() %>/jsp/ht/login.jsp')">��Ƹ��վ��̨</a></span></td>
    </tr>
  </table>
</DIV>
<DIV id=foot_text><SPAN>�绰��</SPAN><SPAN 
class=foot_text_span>15850765271&nbsp;</SPAN><SPAN>(ȫ��ͳһ�ͷ��绰�����ⳤ;���Ƽ�ʹ��)</SPAN>&nbsp; 
<SPAN 
class=foot_text_span><SPAN></SPAN></SPAN>&nbsp;&nbsp;<SPAN>�ֻ���</SPAN><SPAN 
class=foot_text_span>15850765271&nbsp;</SPAN><BR>�ͷ�ֵ��ʱ�䣺��һ������ 
���˴������<BR>��Ȩ����&nbsp;�Ϲ����˲���Ƹ��&nbsp;����վ������Ƹ��Ϣ��δ��������Ȩ����ת��<BR>
</DIV>
<SCRIPT LANGUAGE="JavaScript">
  <!--
  	function tj(url)
  	{
		window.parent.location.href=url;
	}
  //-->
  </SCRIPT>