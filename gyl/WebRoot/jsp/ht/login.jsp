<%@page contentType="text/html;charset=GBK"%>
<html>
<head>
<title>后台登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<style type="text/css">td img {display: block;}</style>
<!--Fireworks CS3 Dreamweaver CS3 target.  Created Thu Oct 22 09:21:49 GMT+0800 2009-->
</head>
<body bgcolor="#ffffff" onload="load()">
<FORM METHOD=POST  name="thisform" ACTION="<%=request.getContextPath()%>/htlogin">
<INPUT TYPE="hidden" NAME="actionType" value="dl">
	<table border="0" cellpadding="0" cellspacing="0" width="1003" align="center">
<!-- fwtable fwsrc="未命名" fwpage="页面 1" fwbase="1.jpg" fwstyle="Dreamweaver" fwdocid = "1033933748" fwnested="0" -->
  <tr>
   <td><img src="images/spacer.gif" width="494" height="1" border="0" alt="" /></td>
   <td><img src="images/spacer.gif" width="107" height="1" border="0" alt="" /></td>
   <td><img src="images/spacer.gif" width="12" height="1" border="0" alt="" /></td>
   <td><img src="images/spacer.gif" width="37" height="1" border="0" alt="" /></td>
   <td><img src="images/spacer.gif" width="353" height="1" border="0" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>

  <tr>
   <td colspan="5"><img name="n1_r1_c1" src="<%=request.getContextPath()%>/images/htloginimages/1_r1_c1.jpg" width="1003" height="313" border="0" id="n1_r1_c1" alt="" /></td>
   <td><img src="<%=request.getContextPath()%>/images/htloginimages/spacer.gif" width="1" height="313" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="4"><img name="n1_r2_c1" src="<%=request.getContextPath()%>/images/htloginimages/1_r2_c1.jpg" width="494" height="300" border="0" id="n1_r2_c1" alt="" /></td>
   <td><INPUT style="width:101px;height:13px;border:0px" TYPE="text" NAME="loginName" onkeypress="javascript:if(window.event.keyCode==13){tofocus('loginPassword')}"></td>
   <td rowspan="2" colspan="3"><img name="n1_r2_c3" src="<%=request.getContextPath()%>/images/htloginimages/1_r2_c3.jpg" width="402" height="26" border="0" id="n1_r2_c3" alt="" /></td>
   <td><img src="<%=request.getContextPath()%>/images/htloginimages/spacer.gif" width="1" height="15" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img name="n1_r3_c2" src="<%=request.getContextPath()%>/images/htloginimages/1_r3_c2.jpg" width="107" height="11" border="0" id="n1_r3_c2" alt="" /></td>
   <td><img src="<%=request.getContextPath()%>/images/htloginimages/spacer.gif" width="1" height="11" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><INPUT style="width:101px;height:13px;border:0px" TYPE="password" NAME="loginPassword" onkeypress="javascript:if(window.event.keyCode==13){document.thisform.submit()}"></td>
   <td rowspan="2"><img name="n1_r4_c3" src="<%=request.getContextPath()%>/images/htloginimages/1_r4_c3.jpg" width="12" height="274" border="0" id="n1_r4_c3" alt="" /></td>
   <td><a href="javascript:document.thisform.submit();"><img name="n1_r4_c4" src="<%=request.getContextPath()%>/images/htloginimages/1_r4_c4.jpg" width="37" height="15" border="0" id="n1_r4_c4" alt="" /></a></td>
   <td rowspan="2"><img name="n1_r4_c5" src="<%=request.getContextPath()%>/images/htloginimages/1_r4_c5.jpg" width="353" height="274" border="0" id="n1_r4_c5" alt="" /></td>
   <td><img src="<%=request.getContextPath()%>/images/htloginimages/spacer.gif" width="1" height="15" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img name="n1_r5_c2" src="<%=request.getContextPath()%>/images/htloginimages/1_r5_c2.jpg" width="107" height="259" border="0" id="n1_r5_c2" alt="" /></td>
   <td><img name="n1_r5_c4" src="<%=request.getContextPath()%>/images/htloginimages/1_r5_c4.jpg" width="37" height="259" border="0" id="n1_r5_c4" alt="" /></td>
   <td><img src="<%=request.getContextPath()%>/images/htloginimages/spacer.gif" width="1" height="259" border="0" alt="" /></td>
  </tr>
</table>
</FORM>
</body>
</html>
<SCRIPT LANGUAGE="JavaScript">
<!--
		function load(){
	document.thisform.loginName.focus();
}

function tofocus(itemname){
	var a 
	a=eval("document.thisform."+itemname) 
	a.focus() 
}


//-->
</SCRIPT>