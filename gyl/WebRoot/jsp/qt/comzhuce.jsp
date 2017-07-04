<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>企业会员注册</title>
    <%@include file="tou.jsp"%>	
    <style type="text/css">
	<!--
	.ttdd {width:300px;font-size:12px;}
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
  <body  >
  <form   method="post" >
    <INPUT TYPE="hidden" NAME="actionType">
  <div style="height:300px;">
    <TABLE align="center" border="0" width="650px">
  <TR>
	<TD class="ttdd" height="30">用户名:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_login_name" onchange="yj(this.value)" ></TD>
	<td><div id="div1"></div></td>
  </TR>
  <tr>
  </tr>
    <tr>
  </tr>
  <TR>
	<TD class="ttdd" height="30">密&nbsp;&nbsp;码:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="password" NAME="com_login_pass" ></TD>
	<TD><div id="div2"></div></TD>
  </TR>
    <tr>
  </tr>
    <tr>
  </tr>
  <TR>
	<TD class="ttdd" height="30">请重新输入密码:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="password" NAME="rcom_login_pass" ></TD>
	<TD><div id="div3"></div></TD>
  </TR>
    <tr>
  </tr>
    <tr>
  </tr>
  <TR>
	<TD class="ttdd" height="30">公司名称：</TD>
	<TD ><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;width:200px;" align="left" TYPE="text" NAME="company_name" ></TD>
	<TD><div id="div4"></div></TD>
    <tr>
  </tr>
    <tr>
  </tr>
    <TR>
 
	<TD class="ttdd" height="30">公司所在地：</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;省:
	<SELECT NAME="sheng" id="sheng"onchange="jysheng()">
		<OPTION VALUE="0" SELECTED>=省=</option>
	<%
    List shenglist=(List)request.getAttribute("shenglist");
    for(int i=0;i<shenglist.size();i++)
    {
    Map shengmap=(Map)shenglist.get(i);
    
    
     %>
		<OPTION VALUE="<%=shengmap.get("big_address_id") %>"><%=shengmap.get("big_address_name") %></option>
	<%} %>
	</SELECT>

	市:
	<SELECT NAME="shi">
		<OPTION VALUE="0" SELECTED>=市=</OPTION>
		
	</SELECT></TD>
	<TD><div id="div5"></div></TD>
  </TR>
  
    <tr>
  </tr>
  <TR >
	<TD class="ttdd" height="30" >联系地址:</TD>
	<TD class="ttdd"  style="width:350px;"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;width:280px;" TYPE="text" NAME="com_contact_address" ></TD>
	<TD><div id="div6"></div></TD>
  </TR>
   <TR>
	<TD class="ttdd" height="30">邮编:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_post_code" ></TD>
	<TD><div id="div7"></div></TD>
	  </TR>
     <TR>
	<TD class="ttdd" height="30">联系电话:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_contact_telephone"  ></TD>
	<TD><div id="div8"></div></TD>
  </TR>
     <TR>
	<TD class="ttdd" height="30">招聘联系人:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_contact_people"  ></TD>
	<TD><div id="div9"></div></TD>
  </TR>
       <TR>
	<TD class="ttdd" height="30">传真号码:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_fax"  ></TD>
	<TD><div id="div10"></div></TD>
  </TR>
        <TR>
	<TD class="ttdd" height="30">企业性质:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_property"  ></TD>
	<TD><div id="div11"></div></TD>
  </TR>
    <TR>
	<TD class="ttdd" height="30">注册资金:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_register_money"  >&nbsp;万(人民币)</TD>
	<TD><div id="div12"></div></TD>
  </TR>
      <TR>
	<TD class="ttdd" height="30">企业规模:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_extent" >&nbsp;例（50-100人）</TD>
	<TD><div id="div13"></div></TD>
  </TR>
        <TR>
	<TD class="ttdd" height="30">公司网址:</TD>
	<TD class="ttdd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_url" ></TD>
	<TD><div id="div14"></div></TD>
  </TR>
          <TR>
	<TD class="ttdd" height="30">电子邮件:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_email"  ></TD>
	<TD><div id="div15"></div></TD>
  </TR>

            <TR>
	<TD class="ttdd" height="30">所属行业1:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<SELECT    onchange=""    name="com_industry1">
          <OPTION value=0 selected>==请选择行业类==</OPTION>
          <OPTION value="计算机/互联网/通信/电子">计算机/互联网/通信/电子</OPTION>
          <OPTION  value="销售/客服/技术支持">销售/客服/技术支持</OPTION>
          <OPTION value="会计/金融/银行/保险">会计/金融/银行/保险</OPTION>
          <OPTION  value="生产/营运/采购/物流">生产/营运/采购/物流</OPTION>
          <OPTION value="生物/制药/医疗/护理">生物/制药/医疗/护理</OPTION>
          <OPTION value="广告/市场/媒体/艺术">广告/市场/媒体/艺术</OPTION>
          <OPTION value="建筑/房地产">建筑/房地产</OPTION>
          <OPTION  value="人事/行政/高级管">人事/行政/高级管理</OPTION>
          <OPTION value="咨询/法律/教育/科研">咨询/法律/教育/科研</OPTION>
          <OPTION value="服务业">服务业</OPTION>
	  </SELECT></TD>
	<TD><div id="div17"></div></TD>
  </TR>
              <TR>
	<TD class="ttdd" height="30">所属行业2:</TD>
	<TD class="ttdd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<SELECT    onchange=""    name="com_industry2">
          <OPTION value=0 selected>请选择行业类</OPTION>
          <OPTION value="计算机/互联网/通信/电子">计算机/互联网/通信/电子</OPTION>
          <OPTION  value="销售/客服/技术支持">销售/客服/技术支持</OPTION>
          <OPTION value="会计/金融/银行/保险">会计/金融/银行/保险</OPTION>
          <OPTION  value="生产/营运/采购/物流">生产/营运/采购/物流</OPTION>
          <OPTION value="生物/制药/医疗/护理">生物/制药/医疗/护理</OPTION>
          <OPTION value="广告/市场/媒体/艺术">广告/市场/媒体/艺术</OPTION>
          <OPTION value="建筑/房地产">建筑/房地产</OPTION>
          <OPTION  value="人事/行政/高级管">人事/行政/高级管理</OPTION>
          <OPTION value="咨询/法律/教育/科研">咨询/法律/教育/科研</OPTION>
          <OPTION value="服务业">服务业</OPTION>
	  </SELECT></TD>
	<TD><div id="div18"></div></TD>
  </TR>
                <TR>
	<TD class="ttdd" height="30">所属行业3:</TD>
	<TD class="ttdd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<SELECT    onchange=""    name="com_industry3">
          <OPTION value=0 selected>==请选择行业类==</OPTION>
          <OPTION value="计算机/互联网/通信/电子">计算机/互联网/通信/电子</OPTION>
          <OPTION  value="销售/客服/技术支持">销售/客服/技术支持</OPTION>
          <OPTION value="会计/金融/银行/保险">会计/金融/银行/保险</OPTION>
          <OPTION  value="生产/营运/采购/物流">生产/营运/采购/物流</OPTION>
          <OPTION value="生物/制药/医疗/护理">生物/制药/医疗/护理</OPTION>
          <OPTION value="广告/市场/媒体/艺术">广告/市场/媒体/艺术</OPTION>
          <OPTION value="建筑/房地产">建筑/房地产</OPTION>
          <OPTION  value="人事/行政/高级管">人事/行政/高级管理</OPTION>
          <OPTION value="咨询/法律/教育/科研">咨询/法律/教育/科研</OPTION>
          <OPTION value="服务业">服务业</OPTION>
	  </SELECT></TD>
	<TD><div id="div19"></div></TD>
  </TR>
                  <TR>
	<TD class="ttdd" height="30">公司简介:</TD>
	<TD class="ttdd" ><span  style="color:red;margin-top:0px">*</span><TEXTAREA NAME="com_summary" ROWS="8" COLS="39"></TEXTAREA></TD>
	<TD><div id="div20"></div></TD>
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
	<TD height="30" style="margin-left:0px;float:left;width:100px;"></TD>
	<TD style="margin-left:0px;float:left;width:100px;"><INPUT class="input_text" TYPE="button" value="下一步" onclick="tiJiao()"></TD>
	<TD style="margin-left:0px;float:left;width:100px;"><INPUT class="input_text" TYPE="reset" value="重置"></TD>
	<TD></TD>
  </TR>
  </TABLE>
