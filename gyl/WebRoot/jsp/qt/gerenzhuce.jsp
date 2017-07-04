<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>个人会员注册</title>
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
  <body  onload="load()" >
  <form  name="thisForm" method="post" >
    <INPUT TYPE="hidden" NAME="actionType">
  <div style="height:300px;">
    <TABLE align="right" border="0" width="900px" >
  <TR>
	<TD class="ttdd" height="30">用户名:</TD>
	<TD class="ttdd"><INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="yh_name" onblur="panduang('yh','div1',this)" id="yhm"></TD>
	<TD ><img id="yhmc1" src="<%=request.getContextPath()%>/images/kong.gif"></TD>
	<td><div id="div1"></div></td>
  </TR>
  <tr>
  </tr>
    <tr>
  </tr>
  <TR>
	<TD class="ttdd" height="30">密&nbsp;&nbsp;码:</TD>
	<TD class="ttdd"><INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="password" NAME="password" id="password"onblur="panduang('mm','div2',this)"></TD>
	<TD ><img id="yhmc2" src="<%=request.getContextPath()%>/images/kong.gif"></TD>
	<TD><div id="div2"></div></TD>
  </TR>
    <tr>
  </tr>
    <tr>
  </tr>
  <TR>
	<TD class="ttdd" height="30">请重新输入密码:</TD>
	<TD class="ttdd"><INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="password" NAME="rpassword" id="rpassword" onblur="panduang('rmm','div3',this)"></TD>
	<TD ><img id="yhmc3" src="<%=request.getContextPath()%>/images/kong.gif"></TD>
	<TD><div id="div3"></div></TD>
  </TR>
    <tr>
  </tr>
    <tr>
  </tr>
  <TR>
	<TD class="ttdd" height="30">提示问题：</TD>
	<TD class="ttdd"><SELECT NAME="problem" id="problem" onblur="panduang('wt','div6',this)">
	<OPTION VALUE="0" SELECTED>请选择提示信息</option>
	<OPTION VALUE="你母亲的名字">你母亲的名字</option>
	<OPTION VALUE="你父亲的名字">你父亲的名字</option>
	<OPTION VALUE="你的名字">你的名字</option>
	<OPTION VALUE="你喜欢的人的名字">你喜欢的人的名字</option>
	<OPTION VALUE="你老师的名字">你老师的名字</option>
  </SELECT></TD>
	<TD ><img id="yhmc6" src="<%=request.getContextPath()%>/images/kong.gif"></TD>
	<TD><div id="div6"></div></TD>
  </TR>
    <tr>
  </tr>
    <tr>
  </tr>
    <TR>
	<TD class="ttdd" height="30">提示问题答案：</TD>
	<TD class="ttdd"><INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="answer" id="answer" onblur="panduang('da','div4',this)"></TD>
	<TD ><img id="yhmc4" src="<%=request.getContextPath()%>/images/kong.gif"></TD>
	<TD><div id="div4"></div></TD>
  </TR>
    <tr>
  </tr>
  <TR>
	<TD class="ttdd" height="30">电子邮件:</TD>
	<TD class="ttdd"><INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="email" id="email" onblur="panduang('email','div5',this)"></TD>
	<TD ><img id="yhmc5" src="<%=request.getContextPath()%>/images/kong.gif"></TD>
	<TD><div id="div5"></div></TD>
  </TR>
    <tr>
  </tr>
    <tr>
  </tr>
      <tr>
  </tr>
        <tr>
  </tr>
        <tr>
  </tr>
  <TR>

	<TD style="margin-left:0px;float:center;width:200px;" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="<%=request.getContextPath() %>/images/zhu.JPG" onclick="tiJiao()"></TD>
	<TD style="margin-left:0px;text-align:left;width:200px;" colspan="2"><img src="<%=request.getContextPath() %>/images/houtui_botton.gif" ONCLICK="javascript:history.back(1)"></TD>

  </TR>
  </TABLE>
</div>
</form>
<%@include file="wei.jsp"%>	
  </body>
</html>

