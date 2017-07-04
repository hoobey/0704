<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>高级搜索————搜索职位</title>
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
职位大类别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<SELECT   size=1 name="want_profession" id="w11">
              <option  value="0" SELECTED>=请选择职位大类别=</option>
            </SELECT>
 </div>
 <div style="width:300px;margin-top:15px;" align="left">
职位小类别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<SELECT   NAME="want_position" id="w22">
              <option value="0" SELECTED>=请选择职位小类别=</option>
            </SELECT>
 </div>
  <div style="width:290px;margin-top:15px;" align="left">
关键词&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <INPUT TYPE="text" NAME="want_keyword" style="width:120px;"style="cursor:hand;background:#ffffff;border:1px #FF9966 dashed;">
 </div>
 <div style="width:300px;margin-top:15px;" align="left">
学历要求&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<SELECT size=1 name=want_degree style="width:120px;">
	<OPTION value="0" selected>不限</OPTION>
	<OPTION value=中专>中专</OPTION>
	<OPTION value=大专>大专</OPTION>
	<OPTION  value=本科>本科</OPTION>
	<OPTION value=研究生>研究生</OPTION>
	<OPTION   value=硕士 >硕士</OPTION>
	<OPTION value=博士>博士</OPTION>
	</SELECT>
 </div>
 <div style="width:300px;margin-top:15px;"align="left">
工作经验&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <select style="width:120px;"  name="want_experience">
      <option value="" selected>不限</option>
      <option   value=1年>1年</option>
      <option value=2年>2年</option>
	  <option value=3年>3年</option>
	  <option value=4年>4年</option>
	   <option value=5年 >5年</option>
	  <option value=5年以上>5年以上</option>
    </select>  
 </div>
 <div style="width:370px;margin-top:10px;argin-left:100px;"align="center">
 <div style="width:100px;margin-top:10px;margin-left:5px;float:left;">
工作城市
 </div> 
 <div style="margin-top:10px;"align="left">
