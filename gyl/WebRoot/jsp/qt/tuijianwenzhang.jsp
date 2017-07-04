<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户推荐好文章</title>
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
<script language=JScript.Encode src="<%= request.getContextPath() %>/fckeditor/fckeditor.js"></script>
  </head>
  
  <body>
	<FORM  method=post >
	<INPUT TYPE="hidden" NAME="actionType" value="">
 <div style="width:700px;">
	<div style="width:700px;">
	  <div style="margin-left:50px;width:500px;height:18px;float:left;FONT-SIZE:15PX;"> 
		文章名称:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;width:300px;" TYPE="text" NAME="article_name" id="name">
	  </div>
	   <div id="div1" style="float:left;"></div> 
	</div>
	<div style="width:700px;margin-top:20px">
	  <div style="margin-left:0px;width:500px;height:18px;float:left;FONT-SIZE:15PX;">
	 
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;文章类型:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<SELECT NAME="article_sort_id" id="id">
			<OPTION VALUE="0" SELECTED>=请选择文章类型=</OPTION>
			<% 
				System.out.println(request.getAttribute("weileilist"));
			List weileilist=(List)request.getAttribute("weileilist");

			for(int i=0;i<weileilist.size();i++)
			{
			Map map=(Map)weileilist.get(i);
			%>
			<OPTION VALUE="<%=map.get("article_sort_id") %>"><%=map.get("article_sort_name") %></OPTION>
			<%	}%>
			</SELECT>
	  </div>
	  <div id="div2" style="float:left;"></div>
	</div>
	  <div style="float:left;text-align:left;line-height:30px;width:300px;FONT-SIZE:13PX;height:13px;MARGIN-LEFT:30PX;MARGIN-TOP:0px;FONT-SIZE:15PX;"> 
		
	  </div>
	  <div style="text-align:center;line-height:80px;width:700px;FONT-SIZE:13PX;height:18px;MARGIN-TOP:0px;FONT-SIZE:15PX;"> 
	  	    		<script type="text/javascript">

		    var oFCKeditor = new FCKeditor('content');
		
		    oFCKeditor.BasePath = "<%=request.getContextPath()%>/fckeditor/";                   
		    oFCKeditor.Config["CustomConfigurationsPath"]="<%=request.getContextPath()%>/fckeditor/myconfig.js";
		
		    oFCKeditor.ToolbarSet = "usersBar";
		
		    oFCKeditor.Width="800";
		
		    oFCKeditor.Height="330";
			
		    oFCKeditor.Create();
		
			</script>
	  </div>
	  
    <table style="FONT-SIZE:13PX;margin-top:20px;">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT  class="input_text" TYPE="button"  VALUE="提交" ONCLICK="tijiao()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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

			var name=document.getElementById("name");
			var id=document.getElementById("id");
				if(name.value=="")
				{		
					div1.innerHTML="<span style='color:red'>文章名必须填写<span>";
					return;
				}
				else
				{
					div1.innerHTML="";
				}
				if(id.value=="0")
				{
					div2.innerHTML="<span style='color:red'>必须选择文章类型<span>";
					return;
				}
				else
				{
					div2.innerHTML="";
				}
					document.forms[0].actionType.value="tuiweizhang";
					document.forms[0].action="<%=request.getContextPath()%>/souwenzhang?";
					document.forms[0].submit();
	}

  //-->
  </SCRIPT>