<SCRIPT LANGUAGE="JavaScript">
<!--
var XMLHttpReq;
	//创建XMLHttpRequest对象 
    function createXMLHttpRequest() {
		//根据不同的浏览器实现AJAX核心
		if(window.XMLHttpRequest) { //Mozilla 浏览器
			XMLHttpReq = new XMLHttpRequest();
		}
		else if (window.ActiveXObject) { // IE浏览器
			try {
				XMLHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				try {
					XMLHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {}
			}
		}
	}

	function load(){
	document.getElementById("yhm").focus();
	}
	//是否可以提交,为用我用焦点事件了，还要判断一下，愁人
	var yn = true;
	var sf=true;	
	
	function tiJiao()
	{
		
		var pw=document.getElementById("password");
		var rpw=document.getElementById("rpassword");
		var problem=document.getElementById("problem");
		var answer=document.getElementById("answer");	
		var email=document.getElementById("email");	
		if(pw.value=="")
		{
			sf=panduang('mm','div2',pw);
		}else{
			if(rpw.value=="")
			{
				sf=panduang('rmm','div3',rpw);
			}else{
				if(problem.value=="0")
				{
					sf=panduang('wt','div6',problem)
				}else{
					if(answer.value=="")
					{
						sf=panduang('da','div4',answer);
					}else{
						
						sf=panduang('email','div5',email);
						if(sf==false)
						{
							alert("输入错误，请按提示输入");
						}else{
							if(yn==false)
							{
							alert("用户名重复")
							}else{
									document.thisForm.actionType.value="zhu";
									document.thisForm.action="<%=request.getContextPath()%>/gerenregist?";
									document.thisForm.submit();
							}
							
						}
					}
				}
			}
		}
		
	}
	
 	function yhName_qingkuang() 
	{
		if (XMLHttpReq.readyState == 4) //readyState的取值如下: 0 (未初始化) 1 (正在装载) 2 (装载完毕) 3 (交互中) 4 (完成) 
		{ // 判断对象状态
				if (XMLHttpReq.status == 200) 
					{			
							// 信息已经成功返回，开始处理信息。开始解析XML
							 var  cyhName=XMLHttpReq.responseXML.getElementsByTagName("id")[0].firstChild.nodeValue;
							 var div1=hq("div1");
							 var yhmc1=document.getElementById("yhmc1");	
									if(cyhName=="0")
									{
										
										 yhmc1.src="<%=request.getContextPath()%>/images/cha.gif"
										
    									 div1.innerHTML="此用户已存在";
    									 yn= false;
									}
									else
									{
										
										div1.innerHTML="<span style='color:#66FF00'>用户名输入正确<span>";
										yhmc1.src="<%=request.getContextPath()%>/images/duihao.gif"	
												
										yn= true;
									}
				 }
				 else 
		        { //页面不正常
			    	window.alert("您所请求的页面有异常。");
			    	yn=false;
		    	 }		
		}
	}


// 看输入的是否正确
	function panduang(lx,d,obj)
	{
		var div1=hq(d);
		if(lx=="yh")
		{
			var yhmc1=document.getElementById("yhmc1");			
			if(ChkUtil.isNull(obj.value)==true)
			{
				yhmc1.src="<%=request.getContextPath()%>/images/cha.gif";			
				div1.innerHTML="<span style='color:red'>用户名为空<span>";
				return false;
			}
			if(ChkUtil.isString6_20(obj.value)==false)
			{
				yhmc1.src="<%=request.getContextPath()%>/images/cha.gif";
				div1.innerHTML="<span style='color:red'>只能输入6-20个字母、数字、下划线<span>";
				return false;
			}else{
				var url="<%=request.getContextPath()%>/gerenregist?actionType=cha&yh_name="+obj.value;
				createXMLHttpRequest();
				XMLHttpReq.open("POST", url, true);
				XMLHttpReq.onreadystatechange = yhName_qingkuang;//回调函数名
				XMLHttpReq.send(null);
			}


	
		}
		if(lx=="mm")
		{
			var yhmc2=document.getElementById("yhmc2");	
			if(ChkUtil.isNull(obj.value)==true)
			{
					yhmc2.src="<%=request.getContextPath()%>/images/cha.gif";					
					div1.innerHTML="<span style='color:red'>密码不能为空<span>";
					return false;
			}
			if(obj.value.length<6 || obj.value.length>12)
			{
				div1.innerHTML="<span style='color:red'>密码必须输入6-12位<span>";
				return false;
			}	
			div1.innerHTML="<span style='color:#66FF00'>密码输入正确<span>";
			yhmc2.src="<%=request.getContextPath()%>/images/duihao.gif"			
			return true;	
		}
		if(lx=="rmm")
		{
			var yhmc3=document.getElementById("yhmc3");			
			var password=document.getElementById("password");	
			if(ChkUtil.isNull(obj.value)==true)
			{
			yhmc3.src="<%=request.getContextPath()%>/images/cha.gif";			
				div1.innerHTML="<span style='color:red'>重输密码为空<span>";
				return false;
			}		
			if(obj.value!=password.value)
			{
				yhmc3.src="<%=request.getContextPath()%>/images/cha.gif";					
				div1.innerHTML="<span style='color:red'>重输密码必须和密码相同<span>";
				return false;
			}
			yhmc3.src="<%=request.getContextPath()%>/images/duihao.gif"	
			div1.innerHTML="<span style='color:#66FF00'>确认密码输入正确<span>";
			return true;
		}
		if(lx=="da")
		{
			var yhmc4=document.getElementById("yhmc4");					
			if(ChkUtil.isNull(obj.value)==true)
			{
				yhmc4.src="<%=request.getContextPath()%>/images/cha.gif";					
				div1.innerHTML="<span style='color:red'>答案不为空<span>";
				return false;
			}
			yhmc4.src="<%=request.getContextPath()%>/images/duihao.gif"	
			div1.innerHTML="<span style='color:#66FF00'>答案输入正确<span>";
			return true;
		}
		if(lx=="email")
		{
			var yhmc5=document.getElementById("yhmc5");					
			if(ChkUtil.isNull(obj.value)==true)
			{
				yhmc5.src="<%=request.getContextPath()%>/images/cha.gif";					
				div1.innerHTML="<span style='color:red'>邮箱不为空<span>";
				return false;
			}
			if(ChkUtil.isEmail(obj.value)==false)
			{
				yhmc5.src="<%=request.getContextPath()%>/images/cha.gif";					
				div1.innerHTML="<span style='color:red'>邮箱格式不正确<span>";
				return false;
			}
			yhmc5.src="<%=request.getContextPath()%>/images/duihao.gif"	;
			div1.innerHTML="<span style='color:#66FF00'>邮箱输入正确<span>";
			return true;
		}
		if(lx=="wt")
		{
			var yhmc6=document.getElementById("yhmc6");					
			if(hq('problem').value==0)
			{
				yhmc6.src="<%=request.getContextPath()%>/images/cha.gif";					
				div1.innerHTML="<span style='color:red'>请选择提示问题<span>";
				return false;
			}
			
			yhmc6.src="<%=request.getContextPath()%>/images/duihao.gif"	;
			div1.innerHTML="<span style='color:#66FF00'>问题正确<span>";
			return true;
		}
	}

	function hq(id)
	{
		var ibj=document.getElementById(id);
		return ibj;
	}
		//-->
</SCRIPT>