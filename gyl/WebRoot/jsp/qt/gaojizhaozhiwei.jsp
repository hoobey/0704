<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>�߼�����������������ְλ</title>
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
  
  <body onload="setup()">
  <form method="post">
  <INPUT TYPE="hidden" NAME="actionType" value="">
  
 <div style="width:800px;">
 
<div style="width:300px;margin:0px;margin-top:5px;" align="left">
ְλ�����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<SELECT   size=1 name="want_profession" id="w11">
              <option  value="0" SELECTED>=��ѡ��ְλ�����=</option>
            </SELECT>
 </div>
 <div style="width:300px;margin-top:15px;" align="left">
ְλС���&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<SELECT   NAME="want_position" id="w22">
              <option value="0" SELECTED>=��ѡ��ְλС���=</option>
            </SELECT>
 </div>
  <div style="width:290px;margin-top:15px;" align="left">
�ؼ���&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <INPUT TYPE="text" NAME="want_keyword" style="width:120px;"style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;">
 </div>
 <div style="width:300px;margin-top:15px;" align="left">
ѧ��Ҫ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<SELECT size=1 name=want_degree style="width:120px;">
	<OPTION value="0" selected>����</OPTION>
	<OPTION value=��ר>��ר</OPTION>
	<OPTION value=��ר>��ר</OPTION>
	<OPTION  value=����>����</OPTION>
	<OPTION value=�о���>�о���</OPTION>
	<OPTION   value=˶ʿ >˶ʿ</OPTION>
	<OPTION value=��ʿ>��ʿ</OPTION>
	</SELECT>
 </div>
 <div style="width:300px;margin-top:15px;"align="left">
��������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <select style="width:120px;"  name="want_experience">
      <option value="" selected>����</option>
      <option   value=1��>1��</option>
      <option value=2��>2��</option>
	  <option value=3��>3��</option>
	  <option value=4��>4��</option>
	   <option value=5�� >5��</option>
	  <option value=5������>5������</option>
    </select>  
 </div>
 <div style="width:370px;margin-top:10px;argin-left:100px;"align="center">
 <div style="width:100px;margin-top:10px;margin-left:5px;float:left;">
��������
 </div> 
 <div style="margin-top:10px;"align="left">
&nbsp;&nbsp;<SELECT  name="big_address_id" onChange="jysheng()">
              <option value="0" SELECTED>=ʡ=</option>
              <%
              List shenglist=(List)request.getAttribute("shenglist");
              for(int i=0;i<shenglist.size();i++)
             { Map shengmap=(Map)shenglist.get(i);
               %>
              <option value="<%=shengmap.get("big_address_id") %>" ><%=shengmap.get("big_address_name") %></option>
              <%} %>
            </SELECT>
            &nbsp;ʡ&nbsp; 
            &nbsp;
            <SELECT   NAME="small_address_id">
              <option value="0" SELECTED>=��=</option>
            </SELECT>
            &nbsp;��
 </div>
 <br>
 <br>
  <div style="width:340px;margin-top:10px;" >
  &nbsp;&nbsp;&nbsp;&nbsp;<img src="<%=request.getContextPath() %>/images/search_botton.gif"  ONCLICK="sou()" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <img src="<%=request.getContextPath() %>/images/houtui_botton.gif" ONCLICK="javascript:history.back(1)">
</div> 
 </div>
 
</div>
  </form>
  <%@include file="wei.jsp"%>	
  </body>