&nbsp;&nbsp;<SELECT  name="big_address_id" onChange="jysheng()">
              <option value="0" SELECTED>=省=</option>
              <%
              List shenglist=(List)request.getAttribute("shenglist");
              for(int i=0;i<shenglist.size();i++)
             { Map shengmap=(Map)shenglist.get(i);
               %>
              <option value="<%=shengmap.get("big_address_id") %>" ><%=shengmap.get("big_address_name") %></option>
              <%} %>
            </SELECT>
            &nbsp;省&nbsp; 
            &nbsp;
            <SELECT   NAME="small_address_id">
              <option value="0" SELECTED>=市=</option>
            </SELECT>
            &nbsp;市
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



		dsy.add("0",["管理科学与工程类" , "工商管理类" ,"公共管理类" , "图书档案学" ,"电子信息类","计算机类" ,"机械类" , "仪器仪表类" ,  "能源动力类", "材料类" ,"轻工纺织食品类" ,"土建类" ,"环境科学与安全类", "制药工程类" , "交通运输类","航空航天类" , "水利类" , "公安技术类" ,"数学类" ,"物理学类","化学类" , "生物类","天文地质地理类" , "经济学类","语言学类" ,"艺术类" ,"法学类","哲学类" ,"教育学类" ,"医学类","农业类","历史学类"]);

			
		dsy.add("0_0",["管理科学","信息管理和信息系统",	"工业工程","工程管理","农业经理管理"]);

		dsy.add("0_1",["工商管理","企业管理","市场营销","会计学","涉外会计","会计电算化","财政金融","财务管理","技术经济","文秘","国际商务","物流管理"]);
		dsy.add("0_2",["行政管理","公共事业管理","旅游管理","宾馆/酒店管理","人力资源管理","","公共关系学","物业管理","房地产经营管理","劳动与社会保障","土地资源管理"]);

		dsy.add("0_3",["图书档案学"]);


		dsy.add("0_4",["电子商务","通信工程","电气工程及其自动化","自动化","电子信息工程","电子科学与技术","微电子学","光信息科学与技术"]);
		dsy.add("0_5",["计算机科学与技术","计算机应用","计算机信息管理","计算机网络"]);
		dsy.add("0_6",["机械设计制造及自动化","材料成型及控制工程","工业设计","过程装备与控制工程","机械电子工程/机电一体化","模具设计与制造","机械制造工艺与设备"]);
		dsy.add("0_7",["测控技术与仪器"]);
		dsy.add("0_8",["热能与动力工程","核工程与核技术","电力系统及自动化","制冷与低温技术"]);
		dsy.add("0_9",["冶金工程","金属材料工程","无机非金属料工程","高分子材料与工程","材料物理","材料化学","材料科学与工程"]);
		dsy.add("0_10",["食品科学与工程","轻化工程","包装工程","印刷工程","纺织工程","服装设计与工程"]);
		dsy.add("0_11",["建筑学","城市规划","园林规划与设计","土木工程","道路与桥梁","建设环境与设备工程","给水排水工程","供热通风与空调工程","工业与民用建筑","室内装潢设计","建筑工程","工程造价管理"]);
		dsy.add("0_12",["环境科学","生态学","环境工程","安全工程"]);
		dsy.add("0_13",["制药工程"]);
		dsy.add("0_14",["交通运输","交通工程","油气储运工程","飞行技术","航海技术","轮机工程","汽车工程"]);
		dsy.add("0_15",["飞行器设计与工程","飞行器动力工程","飞行器制造工程","飞行器环境与生命保障工程"]);
		dsy.add("0_16",["水利水电工程","水文与水资源工程","港口航道与海岸工程"]);
		dsy.add("0_17",["公安技术"]);
		dsy.add("0_18",["数学与应用数学","信息与计算科学"]);
		dsy.add("0_19",["物理学","应用物理学"]);
		dsy.add("0_20",["化学","应用化学","化学工程与工艺","精细化工","化工设备与机械"]);

		dsy.add("0_21",["生物工程","生物医学工程","生物科学技术"]);

		dsy.add("0_22",["天文学","地质学","宝石鉴定与加工","地理科学","地球物理学","大气科学","海洋科学","地矿","石油工程"]);

		dsy.add("0_23",["经济学","国际经济与贸易","财政学","金融学","经济管理","经济信息管理","工业外贸","国际金融","投资经济管理","统计学","审计学"]);

		dsy.add("0_24",["中国语言文学","英语","俄语","德语","法语","日语","西班牙语","何拉伯语","朝鲜语","其它外语","新闻学","广播电视新闻","广告学","编辑出版学","外贸英语","商务英语" ]);





		dsy.add("0_25",["音乐/舞蹈/作曲","绘画/艺术设计","戏剧/表演","导演/广播电视编导","戏剧影视文学","戏剧影视美术设计","摄影/动画","播音/主持/录音","服装设计"]);
		dsy.add("0_26",["法学","社会学","政治学与行政学","国际政治","外交学","思想政治教育","公安学","经济法","国际经济法"]);
		dsy.add("0_27",["哲学/伦理学","逻辑学","宗教学"]);

		dsy.add("0_28",["教育学","学前教育","体育学"]);

		dsy.add("0_29",["基础医学","预防医学","临床医学与医学技术","口腔医学","中医学","法医学","护理学","药学","心理学","医学检验"]);

		dsy.add("0_30",["植物生产","农学","园艺","植物保护学","经济管理","经济信息管理","工业外贸","国际金融","投资经济管理","统计学","审计学"]);

		dsy.add("0_31",["中国语言文学","英语","俄语","德语","茶学","草业科学","森林资源","环境生态","园林","动物生产","动物医学","水产类","农业工程","林业工程"]);

		dsy.add("0_32",["历史学","考古学","博物馆学"]);
		var s=["w11","w22"];
		var opt0 = ["=请选择职位大类别=","=请选择职位小类别="];

		function setup(){
		for(i=0;i<s.length-1;i++)document.getElementById(s[i]).onchange=new Function("change("+(i+1)+")");
		change(0);
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
		function jysheng() {
			var big_address_id=document.getElementById("big_address_id").value;
			//要发送请求的地址
			if(big_address_id!= "")
			{
				var url="<%=request.getContextPath()%>/comzhaopinxinxi?actionType=chashi&big_address_id="+big_address_id;
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