<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>发面试通知</title>
  <%@include file="tou.jsp"%>
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
  <%
  List list=(List)session.getAttribute("Loginlist");
  Map yhMap=(Map)list.get(0);
  String company_id=(String)yhMap.get("company_id");
  String resume_name=(String)request.getAttribute("resume_name");
  String user_info_id=(String)request.getAttribute("user_info_id");
   %>
	<FORM method=post>
	<INPUT TYPE="hidden" NAME="actionType" value="">
	<INPUT TYPE="hidden" NAME="user_info_id" value="<%=user_info_id %>">
	<INPUT TYPE="hidden" NAME="company_id" value="<%=company_id %>">
 <div style="width:700px;">
	<div style="width:700px;">
	  <div style="margin-left:130px;width:300px;height:18px;float:left;FONT-SIZE:15PX;"> 
		收件人：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="shoujianren" value="<%=resume_name %>">
	  </div>
	  <div id="div1" style="float:left;margin-left:20px;"></div> 
	</div>
	<div style="width:700px;margin-top:20px;">
	  <div style="margin-left:125px;width:300px;height:18px;float:left;FONT-SIZE:15PX;">
	 
		面试通知题目：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="interview_title" id="interview_title">

	  </div>
	  <div id="div2" style="float:left;margin-left:30px"></div>
	</div>
	 
	  <div style="text-align:center;line-height:80px;width:900px;FONT-SIZE:13PX;height:18px;MARGIN-TOP:0px;FONT-SIZE:15PX;margin-top:20px;"> 
	   <div style="float:left;text-align:right;line-height:30px;width:150px;FONT-SIZE:13PX;height:13px;MARGIN-LEFT:80PX;MARGIN-TOP:0px;FONT-SIZE:15PX;"> 
		面试通知内容：
	  </div>
	   <div style="float:left;text-align:left;line-height:30px;width:300px;FONT-SIZE:13PX;height:13px;MARGIN-LEFT:35PX;MARGIN-TOP:0px;FONT-SIZE:15PX;"> 
			<button onclick="Bold()" style="width:50px;height:30px;PADDING-TOP: 0px;MARGIN-top:0px;">加粗</button> 
			<button onclick="JustifyLeft()"  style="width:50px;height:30px;PADDING-TOP: 0px;MARGIN-top:0px;">左对齐</button> 
			<button onclick="JustifyCenter()"  style="width:50px;height:30px;PADDING-TOP: 0px;MARGIN-top:0px;">居中</button> 
			<button onclick="JustifyRight()"  style="width:50px;height:30px;PADDING-TOP: 0px;MARGIN-top:0px;">右对齐</button> 
			<br><iframe id="myEditer" name="myEditer"></iframe> 
		<textarea name="interview_content" style="display:none"></textarea> 
		</div>
			   <div id="div3" style="width:100px;float:left;"></div>	
	  </div>

    <table style="FONT-SIZE:13PX;margin-top:20px;margin-left:250px;">
    <INPUT  class="input_text" TYPE="button"  VALUE="发送" ONCLICK="tijiao()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <INPUT  class="input_text" TYPE="reset">
    </table>
 </div>
   </FORM>

  <%@include file="wei.jsp"%>	
 
  </body>
</html>
  <SCRIPT LANGUAGE="JavaScript">
  <!--
	function tijiao()
	{
			
			var interview_title=document.getElementById("interview_title");
			var interview_content=document.getElementById("interview_content");
			
			interview_content.value=myEditer.document.documentElement.outerHTML;
				if(interview_title.value=="")
				{		
					div2.innerHTML="<span style='color:red'>面试通知题目必须填写<span>";
					return;
				}
				else
				{
					div2.innerHTML="";
				}
				if(interview_content.value=="")
				{
					div3.innerHTML="<span style='color:red'>面试通知内容必须填写<span>";
					return;
				}
				else
				{
					div3.innerHTML="";
				}
				if(interview_content.value.length>2000)
				{
					div3.innerHTML="<span style='color:red'>面试通知内容长度不可以超2000个字符<span>";
					return;
				}
				else
				{
					div3.innerHTML="";
				}
					document.forms[0].actionType.value="famianshitongzhi";
					document.forms[0].action="<%=request.getContextPath()%>/mianshitongzhi?";
					document.forms[0].submit();
	}

			myEditer.document.designMode = 'on'; 
			function Bold(){ 
			var sel = myEditer.document.selection.createRange(); 
			sel.execCommand("Bold") ; 
			} 
			function JustifyLeft(){ 
			var sel = myEditer.document.selection.createRange();
				if(sel.text!="")
				{
					sel.execCommand("JustifyLeft"); 
				}
			} 
			function JustifyRight(){ 
			var sel = myEditer.document.selection.createRange(); 
				if(sel.text!="")
				{
					sel.execCommand("JustifyRight");
				} 
			} 
			function JustifyCenter(){ 
			var sel = myEditer.document.selection.createRange(); 
				if(sel.text!="")
				{
					sel.execCommand("JustifyCenter") ; 
				}
			} 
  //-->
  </SCRIPT>