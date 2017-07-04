<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="../../include/header.inc" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>高级搜索————搜索人才</title>
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
&nbsp;&nbsp;性别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT TYPE="radio" NAME="resume_sex" value="男" >男&nbsp;<INPUT TYPE="radio" NAME="resume_sex" value="女">女&nbsp;<INPUT TYPE="radio" NAME="resume_sex" value="" CHECKED>不限
 </div>

 <div style="width:300px;margin-top:15px;"align="left">
工作经验&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <select style="width:120px;"  name="work_year">
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
&nbsp;&nbsp;户口所在地
 </div> 
 <div style="margin-top:10px;"align="left">
&nbsp;&nbsp;
<SELECT id="s11" name="account_place1" >
              <option value="0" SELECTED>=省=</option>
            </SELECT>
            &nbsp;省&nbsp; 
            &nbsp;
            <SELECT  id="s22" NAME="account_place2">
              <option value="0" SELECTED>=市=</option>
            </SELECT>
            &nbsp;市
 </div>
  <div style="width:370px;margin-top:10px;argin-left:100px;"align="center">
 <div style="width:100px;margin-top:10px;margin-left:5px;float:left;">
&nbsp;&nbsp;现居住地
 </div> 
 <div style="margin-top:10px;"align="left">
&nbsp;&nbsp;&nbsp;<SELECT id="s111" name="now_live_city1" >
              <option value="0" SELECTED>=省=</option>
            </SELECT>
            &nbsp;省&nbsp; 
            &nbsp;
            <SELECT  id="s221" NAME="now_live_city2">
              <option value="0" SELECTED>=市=</option>
            </SELECT>
            &nbsp;市
 </div>
 <div style="width:300px;margin-top:15px;" align="left">
&nbsp;&nbsp;&nbsp;学历&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<SELECT size=1 name=educational_level style="width:120px;">
	<OPTION value="0" selected>不限</OPTION>
	<OPTION value=中专>中专</OPTION>
	<OPTION value=大专>大专</OPTION>
	<OPTION  value=本科>本科</OPTION>
	<OPTION value=研究生>研究生</OPTION>
	<OPTION   value=硕士 >硕士</OPTION>
	<OPTION value=博士>博士</OPTION>
	</SELECT>
 </div>
 <div style="width:390px;margin-top:15px;" align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;主修专业&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <SELECT NAME="major">
		<OPTION VALUE="0" SELECTED>=请选择你要搜索的专业类别=</OPTION>
		<OPTION VALUE="管理科学与工程类">管理科学与工程类</OPTION>
		<OPTION VALUE="工商管理类">工商管理类</OPTION>
		<OPTION VALUE="公共管理类">公共管理类</OPTION>
		<OPTION VALUE="图书档案学">图书档案学类</OPTION>
		<OPTION VALUE="电子信息类">电子信息类</OPTION>
		<OPTION VALUE="计算机类">计算机类</OPTION>
		<OPTION VALUE="机械类">机械类</OPTION>
		<OPTION VALUE="仪器仪表类">仪器仪表类</OPTION>
		<OPTION VALUE="能源动力类">能源动力类</OPTION>
		<OPTION VALUE="材料类">材料类</OPTION>
		<OPTION VALUE="轻工纺织食品类">轻工纺织食品类</OPTION>		
		<OPTION VALUE="土建类">土建类</OPTION>
		<OPTION VALUE="环境科学与安全类">环境科学与安全类</OPTION>
		<OPTION VALUE="制药工程类">制药工程类</OPTION>
		<OPTION VALUE="交通运输类">交通运输类</OPTION>
		<OPTION VALUE="航空航天类">航空航天类</OPTION>		
		<OPTION VALUE="水利类">水利类</OPTION>
		<OPTION VALUE="公安技术类">公安技术类</OPTION>
		<OPTION VALUE="数学类">数学类</OPTION>
		<OPTION VALUE="物理学类">物理学类</OPTION>
		<OPTION VALUE="化学类">化学类</OPTION>	
		<OPTION VALUE="生物类">生物类</OPTION>
		<OPTION VALUE="天文地质地理类">天文地质地理类</OPTION>
		<OPTION VALUE="经济学类">经济学类</OPTION>
		<OPTION VALUE="语言学类">语言学类</OPTION>
		<OPTION VALUE="艺术类">艺术类</OPTION>	
		<OPTION VALUE="法学类">法学类</OPTION>
		<OPTION VALUE="哲学类">哲学类</OPTION>
		<OPTION VALUE="教育学类">教育学类</OPTION>
		<OPTION VALUE="医学类">医学类</OPTION>
		<OPTION VALUE="农业类">农业类</OPTION>
		<OPTION VALUE="历史学类">历史学类</OPTION>	
        </SELECT>
 </div>
 <div style="width:300px;margin-top:15px;" align="left">