</html>
<SCRIPT LANGUAGE="JavaScript">
<!--


		function Dsy(){
		this.Items = {};
		}
		Dsy.prototype.add = function(id,iArray){
		this.Items[id] = iArray;
		}
		Dsy.prototype.Exists = function(id){
		if(typeof(this.Items[id]) == "undefined") return false;
		return true;
		}

		function change(v){
		var str="0";
		for(i=0;i<v;i++){ str+=("_"+(document.getElementById(s[i]).selectedIndex-1));};
		var ss=document.getElementById(s[v]);
		with(ss){
		  length = 0;
		  options[0]=new Option(opt0[v],opt0[v]);
		  if(v && document.getElementById(s[v-1]).selectedIndex>0 || !v)
		  {
		   if(dsy.Exists(str)){
			ar = dsy.Items[str];
			for(i=0;i<ar.length;i++)options[length]=new Option(ar[i],ar[i]);
			if(v)options[1].selected = true;
		   }
		  }
		  if(++v<s.length){change(v);}
		}
		}

		var dsy = new Dsy();



		dsy.add("0",["�����ѧ�빤����" , "���̹�����" ,"����������" , "ͼ�鵵��ѧ" ,"������Ϣ��","�������" ,"��е��" , "�����Ǳ���" ,  "��Դ������", "������" ,"�Ṥ��֯ʳƷ��" ,"������" ,"������ѧ�밲ȫ��", "��ҩ������" , "��ͨ������","���պ�����" , "ˮ����" , "����������" ,"��ѧ��" ,"����ѧ��","��ѧ��" , "������","���ĵ��ʵ�����" , "����ѧ��","����ѧ��" ,"������" ,"��ѧ��","��ѧ��" ,"����ѧ��" ,"ҽѧ��","ũҵ��","��ʷѧ��"]);

			
		dsy.add("0_0",["�����ѧ","��Ϣ�������Ϣϵͳ",	"��ҵ����","���̹���","ũҵ�������"]);

		dsy.add("0_1",["���̹���","��ҵ����","�г�Ӫ��","���ѧ","������","��Ƶ��㻯","��������","�������","��������","����","��������","��������"]);
		dsy.add("0_2",["��������","������ҵ����","���ι���","����/�Ƶ����","������Դ����","","������ϵѧ","��ҵ����","���ز���Ӫ����","�Ͷ�����ᱣ��","������Դ����"]);

		dsy.add("0_3",["ͼ�鵵��ѧ"]);


		dsy.add("0_4",["��������","ͨ�Ź���","�������̼����Զ���","�Զ���","������Ϣ����","���ӿ�ѧ�뼼��","΢����ѧ","����Ϣ��ѧ�뼼��"]);
		dsy.add("0_5",["�������ѧ�뼼��","�����Ӧ��","�������Ϣ����","���������"]);
		dsy.add("0_6",["��е������켰�Զ���","���ϳ��ͼ����ƹ���","��ҵ���","����װ������ƹ���","��е���ӹ���/����һ�廯","ģ�����������","��е���칤�����豸"]);
		dsy.add("0_7",["��ؼ���������"]);
		dsy.add("0_8",["�����붯������","�˹�����˼���","����ϵͳ���Զ���","��������¼���"]);
		dsy.add("0_9",["ұ�𹤳�","�������Ϲ���","�޻��ǽ����Ϲ���","�߷��Ӳ����빤��","��������","���ϻ�ѧ","���Ͽ�ѧ�빤��"]);
		dsy.add("0_10",["ʳƷ��ѧ�빤��","�ữ����","��װ����","ӡˢ����","��֯����","��װ����빤��"]);
		dsy.add("0_11",["����ѧ","���й滮","԰�ֹ滮�����","��ľ����","��·������","���軷�����豸����","��ˮ��ˮ����","����ͨ����յ�����","��ҵ�����ý���","����װ�����","��������","������۹���"]);
		dsy.add("0_12",["������ѧ","��̬ѧ","��������","��ȫ����"]);
		dsy.add("0_13",["��ҩ����"]);
		dsy.add("0_14",["��ͨ����","��ͨ����","�������˹���","���м���","��������","�ֻ�����","��������"]);
		dsy.add("0_15",["����������빤��","��������������","���������칤��","�������������������Ϲ���"]);
		dsy.add("0_16",["ˮ��ˮ�繤��","ˮ����ˮ��Դ����","�ۿں����뺣������"]);
		dsy.add("0_17",["��������"]);
		dsy.add("0_18",["��ѧ��Ӧ����ѧ","��Ϣ������ѧ"]);
		dsy.add("0_19",["����ѧ","Ӧ������ѧ"]);
		dsy.add("0_20",["��ѧ","Ӧ�û�ѧ","��ѧ�����빤��","��ϸ����","�����豸���е"]);

		dsy.add("0_21",["���﹤��","����ҽѧ����","�����ѧ����"]);

		dsy.add("0_22",["����ѧ","����ѧ","��ʯ������ӹ�","�����ѧ","��������ѧ","������ѧ","�����ѧ","�ؿ�","ʯ�͹���"]);

		dsy.add("0_23",["����ѧ","���ʾ�����ó��","����ѧ","����ѧ","���ù���","������Ϣ����","��ҵ��ó","���ʽ���","Ͷ�ʾ��ù���","ͳ��ѧ","���ѧ"]);

		dsy.add("0_24",["�й�������ѧ","Ӣ��","����","����","����","����","��������","��������","������","��������","����ѧ","�㲥��������","���ѧ","�༭����ѧ","��óӢ��","����Ӣ��" ]);





		dsy.add("0_25",["����/�赸/����","�滭/�������","Ϸ��/����","����/�㲥���ӱർ","Ϸ��Ӱ����ѧ","Ϸ��Ӱ���������","��Ӱ/����","����/����/¼��","��װ���"]);
		dsy.add("0_26",["��ѧ","���ѧ","����ѧ������ѧ","��������","�⽻ѧ","˼�����ν���","����ѧ","���÷�","���ʾ��÷�"]);
		dsy.add("0_27",["��ѧ/����ѧ","�߼�ѧ","�ڽ�ѧ"]);

		dsy.add("0_28",["����ѧ","ѧǰ����","����ѧ"]);

		dsy.add("0_29",["����ҽѧ","Ԥ��ҽѧ","�ٴ�ҽѧ��ҽѧ����","��ǻҽѧ","��ҽѧ","��ҽѧ","����ѧ","ҩѧ","����ѧ","ҽѧ����"]);

		dsy.add("0_30",["ֲ������","ũѧ","԰��","ֲ�ﱣ��ѧ","���ù���","������Ϣ����","��ҵ��ó","���ʽ���","Ͷ�ʾ��ù���","ͳ��ѧ","���ѧ"]);

		dsy.add("0_31",["�й�������ѧ","Ӣ��","����","����","��ѧ","��ҵ��ѧ","ɭ����Դ","������̬","԰��","��������","����ҽѧ","ˮ����","ũҵ����","��ҵ����"]);

		dsy.add("0_32",["��ʷѧ","����ѧ","�����ѧ"]);
		var s=["w11","w22"];
		var opt0 = ["=��ѡ��ְλ�����=","=��ѡ��ְλС���="];

		function setup(){
		for(i=0;i<s.length-1;i++)document.getElementById(s[i]).onchange=new Function("change("+(i+1)+")");
		change(0);
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
		function jysheng() {
			var big_address_id=document.getElementById("big_address_id").value;
			//Ҫ��������ĵ�ַ
			if(big_address_id!= "")
			{
				var url="<%=request.getContextPath()%>/comzhaopinxinxi?actionType=chashi&big_address_id="+big_address_id;
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
				var shia=document.getElementById('small_address_id');
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
	
	
	function sou()
	{	
	document.forms[0].actionType.value="query";
	document.forms[0].action="<%=request.getContextPath()%>/souzhiwei?";
	document.forms[0].submit();	
	}
//-->
</SCRIPT>