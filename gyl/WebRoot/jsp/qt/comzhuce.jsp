<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>��ҵ��Աע��</title>
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
	<TD class="ttdd" height="30">�û���:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_login_name" onchange="yj(this.value)" ></TD>
	<td><div id="div1"></div></td>
  </TR>
  <tr>
  </tr>
    <tr>
  </tr>
  <TR>
	<TD class="ttdd" height="30">��&nbsp;&nbsp;��:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="password" NAME="com_login_pass" ></TD>
	<TD><div id="div2"></div></TD>
  </TR>
    <tr>
  </tr>
    <tr>
  </tr>
  <TR>
	<TD class="ttdd" height="30">��������������:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="password" NAME="rcom_login_pass" ></TD>
	<TD><div id="div3"></div></TD>
  </TR>
    <tr>
  </tr>
    <tr>
  </tr>
  <TR>
	<TD class="ttdd" height="30">��˾���ƣ�</TD>
	<TD ><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;width:200px;" align="left" TYPE="text" NAME="company_name" ></TD>
	<TD><div id="div4"></div></TD>
    <tr>
  </tr>
    <tr>
  </tr>
    <TR>
 
	<TD class="ttdd" height="30">��˾���ڵأ�</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;ʡ:
	<SELECT NAME="sheng" id="sheng"onchange="jysheng()">
		<OPTION VALUE="0" SELECTED>=ʡ=</option>
	<%
    List shenglist=(List)request.getAttribute("shenglist");
    for(int i=0;i<shenglist.size();i++)
    {
    Map shengmap=(Map)shenglist.get(i);
    
    
     %>
		<OPTION VALUE="<%=shengmap.get("big_address_id") %>"><%=shengmap.get("big_address_name") %></option>
	<%} %>
	</SELECT>

	��:
	<SELECT NAME="shi">
		<OPTION VALUE="0" SELECTED>=��=</OPTION>
		
	</SELECT></TD>
	<TD><div id="div5"></div></TD>
  </TR>
  
    <tr>
  </tr>
  <TR >
	<TD class="ttdd" height="30" >��ϵ��ַ:</TD>
	<TD class="ttdd"  style="width:350px;"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;width:280px;" TYPE="text" NAME="com_contact_address" ></TD>
	<TD><div id="div6"></div></TD>
  </TR>
   <TR>
	<TD class="ttdd" height="30">�ʱ�:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_post_code" ></TD>
	<TD><div id="div7"></div></TD>
	  </TR>
     <TR>
	<TD class="ttdd" height="30">��ϵ�绰:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_contact_telephone"  ></TD>
	<TD><div id="div8"></div></TD>
  </TR>
     <TR>
	<TD class="ttdd" height="30">��Ƹ��ϵ��:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_contact_people"  ></TD>
	<TD><div id="div9"></div></TD>
  </TR>
       <TR>
	<TD class="ttdd" height="30">�������:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_fax"  ></TD>
	<TD><div id="div10"></div></TD>
  </TR>
        <TR>
	<TD class="ttdd" height="30">��ҵ����:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_property"  ></TD>
	<TD><div id="div11"></div></TD>
  </TR>
    <TR>
	<TD class="ttdd" height="30">ע���ʽ�:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_register_money"  >&nbsp;��(�����)</TD>
	<TD><div id="div12"></div></TD>
  </TR>
      <TR>
	<TD class="ttdd" height="30">��ҵ��ģ:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_extent" >&nbsp;����50-100�ˣ�</TD>
	<TD><div id="div13"></div></TD>
  </TR>
        <TR>
	<TD class="ttdd" height="30">��˾��ַ:</TD>
	<TD class="ttdd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_url" ></TD>
	<TD><div id="div14"></div></TD>
  </TR>
          <TR>
	<TD class="ttdd" height="30">�����ʼ�:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;" TYPE="text" NAME="com_email"  ></TD>
	<TD><div id="div15"></div></TD>
  </TR>

            <TR>
	<TD class="ttdd" height="30">������ҵ1:</TD>
	<TD class="ttdd"><span  style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp;<SELECT    onchange=""    name="com_industry1">
          <OPTION value=0 selected>==��ѡ����ҵ��==</OPTION>
          <OPTION value="�����/������/ͨ��/����">�����/������/ͨ��/����</OPTION>
          <OPTION  value="����/�ͷ�/����֧��">����/�ͷ�/����֧��</OPTION>
          <OPTION value="���/����/����/����">���/����/����/����</OPTION>
          <OPTION  value="����/Ӫ��/�ɹ�/����">����/Ӫ��/�ɹ�/����</OPTION>
          <OPTION value="����/��ҩ/ҽ��/����">����/��ҩ/ҽ��/����</OPTION>
          <OPTION value="���/�г�/ý��/����">���/�г�/ý��/����</OPTION>
          <OPTION value="����/���ز�">����/���ز�</OPTION>
          <OPTION  value="����/����/�߼���">����/����/�߼�����</OPTION>
          <OPTION value="��ѯ/����/����/����">��ѯ/����/����/����</OPTION>
          <OPTION value="����ҵ">����ҵ</OPTION>
	  </SELECT></TD>
	<TD><div id="div17"></div></TD>
  </TR>
              <TR>
	<TD class="ttdd" height="30">������ҵ2:</TD>
	<TD class="ttdd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<SELECT    onchange=""    name="com_industry2">
          <OPTION value=0 selected>��ѡ����ҵ��</OPTION>
          <OPTION value="�����/������/ͨ��/����">�����/������/ͨ��/����</OPTION>
          <OPTION  value="����/�ͷ�/����֧��">����/�ͷ�/����֧��</OPTION>
          <OPTION value="���/����/����/����">���/����/����/����</OPTION>
          <OPTION  value="����/Ӫ��/�ɹ�/����">����/Ӫ��/�ɹ�/����</OPTION>
          <OPTION value="����/��ҩ/ҽ��/����">����/��ҩ/ҽ��/����</OPTION>
          <OPTION value="���/�г�/ý��/����">���/�г�/ý��/����</OPTION>
          <OPTION value="����/���ز�">����/���ز�</OPTION>
          <OPTION  value="����/����/�߼���">����/����/�߼�����</OPTION>
          <OPTION value="��ѯ/����/����/����">��ѯ/����/����/����</OPTION>
          <OPTION value="����ҵ">����ҵ</OPTION>
	  </SELECT></TD>
	<TD><div id="div18"></div></TD>
  </TR>
                <TR>
	<TD class="ttdd" height="30">������ҵ3:</TD>
	<TD class="ttdd">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<SELECT    onchange=""    name="com_industry3">
          <OPTION value=0 selected>==��ѡ����ҵ��==</OPTION>
          <OPTION value="�����/������/ͨ��/����">�����/������/ͨ��/����</OPTION>
          <OPTION  value="����/�ͷ�/����֧��">����/�ͷ�/����֧��</OPTION>
          <OPTION value="���/����/����/����">���/����/����/����</OPTION>
          <OPTION  value="����/Ӫ��/�ɹ�/����">����/Ӫ��/�ɹ�/����</OPTION>
          <OPTION value="����/��ҩ/ҽ��/����">����/��ҩ/ҽ��/����</OPTION>
          <OPTION value="���/�г�/ý��/����">���/�г�/ý��/����</OPTION>
          <OPTION value="����/���ز�">����/���ز�</OPTION>
          <OPTION  value="����/����/�߼���">����/����/�߼�����</OPTION>
          <OPTION value="��ѯ/����/����/����">��ѯ/����/����/����</OPTION>
          <OPTION value="����ҵ">����ҵ</OPTION>
	  </SELECT></TD>
	<TD><div id="div19"></div></TD>
  </TR>
                  <TR>
	<TD class="ttdd" height="30">��˾���:</TD>
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
	<TD style="margin-left:0px;float:left;width:100px;"><INPUT class="input_text" TYPE="button" value="��һ��" onclick="tiJiao()"></TD>
	<TD style="margin-left:0px;float:left;width:100px;"><INPUT class="input_text" TYPE="reset" value="����"></TD>
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
	div1.innerHTML="<span style='color:red'>�û�������Ϊ��<span>";
	return;
	}
	else
	{
	div1.innerHTML="";
	}
	if(ChkUtil.isString6_20(com_login_name.value)==false)
	{
	div1.innerHTML="<span style='color:red'>�û���ֻ������6-20����ĸ�����֡��»���<span>";
	return;
	}
	else
	{
	div1.innerHTML="";
	}
	if(com_login_pass.value=="")
	{
	div2.innerHTML="<span style='color:red'>���벻��Ϊ��<span>";
	return;
	}
	else
	{
	div2.innerHTML="";
	}
	if(ChkUtil.isString6_20(com_login_pass.value)==false)
	{
	div2.innerHTML="<span style='color:red'>����ֻ������6-20����ĸ�����֡��»���<span>";
	return;
	}
	else
	{
	div2.innerHTML="";
	}
	if(rcom_login_pass.value!=com_login_pass.value)
	{
	div3.innerHTML="<span style='color:red'>�������������ԭ���벻ͬ<span>";
	return;
	}
	else
	{
	div3.innerHTML="";
	}
	if(company_name.value=="")
	{
	div4.innerHTML="<span style='color:red'>��˾��ҵ�����Ʋ���Ϊ��<span>";
	return;
	}
	else
	{
	div4.innerHTML="";
	}
	if(sheng.value=="0"||shi.value=="0")
	{
	div5.innerHTML="<span style='color:red'>��ַ����Ϊ��<span>";
	return;
	}
	else
	{
	div5.innerHTML="";
	}
	if(com_contact_address.value=="")
	{
	div6.innerHTML="<span style='color:red'>��ϵ��ַ����Ϊ��<span>";
	return;
	}
	else
	{
	div6.innerHTML="";
	}
	if(com_post_code.value=="")
	{
	div7.innerHTML="<span style='color:red'>�������벻��Ϊ��<span>";
	return;
	}
	else
	{
	div7.innerHTML="";
	}	
	if(ChkUtil.isZipCode(com_post_code.value)==false)
	{
	div7.innerHTML="<span style='color:red'>���������ʽ����ȷ<span>";
	return;
	}
	else
	{
	div7.innerHTML="";
	}
	if(com_contact_telephone.value=="")
	{
	div8.innerHTML="<span style='color:red'>��ϵ�绰����Ϊ��<span>";
	return;
	}
	else
	{
	div8.innerHTML="";
	}	
	if(com_contact_people.value=="")
	{
	div9.innerHTML="<span style='color:red'>��Ƹ��ϵ�˲���Ϊ��<span>";
	return;
	}
	else
	{
	div9.innerHTML="";
	}
	if(com_fax.value=="")
	{
	div10.innerHTML="<span style='color:red'>����Ų���Ϊ��<span>";
	return;
	}
	else
	{
	div10.innerHTML="";
	}
	if(com_property.value=="")
	{
	div11.innerHTML="<span style='color:red'>��˾���ʲ���Ϊ��<span>";
	return;
	}
	else
	{
	div11.innerHTML="";
	}
	if(com_register_money.value=="")
	{
	div12.innerHTML="<span style='color:red'>ע���ʽ���Ϊ��<span>";
	return;
	}
	else
	{
	div12.innerHTML="";
	}
		if(ChkUtil.isPlusInteger(com_register_money.value)==false)
	{
	div12.innerHTML="<span style='color:red'>ע���ʽ����Ϊ������<span>";
	return;
	}
	else
	{
	div12.innerHTML="";
	}
	if(com_extent.value=="")
	{
	div13.innerHTML="<span style='color:red'>��ҵ��ģ����Ϊ��<span>";
	return;
	}
	else
	{
	div13.innerHTML="";
	}
	
	if(com_email.value=="")
	{
	div15.innerHTML="<span style='color:red'>��������Ϊ��<span>";
	return;
	}
	else
	{
	div15.innerHTML="";
	}
	if(ChkUtil.isEmail(com_email.value)==false)
	{
	div15.innerHTML="<span style='color:red'>���������ʽ����ȷ<span>";
	return;
	}
	else
	{
	div15.innerHTML="";
	}

	if(com_industry1.value=="0")
	{
	div17.innerHTML="<span style='color:red'>����ѡ��һ����ҵ<span>";
	return;
	}
	else
	{
	div17.innerHTML="";
	}
	if(com_summary.value=="")
	{
	div20.innerHTML="<span style='color:red'>������д��˾���<span>";
	return;
	}
	else
	{
	div20.innerHTML="";
	}
	if(com_summary.value.length<50||com_summary.value.length>4000)
	{
	div20.innerHTML="<span style='color:red'>��д�Ĺ�˾��鳤�ȱ���Ϊ��50��4000���ַ�֮��<span>";
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

	//��ѯ�û������Ƿ����
	function yj(aa) {
		
			//Ҫ��������ĵ�ַ
			if(aa!= "")
			{
				var url="<%=request.getContextPath()%>/comzhuce?actionType=chaming&ming="+aa;
				createXMLHttpRequest();
				XMLHttpReq.open("POST", url, true);
				XMLHttpReq.onreadystatechange = yhName;//�ص�������
				XMLHttpReq.send(null);  // ��������
			}
		
	}

	 function yhName() 
	{
				if (XMLHttpReq.readyState == 4) //readyState��ȡֵ����: 0 (δ��ʼ��) 1 (����װ��) 2 (װ�����) 3 (������) 4 (���) 
					{ // �ж϶���״̬
							if (XMLHttpReq.status == 200) 
								{			
										// ��Ϣ�Ѿ��ɹ����أ���ʼ������Ϣ����ʼ����XML
										 var  cyhName=XMLHttpReq.responseXML.getElementsByTagName("id")[0].firstChild.nodeValue;
												if(cyhName=="0")
												{
													 div1.innerHTML="<span style='color:red'>�û����Ѵ���<span>";
													 a=false;
													 
												}
												else
												{
													  div1.innerHTML="<span style='color:green'>�û�������<span>";
													  a=true;
												}
							 }
							 else 
						        { //ҳ�治����
							    	window.alert("���������ҳ�����쳣��");
						    	 }		
					}
		}
	
	
	function jysheng() {
			var sheng=document.getElementById("sheng").value;
			//Ҫ��������ĵ�ַ
			if(sheng!= "")
			{
				var url="<%=request.getContextPath()%>/comzhuce?actionType=chashi&ming="+sheng;
				createXMLHttpRequest();
				XMLHttpReq.open("POST", url, true);
				XMLHttpReq.onreadystatechange = shi;//�ص�������
				XMLHttpReq.send(null);  // ��������
			}
		
	}
	
	function shi()
	{
		if (XMLHttpReq.readyState == 4) //readyState��ȡֵ����: 0 (δ��ʼ��) 1 (����װ��) 2 (װ�����) 3 (������) 4 (���) 
		{ // �ж϶���״̬
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