&nbsp;工作性质&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<SELECT size=1 name=hope_job_category>
	<OPTION value="0" selected>=请选择工作性质=</OPTION>
	<OPTION value="全职">全职</OPTION>
	<OPTION value="兼职" >兼职</OPTION>
	<OPTION value="">全职兼职均可</OPTION>
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



		dsy.add("0",["黑龙江省","四川省","河北省","山西省","辽宁省","江苏省","浙江省","安徽省","福建省","江西省","山东省","河南省","湖北省","广东省","海南省","贵州省","云南省","陕西省","甘肃省","青海省","吉林省","福建省","安徽省","湖南省","台湾"]);

			
		dsy.add("0_0",["哈尔滨","齐齐哈尔",	"佳木斯","鹤岗","大庆",	"鸡西",	"双鸭山","伊春","牡丹江","黑河","七台河"]);

		dsy.add("0_1",["成都","自贡","攀枝花","泸州","德阳","绵阳","内江","乐山"]);
		dsy.add("0_2",["石家庄","晋州","新乐","唐山","秦皇岛","邯郸","邢台","张家口","廊坊"]);

		dsy.add("0_3",["太原","大同","长治","晋城","晋中","运城","临汾","吕梁"]);


		dsy.add("0_4",["沈阳","大连","鞍山","抚顺","本溪","丹东","营口","辽阳","铁岭"]);
		dsy.add("0_5",["南京","无锡徐州","常州","苏州","南通","连云港"]);
		dsy.add("0_6",["杭州","宁波","温州","嘉兴","绍兴","舟山","台州","丽水"]);
		dsy.add("0_7",["合肥","亳州","淮北","宿州","阜阳","六安","马鞍山"]);
		dsy.add("0_8",["福州","厦门","莆田","三明","南平","漳州","泉州","龙岩"]);
		dsy.add("0_9",["南昌","九江","景德镇","萍乡","上饶","吉安","宜春","抚州"]);
		dsy.add("0_10",["济南","青岛","淄博","烟台","日照","威海","临沂","聊城"]);
		dsy.add("0_11",["郑州","开封","洛阳","三门峡","焦作","安阳","南阳","驻马店"]);
		dsy.add("0_12",["武汉","黄石","宜昌","孝感","咸宁","黄冈","随州","恩施"]);
		dsy.add("0_13",["广州","深圳","汕头","梅州","东沙岛","汕尾","中山","珠海","佛山","东莞"]);
		dsy.add("0_14",["海口","三亚","海口","琼山","三亚","东方","临高","西沙","南沙岛","文昌"]);
		dsy.add("0_15",["贵阳","遵义","安顺","都匀","凯里","铜仁","黔西","六盘水"]);
		dsy.add("0_16",["昆明","大理","红河","曲靖","丽江","玉溪","楚雄","普洱"]);
		dsy.add("0_17",["西安","咸阳","延安","榆林","渭南","商洛","宝鸡","铜川","汉中"]);
		dsy.add("0_18",["兰州","定西","平凉","庆阳","武威","金昌","张掖","酒泉","天水","武都","临夏","合作","白银"]);
		dsy.add("0_19",["西宁","海东","黄南","海南","果洛","玉树","海西","海北"]);
		dsy.add("0_20",["长春","吉林","延吉","四平","通化","白城","辽源","松原","白山"]);

		dsy.add("0_21",["福州","厦门","宁德","莆田","泉州","漳州","龙岩","三明","南平"]);

		dsy.add("0_22",["合肥","蚌埠","芜湖","淮南","马鞍山","安庆","宿州","阜阳","亳州","滁州","淮北"]);

		dsy.add("0_23",["铜陵","宣城","六安","巢湖","池州","长沙","湘潭","株洲","衡阳","郴州","常德","益阳","娄底","邵阳","岳阳","张家界","怀化","黔阳","永州","吉首"]);

		dsy.add("0_24",["台北县","高雄","台南","台中","桃园","新竹县","宜兰","马公","嘉义","花莲","台东","彭佳屿" ]);

		var s=["s11","s22"];
		var opt0 = ["=省=","=市="];

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

		dsy1.add("0",["黑龙江省","四川省","河北省","山西省","辽宁省","江苏省","浙江省","安徽省","福建省","江西省","山东省","河南省","湖北省","广东省","海南省","贵州省","云南省","陕西省","甘肃省","青海省","吉林省","福建省","安徽省","湖南省","台湾"]);

			
		dsy1.add("0_0",["哈尔滨","齐齐哈尔",	"佳木斯","鹤岗","大庆",	"鸡西",	"双鸭山","伊春","牡丹江","黑河","七台河"]);

		dsy1.add("0_1",["成都","自贡","攀枝花","泸州","德阳","绵阳","内江","乐山"]);
		dsy1.add("0_2",["石家庄","晋州","新乐","唐山","秦皇岛","邯郸","邢台","张家口","廊坊"]);

		dsy1.add("0_3",["太原","大同","长治","晋城","晋中","运城","临汾","吕梁"]);


		dsy1.add("0_4",["沈阳","大连","鞍山","抚顺","本溪","丹东","营口","辽阳","铁岭"]);
		dsy1.add("0_5",["南京","无锡徐州","常州","苏州","南通","连云港"]);
		dsy1.add("0_6",["杭州","宁波","温州","嘉兴","绍兴","舟山","台州","丽水"]);
		dsy1.add("0_7",["合肥","亳州","淮北","宿州","阜阳","六安","马鞍山"]);
		dsy1.add("0_8",["福州","厦门","莆田","三明","南平","漳州","泉州","龙岩"]);
		dsy1.add("0_9",["南昌","九江","景德镇","萍乡","上饶","吉安","宜春","抚州"]);
		dsy1.add("0_10",["济南","青岛","淄博","烟台","日照","威海","临沂","聊城"]);
		dsy1.add("0_11",["郑州","开封","洛阳","三门峡","焦作","安阳","南阳","驻马店"]);
		dsy1.add("0_12",["武汉","黄石","宜昌","孝感","咸宁","黄冈","随州","恩施"]);
		dsy1.add("0_13",["广州","深圳","汕头","梅州","东沙岛","汕尾","中山","珠海","佛山","东莞"]);
		dsy1.add("0_14",["海口","三亚","海口","琼山","三亚","东方","临高","西沙","南沙岛","文昌"]);
		dsy1.add("0_15",["贵阳","遵义","安顺","都匀","凯里","铜仁","黔西","六盘水"]);
		dsy1.add("0_16",["昆明","大理","红河","曲靖","丽江","玉溪","楚雄","普洱"]);
		dsy1.add("0_17",["西安","咸阳","延安","榆林","渭南","商洛","宝鸡","铜川","汉中"]);
		dsy1.add("0_18",["兰州","定西","平凉","庆阳","武威","金昌","张掖","酒泉","天水","武都","临夏","合作","白银"]);
		dsy1.add("0_19",["西宁","海东","黄南","海南","果洛","玉树","海西","海北"]);
		dsy1.add("0_20",["长春","吉林","延吉","四平","通化","白城","辽源","松原","白山"]);

		dsy1.add("0_21",["福州","厦门","宁德","莆田","泉州","漳州","龙岩","三明","南平"]);

		dsy1.add("0_22",["合肥","蚌埠","芜湖","淮南","马鞍山","安庆","宿州","阜阳","亳州","滁州","淮北"]);

		dsy1.add("0_23",["铜陵","宣城","六安","巢湖","池州","长沙","湘潭","株洲","衡阳","郴州","常德","益阳","娄底","邵阳","岳阳","张家界","怀化","黔阳","永州","吉首"]);

		dsy1.add("0_24",["台北县","高雄","台南","台中","桃园","新竹县","宜兰","马公","嘉义","花莲","台东","彭佳屿"]);


		var s1=["s111","s221"];
		var opt1 = ["=省=","=市="];

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