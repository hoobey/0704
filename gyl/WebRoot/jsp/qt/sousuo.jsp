<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>


<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=gbk">
    <title>�ҹ���</title>

    <style type="text/css">
	<!--
	.ttdd {width:150px;font-size:12px;}
	.ddtt {width:100px;}
	.dt {width:100px;}
	.STYLE5 {color: #3399FF;}
	.STYLE7 {font-size: 15px}
	-->
	</style>
	<style type="text/css">
<!--
.STYLE1 {color: #000000}
.STYLE2 {color: #bd0a01}
.STYLE4 {color: #3399FF; font-size: 15px; }
-->
</style>

  </head>
  
  <body>
  <%@include file="tou.jsp"%>	
  <form method="post">
  <INPUT TYPE="hidden" NAME="actionType" value="">
 <div style="width:900px;height:36px;background:url('<%=request.getContextPath() %>/images/bjj.bmp');">
 
 	  <div style="float:left;margin:0px;width:350px;FONT-SIZE:13PX;color:#ffffff;height:18px;MARGIN-TOP:0px;">
       ְҵ���&nbsp;&nbsp;
        <SELECT NAME="want_profession" style="margin-top:5px;width:200px;height:20px;">
		<OPTION VALUE="0" SELECTED>^��ѡ����Ҫ������ְҵ���^</OPTION>
		<OPTION VALUE="�����ѧ�빤����">�����ѧ�빤����</OPTION>
		<OPTION VALUE="���̹�����">���̹�����</OPTION>
		<OPTION VALUE="����������">����������</OPTION>
		<OPTION VALUE="ͼ�鵵��ѧ">ͼ�鵵��ѧ��</OPTION>
		<OPTION VALUE="������Ϣ��">������Ϣ��</OPTION>
		<OPTION VALUE="�������">�������</OPTION>
		<OPTION VALUE="��е��">��е��</OPTION>
		<OPTION VALUE="�����Ǳ���">�����Ǳ���</OPTION>
		<OPTION VALUE="��Դ������">��Դ������</OPTION>
		<OPTION VALUE="������">������</OPTION>
		<OPTION VALUE="�Ṥ��֯ʳƷ��">�Ṥ��֯ʳƷ��</OPTION>		
		<OPTION VALUE="������">������</OPTION>
		<OPTION VALUE="������ѧ�밲ȫ��">������ѧ�밲ȫ��</OPTION>
		<OPTION VALUE="��ҩ������">��ҩ������</OPTION>
		<OPTION VALUE="��ͨ������">��ͨ������</OPTION>
		<OPTION VALUE="���պ�����">���պ�����</OPTION>		
		<OPTION VALUE="ˮ����">ˮ����</OPTION>
		<OPTION VALUE="����������">����������</OPTION>
		<OPTION VALUE="��ѧ��">��ѧ��</OPTION>
		<OPTION VALUE="����ѧ��">����ѧ��</OPTION>
		<OPTION VALUE="��ѧ��">��ѧ��</OPTION>	
		<OPTION VALUE="������">������</OPTION>
		<OPTION VALUE="���ĵ��ʵ�����">���ĵ��ʵ�����</OPTION>
		<OPTION VALUE="����ѧ��">����ѧ��</OPTION>
		<OPTION VALUE="����ѧ��">����ѧ��</OPTION>
		<OPTION VALUE="������">������</OPTION>	
		<OPTION VALUE="��ѧ��">��ѧ��</OPTION>
		<OPTION VALUE="��ѧ��">��ѧ��</OPTION>
		<OPTION VALUE="����ѧ��">����ѧ��</OPTION>
		<OPTION VALUE="ҽѧ��">ҽѧ��</OPTION>
		<OPTION VALUE="ũҵ��">ũҵ��</OPTION>
		<OPTION VALUE="��ʷѧ��">��ʷѧ��</OPTION>	
        </SELECT>
	  </div>
	  <div style="float:left;width:280px;FONT-SIZE:13PX;color:#ffffff;height:18px;MARGIN-TOP:0px;"> 
	  �ؼ���&nbsp;&nbsp;&nbsp;<INPUT TYPE="text" NAME="want_keyword" style="margin-top:5px;width:100px;height:20px;">
	  </div>
	  <div style="margin-top:5px;"><img src="<%=request.getContextPath() %>/images/search_botton.gif"  ONCLICK="zhao()">&nbsp;&nbsp;&nbsp;&nbsp;
	  </div>
		
 </div>
  <div style="width:900px;height:36px;background:#D5D9FB;">
  <div style="float:left;width:150px;height:25px;FONT-SIZE:13PX;MARGIN-LEFT:20PX;MARGIN-TOP:10px;">
   ��˾����
  </div>
   <div style="float:left;width:130px;height:25px;FONT-SIZE:13PX;MARGIN-LEFT:110PX;MARGIN-TOP:10px;">
   ְλ����
  </div>
  <div style="width:150px;height:25px;FONT-SIZE:13PX;MARGIN-LEFT:0PX;MARGIN-TOP:10px;">
   ��ֹ����
  </div>
  </div>
  	<%
  		Page page_=(Page)request.getAttribute("page");
		List zhiweilist=(List)request.getAttribute("zhiweilist");
		for(int i=0;i<zhiweilist.size();i++)
		{
			Map zhiweimap=(Map)zhiweilist.get(i);
			String zw = (String)zhiweimap.get("want_name");
			String gs = (String)zhiweimap.get("company_name");
			String rq = (String)zhiweimap.get("want_time");
	 %>
   <table style="width:800px;height:50px;FONT-SIZE:12PX;" >
	  <tr align="center">
		  <td width="150"> <a href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=(String)zhiweimap.get("company_id")%>" style="TEXT-DECORATION:underline"><%=gs %></a>
		  </td>
		  <td width="220"><a href="<%=request.getContextPath()%>/souzhiwei?actionType=zaizaiquery&want_information_id=<%=(String)zhiweimap.get("want_information_id")%>" style="TEXT-DECORATION:underline"><%=zw %></a>
		  </td>
		  <td width="200"><%=rq.substring(0,10) %>
		  </td>		  		  
	  </tr>
	  	<%} %>
	  	 <tr align="center">
	  	<% PageView view = new PageView(request,out,page_); %>
		<% view.setCurrentUrl("souzhiwei"); %>
		<% view.setVisible(true,0,0); %>
		</tr>
  </table> 
  </form>

  <%@include file="wei.jsp"%>	

  
  </body>
</html>
  <SCRIPT LANGUAGE="JavaScript">
  <!--
	function zhao()
	{
	document.forms[0].actionType.value="query";
	document.forms[0].action="<%=request.getContextPath()%>/souzhiwei?";
	document.forms[0].submit();
	}
	function gaozhao()
	{
	document.forms[0].actionType.value="sheng";
	document.forms[0].action="<%=request.getContextPath()%>/souzhiwei?";
	document.forms[0].submit();
	}
  //-->
  </SCRIPT>