</div>
</form>
<%@include file="wei.jsp"%>	
  </body>
</html>
<SCRIPT LANGUAGE="JavaScript">
<!--
	var a=true;
	function tiJiao()
	{
	var com_login_name=document.getElementById("com_login_name");
	var com_login_pass=document.getElementById("com_login_pass");
	var rcom_login_pass=document.getElementById("rcom_login_pass");
	var company_name=document.getElementById("company_name");
	var sheng=document.getElementById("sheng");
	var shi=document.getElementById("shi");
	var com_contact_address=document.getElementById("com_contact_address");
	var com_post_code=document.getElementById("com_post_code");
	var com_contact_telephone=document.getElementById("com_contact_telephone");
	var com_contact_people=document.getElementById("com_contact_people");
	var com_fax=document.getElementById("com_fax");
	var com_property=document.getElementById("com_property");
	var com_register_money=document.getElementById("com_register_money");
	var com_extent=document.getElementById("com_extent");

	var com_email=document.getElementById("com_email");
	var com_industry1=document.getElementById("com_industry1");
	var com_summary=document.getElementById("com_summary");
	if(com_login_name.value=="")
	{
	div1.innerHTML="<span style='color:red'>用户名不能为空<span>";
	return;
	}
	else
	{
	div1.innerHTML="";
	}
	if(ChkUtil.isString6_20(com_login_name.value)==false)
	{
	div1.innerHTML="<span style='color:red'>用户名只能输入6-20个字母、数字、下划线<span>";
	return;
	}
	else
	{
	div1.innerHTML="";
	}
	if(com_login_pass.value=="")
	{
	div2.innerHTML="<span style='color:red'>密码不能为空<span>";
	return;
	}
	else
	{
	div2.innerHTML="";
	}
	if(ChkUtil.isString6_20(com_login_pass.value)==false)
	{
	div2.innerHTML="<span style='color:red'>密码只能输入6-20个字母、数字、下划线<span>";
	return;
	}
	else
	{
	div2.innerHTML="";
	}
	if(rcom_login_pass.value!=com_login_pass.value)
	{
	div3.innerHTML="<span style='color:red'>重输入的密码与原密码不同<span>";
	return;
	}
	else
	{
	div3.innerHTML="";
	}
	if(company_name.value=="")
	{
	div4.innerHTML="<span style='color:red'>公司企业的名称不能为空<span>";
	return;
	}
	else
	{
	div4.innerHTML="";
	}
	if(sheng.value=="0"||shi.value=="0")
	{
	div5.innerHTML="<span style='color:red'>地址不能为空<span>";
	return;
	}
	else
	{
	div5.innerHTML="";
	}
	if(com_contact_address.value=="")
	{
	div6.innerHTML="<span style='color:red'>联系地址不能为空<span>";
	return;
	}
	else
	{
	div6.innerHTML="";
	}
	if(com_post_code.value=="")
	{
	div7.innerHTML="<span style='color:red'>邮政编码不能为空<span>";
	return;
	}
	else
	{
	div7.innerHTML="";
	}	
	if(ChkUtil.isZipCode(com_post_code.value)==false)
	{
	div7.innerHTML="<span style='color:red'>邮政编码格式不正确<span>";
	return;
	}
	else
	{
	div7.innerHTML="";
	}
	if(com_contact_telephone.value=="")
	{
	div8.innerHTML="<span style='color:red'>联系电话不能为空<span>";
	return;
	}
	else
	{
	div8.innerHTML="";
	}	
	if(com_contact_people.value=="")
	{
	div9.innerHTML="<span style='color:red'>招聘联系人不能为空<span>";
	return;
	}
	else
	{
	div9.innerHTML="";
	}
	if(com_fax.value=="")
	{
	div10.innerHTML="<span style='color:red'>传真号不能为空<span>";
	return;
	}
	else
	{
	div10.innerHTML="";
	}
	if(com_property.value=="")
	{
	div11.innerHTML="<span style='color:red'>公司性质不能为空<span>";
	return;
	}
	else
	{
	div11.innerHTML="";
	}
	if(com_register_money.value=="")
	{
	div12.innerHTML="<span style='color:red'>注册资金不能为空<span>";
	return;
	}
	else
	{
	div12.innerHTML="";
	}
		if(ChkUtil.isPlusInteger(com_register_money.value)==false)
	{
	div12.innerHTML="<span style='color:red'>注册资金必须为正整数<span>";
	return;
	}
	else
	{
	div12.innerHTML="";
	}
	if(com_extent.value=="")
	{
	div13.innerHTML="<span style='color:red'>企业规模不能为空<span>";
	return;
	}
	else
	{
	div13.innerHTML="";
	}
	
	if(com_email.value=="")
	{
	div15.innerHTML="<span style='color:red'>电子邮箱为空<span>";
	return;
	}
	else
	{
	div15.innerHTML="";
	}
	if(ChkUtil.isEmail(com_email.value)==false)
	{
	div15.innerHTML="<span style='color:red'>电子邮箱格式不正确<span>";
	return;
	}
	else
	{
	div15.innerHTML="";
	}

	if(com_industry1.value=="0")
	{
	div17.innerHTML="<span style='color:red'>必须选择一个行业<span>";
	return;
	}
	else
	{
	div17.innerHTML="";
	}
	if(com_summary.value=="")
	{
	div20.innerHTML="<span style='color:red'>必须填写公司简介<span>";
	return;
	}
	else
	{
	div20.innerHTML="";
	}
	if(com_summary.value.length<50||com_summary.value.length>4000)
	{
	div20.innerHTML="<span style='color:red'>填写的公司简介长度必须为在50到4000个字符之间<span>";
	return;
	}
	else
	{
	div20.innerHTML="";
	}
	if(a==true)
	{
		document.forms[0].actionType.value="adddiyicomzhuce" ;
		document.forms[0].action="<%=request.getContextPath()%>/comzhuce";
		document.forms[0].submit();
	}
	}
	
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

	//查询用户名称是否可用
	function yj(aa) {
		
			//要发送请求的地址
			if(aa!= "")
			{
				var url="<%=request.getContextPath()%>/comzhuce?actionType=chaming&ming="+aa;
				createXMLHttpRequest();
				XMLHttpReq.open("POST", url, true);
				XMLHttpReq.onreadystatechange = yhName;//回调函数名
				XMLHttpReq.send(null);  // 发送请求
			}
		
	}

	 function yhName() 
	{
				if (XMLHttpReq.readyState == 4) //readyState的取值如下: 0 (未初始化) 1 (正在装载) 2 (装载完毕) 3 (交互中) 4 (完成) 
					{ // 判断对象状态
							if (XMLHttpReq.status == 200) 
								{			
										// 信息已经成功返回，开始处理信息。开始解析XML
										 var  cyhName=XMLHttpReq.responseXML.getElementsByTagName("id")[0].firstChild.nodeValue;
												if(cyhName=="0")
												{
													 div1.innerHTML="<span style='color:red'>用户名已存在<span>";
													 a=false;
													 
												}
												else
												{
													  div1.innerHTML="<span style='color:green'>用户名可用<span>";
													  a=true;
												}
							 }
							 else 
						        { //页面不正常
							    	window.alert("您所请求的页面有异常。");
						    	 }		
					}
		}
	
	
	function jysheng() {
			var sheng=document.getElementById("sheng").value;
			//要发送请求的地址
			if(sheng!= "")
			{
				var url="<%=request.getContextPath()%>/comzhuce?actionType=chashi&ming="+sheng;
				createXMLHttpRequest();
				XMLHttpReq.open("POST", url, true);
				XMLHttpReq.onreadystatechange = shi;//回调函数名
				XMLHttpReq.send(null);  // 发送请求
			}
		
	}
	
	function shi()
	{
		if (XMLHttpReq.readyState == 4) //readyState的取值如下: 0 (未初始化) 1 (正在装载) 2 (装载完毕) 3 (交互中) 4 (完成) 
		{ // 判断对象状态
			if (XMLHttpReq.status == 200) 
			{			
				
				var xmldoc = XMLHttpReq.responseXML;
				var  zs=xmldoc.getElementsByTagName("size")[0].firstChild.nodeValue;
				var id=xmldoc.getElementsByTagName("id");
				var name=xmldoc.getElementsByTagName("name");
				var shia=document.getElementById('shi');
				shia.options.length=1;
				for(var i=0;i<zs;i++)
				{
					var idd=id[i].firstChild.nodeValue;
					var named=name[i].firstChild.nodeValue; 
					shia.options[shia.length] = new Option(named, idd);
					
				}
			}
			
		}
	}
	
//-->
</SCRIPT>
