<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>


<html>
  <head>
    <title>���˲�</title>

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
  <form>
  <INPUT TYPE="hidden" NAME="actionType" value="">
 <div style="width:900px;height:36px;background:url('<%=request.getContextPath() %>/images/bjj.bmp');">
 
 	  <div style="float:left;margin:0px;width:350px;FONT-SIZE:13PX;color:#ffffff;height:18px;MARGIN-TOP:0px;">
       ����רҵ&nbsp;&nbsp;
        <SELECT NAME="major" style="margin-top:5px;width:200px;height:20px;">
		<OPTION VALUE="" SELECTED>����</OPTION>
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
	 �Ա�:&nbsp;&nbsp;&nbsp;<SELECT NAME="resume_sex" style="margin-top:5px;width:100px;height:20px;">
	 		<OPTION VALUE="" SELECTED>����</OPTION>
	 		<OPTION VALUE="��">��</OPTION>
		    <OPTION VALUE="Ů">Ů</OPTION>
		     </SELECT>
	  </div>
	  <div style="margin-top:5px;"><INPUT type=image src="<%=request.getContextPath() %>/images/search_botton.gif"  ONCLICK="zhao()">&nbsp;&nbsp;&nbsp;&nbsp;
	  </div>
		
 </div>
  <div style="width:900px;height:36px;">
  <table id="table1" border="0" cellpadding="0" cellspacing="0" style="width:900px" align=center>
	<tr style="width:900px;height:36px;background:#D5D9FB;text-align:center;" height="200" >
		<td style="border-bottom:1px solid #C1C8D2;border-top:1px solid #C1C8D2;border-right:1px solid #C1C8D2;border-left:1px solid #FDFEFE;">�˲���</td>
		<td style="border-bottom:1px solid #C1C8D2;border-top:1px solid #C1C8D2;border-right:1px solid #C1C8D2;border-left:1px solid #FDFEFE;">����רҵ</td>
		<td style="border-bottom:1px solid #C1C8D2;border-top:1px solid #C1C8D2;border-right:1px solid #C1C8D2;border-left:1px solid #FDFEFE;" >ѧ��</td>
		<td style="border-bottom:1px solid #C1C8D2;border-top:1px solid #C1C8D2;border-right:1px solid #C1C8D2;border-left:1px solid #FDFEFE;" >ϣ�����µ���ҵ</td>	
		<td style="border-bottom:1px solid #C1C8D2;border-top:1px solid #C1C8D2;border-right:1px solid #C1C8D2;border-left:1px solid #FDFEFE;" >ϣ�����µ�ְҵ</td>
		<td style="border-bottom:1px solid #C1C8D2;border-top:1px solid #C1C8D2;border-right:1px solid #C1C8D2;border-left:1px solid #FDFEFE;" >ϣ�����µ�ְλ</td>
		<td style="border-bottom:1px solid #C1C8D2;border-top:1px solid #C1C8D2;border-right:1px solid #C1C8D2;border-left:1px solid #FDFEFE;" >���ھ�ס��</td>
	</tr>
  	<%
		Page page_=(Page)request.getAttribute("page");
		List rencailist=(List)request.getAttribute("rencailist");
		for(int i=0;i<rencailist.size();i++)
		{
		Map rencaimap=(Map)rencailist.get(i);

	 %>

	 <tr style="text-align:center;" height="50">
		<td ><a  href="<%=request.getContextPath()%>/sourencai?actionType=zaisourencai&id=<%=rencaimap.get("resume_id") %>" style="TEXT-DECORATION:underline;"><%=rencaimap.get("resume_name") %></a></td>
		<td ><%=rencaimap.get("major") %></td>
		<td ><%=rencaimap.get("educational_level") %></td>
		<td ><%=rencaimap.get("hope_industry") %></td>
		<td ><%=rencaimap.get("hope_occupation") %></td>
		<td ><%=rencaimap.get("hope_position") %></td>
		<td  ><%=rencaimap.get("now_live_city1") %>-&gt;<%=rencaimap.get("now_live_city2") %></td>
	</tr>
	  	<%} %>
	  	 <tr align="center">
	  	<% PageView view = new PageView(request,out,page_); %>
		<% view.setCurrentUrl("sourencai"); %>
		<% view.setVisible(true,0,0); %>
		</tr>
  </table> 
  </div>
  <%@include file="wei.jsp"%>	
  </from>
  
  </body>
</html>
  <SCRIPT LANGUAGE="JavaScript">
  <!--
	function zhao()
	{
	document.forms[0].actionType.value="sourencai";
	document.forms[0].action="<%=request.getContextPath()%>/sourencai?";
	document.forms[0].submit();
	}
	function lianjie()
	{
		document.forms[0].action="<%=request.getContextPath() %>/jsp/qt/gaojizhaorencai.jsp";
		document.forms[0].submit();
	}
  //-->
  </SCRIPT>