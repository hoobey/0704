<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>�߼������������������˲�</title>
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
  
  <body onload="aa()">
  <form method="post">
  <INPUT TYPE="hidden" NAME="actionType" >
  
 <div style="width:800px;"align="center" >
 

 <div style="width:300px;margin-top:5px;" align="left">
&nbsp;&nbsp;�Ա�&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="radio" NAME="resume_sex" value="��" >��&nbsp;<INPUT TYPE="radio" NAME="resume_sex" value="Ů">Ů&nbsp;<INPUT TYPE="radio" NAME="resume_sex" value="" CHECKED>����
 </div>

 <div style="width:300px;margin-top:15px;"align="left">
��������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <select style="width:120px;"  name="work_year">
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
&nbsp;&nbsp;�������ڵ�
 </div> 
 <div style="margin-top:10px;"align="left">
&nbsp;&nbsp;
<SELECT id="s11" name="account_place1" >
              <option value="0" SELECTED>=ʡ=</option>
            </SELECT>
            &nbsp;ʡ&nbsp; 
            &nbsp;
            <SELECT  id="s22" NAME="account_place2">
              <option value="0" SELECTED>=��=</option>
            </SELECT>
            &nbsp;��
 </div>
  <div style="width:370px;margin-top:10px;argin-left:100px;"align="center">
 <div style="width:100px;margin-top:10px;margin-left:5px;float:left;">
&nbsp;&nbsp;�־�ס��
 </div> 
 <div style="margin-top:10px;"align="left">
&nbsp;&nbsp;&nbsp;<SELECT id="s111" name="now_live_city1" >
              <option value="0" SELECTED>=ʡ=</option>
            </SELECT>
            &nbsp;ʡ&nbsp; 
            &nbsp;
            <SELECT  id="s221" NAME="now_live_city2">
              <option value="0" SELECTED>=��=</option>
            </SELECT>
            &nbsp;��
 </div>
 <div style="width:300px;margin-top:15px;" align="left">
&nbsp;&nbsp;&nbsp;ѧ��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<SELECT size=1 name=educational_level style="width:120px;">
	<OPTION value="0" selected>����</OPTION>
	<OPTION value=��ר>��ר</OPTION>
	<OPTION value=��ר>��ר</OPTION>
	<OPTION  value=����>����</OPTION>
	<OPTION value=�о���>�о���</OPTION>
	<OPTION   value=˶ʿ >˶ʿ</OPTION>
	<OPTION value=��ʿ>��ʿ</OPTION>
	</SELECT>
 </div>
 <div style="width:390px;margin-top:15px;" align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����רҵ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <SELECT NAME="major">
		<OPTION VALUE="0" SELECTED>=��ѡ����Ҫ������רҵ���=</OPTION>
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
 <div style="width:300px;margin-top:15px;" align="left">
