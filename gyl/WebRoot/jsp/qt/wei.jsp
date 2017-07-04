<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<!--底部开始-->
<DIV id=foot>
  <table width="950" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td align="center" height="30" style="BACKGROUND: url(<%=request.getContextPath() %>/images/bj1.jpg)"><span ><a href="<%=request.getContextPath()%>/souwenzhang?actionType=query" >资讯中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="<%=request.getContextPath()%>/qtmessage?actionType=query">联系我们</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <%
    if(session.getAttribute("Loginlist")==null || session.getAttribute("Loginlist").equals(""))
    {
	
  
%> 
  <a href="<%=request.getContextPath() %>/jsp/qt/login.jsp">企业管理中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="<%=request.getContextPath() %>/jsp/qt/login.jsp">个人管理中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <%}else{  
      	List list2=(List)session.getAttribute("Loginlist");
		Map map2=(Map)list2.get(0);
		if((map2.get("user_info_id")==null||map2.get("user_info_id").equals(""))&&(map2.get("company_id")!=null||!map2.get("company_id").equals("")))
			{         
      %>
	  <a href="<%=request.getContextPath() %>/jsp/qt/comguanli.jsp">企业管理中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="<%=request.getContextPath() %>/jsp/qt/login.jsp">个人管理中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
      <%}else{%>
	  <a href="<%=request.getContextPath() %>/jsp/qt/login.jsp">企业管理中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <a href="<%=request.getContextPath() %>/jsp/qt/gerenguanli.jsp">个人管理中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      
      <%} }%>
      <a href="<%=request.getContextPath()%>/souzhiwei?actionType=query" >查寻招聘信息</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="abu" href="javascript:tj('<%=request.getContextPath() %>/jsp/ht/login.jsp')">招聘网站后台</a></span></td>
    </tr>
  </table>
</DIV>
<DIV id=foot_text><SPAN>电话：</SPAN><SPAN 
class=foot_text_span>15850765271&nbsp;</SPAN><SPAN>(全国统一客服电话，不免长途费推荐使用)</SPAN>&nbsp; 
<SPAN 
class=foot_text_span><SPAN></SPAN></SPAN>&nbsp;&nbsp;<SPAN>手机：</SPAN><SPAN 
class=foot_text_span>15850765271&nbsp;</SPAN><BR>客服值班时间：周一至周五 
找人代理服务，<BR>版权所有&nbsp;南工大人才招聘网&nbsp;本网站所有招聘信息，未经书面授权不得转载<BR>
</DIV>
<SCRIPT LANGUAGE="JavaScript">
  <!--
  	function tj(url)
  	{
		window.parent.location.href=url;
	}
  //-->
  </SCRIPT>