<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>���˻�Աע��</title>
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
	<TD class="ttdd" height="30">�û���:</TD>
	<TD class="ttdd"><INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="yh_name" onblur="panduang('yh','div1',this)" id="yhm"></TD>
	<TD ><img id="yhmc1" src="<%=request.getContextPath()%>/images/kong.gif"></TD>
	<td><div id="div1"></div></td>
  </TR>
  <tr>
  </tr>
    <tr>
  </tr>
  <TR>
	<TD class="ttdd" height="30">��&nbsp;&nbsp;��:</TD>
	<TD class="ttdd"><INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="password" NAME="password" id="password"onblur="panduang('mm','div2',this)"></TD>
	<TD ><img id="yhmc2" src="<%=request.getContextPath()%>/images/kong.gif"></TD>
	<TD><div id="div2"></div></TD>
  </TR>
    <tr>
  </tr>
    <tr>
  </tr>
  <TR>
	<TD class="ttdd" height="30">��������������:</TD>
	<TD class="ttdd"><INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="password" NAME="rpassword" id="rpassword" onblur="panduang('rmm','div3',this)"></TD>
	<TD ><img id="yhmc3" src="<%=request.getContextPath()%>/images/kong.gif"></TD>
	<TD><div id="div3"></div></TD>
  </TR>
    <tr>
  </tr>
    <tr>
  </tr>
  <TR>
	<TD class="ttdd" height="30">��ʾ���⣺</TD>
	<TD class="ttdd"><SELECT NAME="problem" id="problem" onblur="panduang('wt','div6',this)">
	<OPTION VALUE="0" SELECTED>��ѡ����ʾ��Ϣ</option>
	<OPTION VALUE="��ĸ�׵�����">��ĸ�׵�����</option>
	<OPTION VALUE="�㸸�׵�����">�㸸�׵�����</option>
	<OPTION VALUE="�������">�������</option>
	<OPTION VALUE="��ϲ�����˵�����">��ϲ�����˵�����</option>
	<OPTION VALUE="����ʦ������">����ʦ������</option>
  </SELECT></TD>
	<TD ><img id="yhmc6" src="<%=request.getContextPath()%>/images/kong.gif"></TD>
	<TD><div id="div6"></div></TD>
  </TR>
    <tr>
  </tr>
    <tr>
  </tr>
    <TR>
	<TD class="ttdd" height="30">��ʾ����𰸣�</TD>
	<TD class="ttdd"><INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="answer" id="answer" onblur="panduang('da','div4',this)"></TD>
	<TD ><img id="yhmc4" src="<%=request.getContextPath()%>/images/kong.gif"></TD>
	<TD><div id="div4"></div></TD>
  </TR>
    <tr>
  </tr>
  <TR>
	<TD class="ttdd" height="30">�����ʼ�:</TD>
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
	//����XMLHttpRequest���� 
    function createXMLHttpRequest() {
		//���ݲ�ͬ�������ʵ��AJAX����
		if(window.XMLHttpRequest) { //Mozilla �����
			XMLHttpReq = new XMLHttpRequest();
		}
		else if (window.ActiveXObject) { // IE�����
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
	//�Ƿ�����ύ,Ϊ�����ý����¼��ˣ���Ҫ�ж�һ�£�����
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
							alert("��������밴��ʾ����");
						}else{
							if(yn==false)
							{
							alert("�û����ظ�")
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
		if (XMLHttpReq.readyState == 4) //readyState��ȡֵ����: 0 (δ��ʼ��) 1 (����װ��) 2 (װ�����) 3 (������) 4 (���) 
		{ // �ж϶���״̬
				if (XMLHttpReq.status == 200) 
					{			
							// ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ����ʼ����XML
							 var  cyhName=XMLHttpReq.responseXML.getElementsByTagName("id")[0].firstChild.nodeValue;
							 var div1=hq("div1");
							 var yhmc1=document.getElementById("yhmc1");	
									if(cyhName=="0")
									{
										
										 yhmc1.src="<%=request.getContextPath()%>/images/cha.gif"
										
    									 div1.innerHTML="���û��Ѵ���";
    									 yn= false;
									}
									else
									{
										
										div1.innerHTML="<span style='color:#66FF00'>�û���������ȷ<span>";
										yhmc1.src="<%=request.getContextPath()%>/images/duihao.gif"	
												
										yn= true;
									}
				 }
				 else 
		        { //ҳ�治����
			    	window.alert("���������ҳ�����쳣��");
			    	yn=false;
		    	 }		
		}
	}


// ��������Ƿ���ȷ
	function panduang(lx,d,obj)
	{
		var div1=hq(d);
		if(lx=="yh")
		{
			var yhmc1=document.getElementById("yhmc1");			
			if(ChkUtil.isNull(obj.value)==true)
			{
				yhmc1.src="<%=request.getContextPath()%>/images/cha.gif";			
				div1.innerHTML="<span style='color:red'>�û���Ϊ��<span>";
				return false;
			}
			if(ChkUtil.isString6_20(obj.value)==false)
			{
				yhmc1.src="<%=request.getContextPath()%>/images/cha.gif";
				div1.innerHTML="<span style='color:red'>ֻ������6-20����ĸ�����֡��»���<span>";
				return false;
			}else{
				var url="<%=request.getContextPath()%>/gerenregist?actionType=cha&yh_name="+obj.value;
				createXMLHttpRequest();
				XMLHttpReq.open("POST", url, true);
				XMLHttpReq.onreadystatechange = yhName_qingkuang;//�ص�������
				XMLHttpReq.send(null);
			}


	
		}
		if(lx=="mm")
		{
			var yhmc2=document.getElementById("yhmc2");	
			if(ChkUtil.isNull(obj.value)==true)
			{
					yhmc2.src="<%=request.getContextPath()%>/images/cha.gif";					
					div1.innerHTML="<span style='color:red'>���벻��Ϊ��<span>";
					return false;
			}
			if(obj.value.length<6 || obj.value.length>12)
			{
				div1.innerHTML="<span style='color:red'>�����������6-12λ<span>";
				return false;
			}	
			div1.innerHTML="<span style='color:#66FF00'>����������ȷ<span>";
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
				div1.innerHTML="<span style='color:red'>��������Ϊ��<span>";
				return false;
			}		
			if(obj.value!=password.value)
			{
				yhmc3.src="<%=request.getContextPath()%>/images/cha.gif";					
				div1.innerHTML="<span style='color:red'>������������������ͬ<span>";
				return false;
			}
			yhmc3.src="<%=request.getContextPath()%>/images/duihao.gif"	
			div1.innerHTML="<span style='color:#66FF00'>ȷ������������ȷ<span>";
			return true;
		}
		if(lx=="da")
		{
			var yhmc4=document.getElementById("yhmc4");					
			if(ChkUtil.isNull(obj.value)==true)
			{
				yhmc4.src="<%=request.getContextPath()%>/images/cha.gif";					
				div1.innerHTML="<span style='color:red'>�𰸲�Ϊ��<span>";
				return false;
			}
			yhmc4.src="<%=request.getContextPath()%>/images/duihao.gif"	
			div1.innerHTML="<span style='color:#66FF00'>��������ȷ<span>";
			return true;
		}
		if(lx=="email")
		{
			var yhmc5=document.getElementById("yhmc5");					
			if(ChkUtil.isNull(obj.value)==true)
			{
				yhmc5.src="<%=request.getContextPath()%>/images/cha.gif";					
				div1.innerHTML="<span style='color:red'>���䲻Ϊ��<span>";
				return false;
			}
			if(ChkUtil.isEmail(obj.value)==false)
			{
				yhmc5.src="<%=request.getContextPath()%>/images/cha.gif";					
				div1.innerHTML="<span style='color:red'>�����ʽ����ȷ<span>";
				return false;
			}
			yhmc5.src="<%=request.getContextPath()%>/images/duihao.gif"	;
			div1.innerHTML="<span style='color:#66FF00'>����������ȷ<span>";
			return true;
		}
		if(lx=="wt")
		{
			var yhmc6=document.getElementById("yhmc6");					
			if(hq('problem').value==0)
			{
				yhmc6.src="<%=request.getContextPath()%>/images/cha.gif";					
				div1.innerHTML="<span style='color:red'>��ѡ����ʾ����<span>";
				return false;
			}
			
			yhmc6.src="<%=request.getContextPath()%>/images/duihao.gif"	;
			div1.innerHTML="<span style='color:#66FF00'>������ȷ<span>";
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