&nbsp;��������&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<SELECT size=1 name=hope_job_category>
	<OPTION value="0" selected>=��ѡ��������=</OPTION>
	<OPTION value="ȫְ">ȫְ</OPTION>
	<OPTION value="��ְ" >��ְ</OPTION>
	<OPTION value="">ȫְ��ְ����</OPTION>
	</SELECT>
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
		function aa()
	{
		setup();
		setup1();
	}
	

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



		dsy.add("0",["������ʡ","�Ĵ�ʡ","�ӱ�ʡ","ɽ��ʡ","����ʡ","����ʡ","�㽭ʡ","����ʡ","����ʡ","����ʡ","ɽ��ʡ","����ʡ","����ʡ","�㶫ʡ","����ʡ","����ʡ","����ʡ","����ʡ","����ʡ","�ຣʡ","����ʡ","����ʡ","����ʡ","����ʡ","̨��"]);

			
		dsy.add("0_0",["������","�������",	"��ľ˹","�׸�","����",	"����",	"˫Ѽɽ","����","ĵ����","�ں�","��̨��"]);

		dsy.add("0_1",["�ɶ�","�Թ�","��֦��","����","����","����","�ڽ�","��ɽ"]);
		dsy.add("0_2",["ʯ��ׯ","����","����","��ɽ","�ػʵ�","����","��̨","�żҿ�","�ȷ�"]);

		dsy.add("0_3",["̫ԭ","��ͬ","����","����","����","�˳�","�ٷ�","����"]);


		dsy.add("0_4",["����","����","��ɽ","��˳","��Ϫ","����","Ӫ��","����","����"]);
		dsy.add("0_5",["�Ͼ�","��������","����","����","��ͨ","���Ƹ�"]);
		dsy.add("0_6",["����","����","����","����","����","��ɽ","̨��","��ˮ"]);
		dsy.add("0_7",["�Ϸ�","����","����","����","����","����","��ɽ"]);
		dsy.add("0_8",["����","����","����","����","��ƽ","����","Ȫ��","����"]);
		dsy.add("0_9",["�ϲ�","�Ž�","������","Ƽ��","����","����","�˴�","����"]);
		dsy.add("0_10",["����","�ൺ","�Ͳ�","��̨","����","����","����","�ĳ�"]);
		dsy.add("0_11",["֣��","����","����","����Ͽ","����","����","����","פ���"]);
		dsy.add("0_12",["�人","��ʯ","�˲�","Т��","����","�Ƹ�","����","��ʩ"]);
		dsy.add("0_13",["����","����","��ͷ","÷��","��ɳ��","��β","��ɽ","�麣","��ɽ","��ݸ"]);
		dsy.add("0_14",["����","����","����","��ɽ","����","����","�ٸ�","��ɳ","��ɳ��","�Ĳ�"]);
		dsy.add("0_15",["����","����","��˳","����","����","ͭ��","ǭ��","����ˮ"]);
		dsy.add("0_16",["����","����","���","����","����","��Ϫ","����","�ն�"]);
		dsy.add("0_17",["����","����","�Ӱ�","����","μ��","����","����","ͭ��","����"]);
		dsy.add("0_18",["����","����","ƽ��","����","����","���","��Ҵ","��Ȫ","��ˮ","�䶼","����","����","����"]);
		dsy.add("0_19",["����","����","����","����","����","����","����","����"]);
		dsy.add("0_20",["����","����","�Ӽ�","��ƽ","ͨ��","�׳�","��Դ","��ԭ","��ɽ"]);

		dsy.add("0_21",["����","����","����","����","Ȫ��","����","����","����","��ƽ"]);

		dsy.add("0_22",["�Ϸ�","����","�ߺ�","����","��ɽ","����","����","����","����","����","����"]);

		dsy.add("0_23",["ͭ��","����","����","����","����","��ɳ","��̶","����","����","����","����","����","¦��","����","����","�żҽ�","����","ǭ��","����","����"]);

		dsy.add("0_24",["̨����","����","̨��","̨��","��԰","������","����","��","����","����","̨��","�����" ]);

		var s=["s11","s22"];
		var opt0 = ["=ʡ=","=��="];

		function setup(){
		for(i=0;i<s.length-1;i++)document.getElementById(s[i]).onchange=new Function("change("+(i+1)+")");
		change(0);
		}

		function Dsy1(){
		this.Items = {};
		}
		Dsy1.prototype.add = function(id,iArray){
		this.Items[id] = iArray;
		}
		Dsy1.prototype.Exists = function(id){

		if(typeof(this.Items[id]) == "undefined") return false;
		return true;
		}

		function change1(v){
		var str="0";
		for(i=0;i<v;i++){ str+=("_"+(document.getElementById(s1[i]).selectedIndex-1));};
		
		var ss=document.getElementById(s1[v]);
		with(ss){
		  length = 0;
		  options[0]=new Option(opt1[v],opt1[v]);
		  if(v && document.getElementById(s1[v-1]).selectedIndex>0 || !v)
		  {
		   if(dsy1.Exists(str)){
			ar = dsy1.Items[str];
			for(i=0;i<ar.length;i++)options[length]=new Option(ar[i],ar[i]);
			if(v)options[1].selected = true;
		   }
		  }
		  if(++v<s1.length){change1(v);}
		}
		}

		var dsy1 = new Dsy1();

		dsy1.add("0",["������ʡ","�Ĵ�ʡ","�ӱ�ʡ","ɽ��ʡ","����ʡ","����ʡ","�㽭ʡ","����ʡ","����ʡ","����ʡ","ɽ��ʡ","����ʡ","����ʡ","�㶫ʡ","����ʡ","����ʡ","����ʡ","����ʡ","����ʡ","�ຣʡ","����ʡ","����ʡ","����ʡ","����ʡ","̨��"]);

			
		dsy1.add("0_0",["������","�������",	"��ľ˹","�׸�","����",	"����",	"˫Ѽɽ","����","ĵ����","�ں�","��̨��"]);

		dsy1.add("0_1",["�ɶ�","�Թ�","��֦��","����","����","����","�ڽ�","��ɽ"]);
		dsy1.add("0_2",["ʯ��ׯ","����","����","��ɽ","�ػʵ�","����","��̨","�żҿ�","�ȷ�"]);

		dsy1.add("0_3",["̫ԭ","��ͬ","����","����","����","�˳�","�ٷ�","����"]);


		dsy1.add("0_4",["����","����","��ɽ","��˳","��Ϫ","����","Ӫ��","����","����"]);
		dsy1.add("0_5",["�Ͼ�","��������","����","����","��ͨ","���Ƹ�"]);
		dsy1.add("0_6",["����","����","����","����","����","��ɽ","̨��","��ˮ"]);
		dsy1.add("0_7",["�Ϸ�","����","����","����","����","����","��ɽ"]);
		dsy1.add("0_8",["����","����","����","����","��ƽ","����","Ȫ��","����"]);
		dsy1.add("0_9",["�ϲ�","�Ž�","������","Ƽ��","����","����","�˴�","����"]);
		dsy1.add("0_10",["����","�ൺ","�Ͳ�","��̨","����","����","����","�ĳ�"]);
		dsy1.add("0_11",["֣��","����","����","����Ͽ","����","����","����","פ���"]);
		dsy1.add("0_12",["�人","��ʯ","�˲�","Т��","����","�Ƹ�","����","��ʩ"]);
		dsy1.add("0_13",["����","����","��ͷ","÷��","��ɳ��","��β","��ɽ","�麣","��ɽ","��ݸ"]);
		dsy1.add("0_14",["����","����","����","��ɽ","����","����","�ٸ�","��ɳ","��ɳ��","�Ĳ�"]);
		dsy1.add("0_15",["����","����","��˳","����","����","ͭ��","ǭ��","����ˮ"]);
		dsy1.add("0_16",["����","����","���","����","����","��Ϫ","����","�ն�"]);
		dsy1.add("0_17",["����","����","�Ӱ�","����","μ��","����","����","ͭ��","����"]);
		dsy1.add("0_18",["����","����","ƽ��","����","����","���","��Ҵ","��Ȫ","��ˮ","�䶼","����","����","����"]);
		dsy1.add("0_19",["����","����","����","����","����","����","����","����"]);
		dsy1.add("0_20",["����","����","�Ӽ�","��ƽ","ͨ��","�׳�","��Դ","��ԭ","��ɽ"]);

		dsy1.add("0_21",["����","����","����","����","Ȫ��","����","����","����","��ƽ"]);

		dsy1.add("0_22",["�Ϸ�","����","�ߺ�","����","��ɽ","����","����","����","����","����","����"]);

		dsy1.add("0_23",["ͭ��","����","����","����","����","��ɳ","��̶","����","����","����","����","����","¦��","����","����","�żҽ�","����","ǭ��","����","����"]);

		dsy1.add("0_24",["̨����","����","̨��","̨��","��԰","������","����","��","����","����","̨��","�����"]);


		var s1=["s111","s221"];
		var opt1 = ["=ʡ=","=��="];

		function setup1(){
		for(i=0;i<s1.length-1;i++)document.getElementById(s1[i]).onchange=new Function("change1("+(i+1)+")");
		change1(0);
		}



	
	function sou()
	{	
	document.forms[0].actionType.value="sourencai";
	document.forms[0].action="<%=request.getContextPath()%>/sourencai?";
	document.forms[0].submit();	
	}
//-->
</SCRIPT>