<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<HTML><HEAD><TITLE>个人简历更新</TITLE>
<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<SCRIPT src="<%=request.getContextPath() %>/js/chkUtil.js" type=text/javascript></SCRIPT>
<SCRIPT src="<%=request.getContextPath() %>/js/common.js" type=text/javascript></SCRIPT>
</HEAD>
<BODY  onload="zhisheng()">
<%
		List gerenlist=(List)request.getAttribute("gerenlist");
			Map gerenmap=(Map)gerenlist.get(0);	
			String id=(String)gerenmap.get("user_info_id");	
			System.out.println("======="+id);
		%>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdtit height=30><B>修改个人简历--求职意向</B></TD></TR></TABLE>
   <FORM name=thisform action="" method=post >
  <INPUT type=hidden name=actionType> 
  <INPUT   type=hidden  name=id value="<%=id %>"> 
<TABLE class=tableBorder style="WIDTH: 100%" cellSpacing=0 borderColorDark=#ffffff cellPadding=0 width="96%" borderColorLight=#dddddd 
border=1>

  <TR>
    <TD class=tdtop colSpan=2 height=23><STRONG>求职意向</STRONG></TD></TR>
  <TR>
    <TD class=tdileft width=140 height=38>
	<SPAN  class=atten>*</SPAN>&nbsp;期望工作性质:</TD>
    <TD class=tdiright height=38>
         <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
           <TR>
            <TD class=tdtsin>&nbsp;
	<SELECT size=1 name=qwgzlx>
	<OPTION value="0" <%=(gerenmap.get("hope_job_category").equals("0"))?"selected":""%>>=请选择工作性质=</OPTION>
	<OPTION value="全职" <%=(gerenmap.get("hope_job_category").equals("全职"))?"selected":""%>>全职</OPTION>
	<OPTION value="兼职" <%=(gerenmap.get("hope_job_category").equals("兼职"))?"selected":""%>>兼职</OPTION>
	<OPTION value="全职兼职均可" <%=(gerenmap.get("hope_job_category").equals("全职兼职均可"))?"selected":""%>>全职兼职均可</OPTION>
	</SELECT></TD>
		<td><div id="div1"></div>
			</TD>
			</tr>
	</table></TR>
  <TR>
    <TD class=tdileft height=38><SPAN 
    class=atten>*</SPAN>&nbsp;目前状况:</TD>
    <TD class=tdiright height=38>
    		    <table  cellSpacing=0 cellPadding=0 width="100%"  border=0>
		       <TR>
			     <TD class=tdtsin>  &nbsp; 
    <INPUT style="WIDTH: 158px; HEIGHT: 21px" name="mqzk" value="<%=(String)gerenmap.get("now_status") %>">例：（在读或待业）</TD>
    <td><div id="div2"></div></TD>
			
			   	</TR>
		</table>
  </TR>
  <TR>
    <TD class=tdileft height=38><SPAN 
    class=atten>*</SPAN>&nbsp;现从事行业:</TD>
    <TD class=tdiright height=38>
          <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
           <TR>
            <TD class=tdtsin>&nbsp; <SELECT    onchange=""   size=1 name="xhy">
          <OPTION value=0 <%=(gerenmap.get("now_industry").equals("0"))?"selected":""%>>==请选择行业类==</OPTION>
          <OPTION value="计算机/互联网/通信/电子" <%=(gerenmap.get("now_industry").equals("计算机/互联网/通信/电子"))?"selected":""%>>计算机/互联网/通信/电子</OPTION>
          <OPTION  value="销售/客服/技术支持" <%=(gerenmap.get("now_industry").equals("销售/客服/技术支持"))?"selected":""%>>销售/客服/技术支持</OPTION>
          <OPTION value="会计/金融/银行/保险" <%=(gerenmap.get("now_industry").equals("会计/金融/银行/保险"))?"selected":""%>>会计/金融/银行/保险</OPTION>
          <OPTION  value="生产/营运/采购/物流" <%=(gerenmap.get("now_industry").equals("生产/营运/采购/物流"))?"selected":""%>>生产/营运/采购/物流</OPTION>
          <OPTION value="生物/制药/医疗/护理" <%=(gerenmap.get("now_industry").equals("生物/制药/医疗/护理"))?"selected":""%>>生物/制药/医疗/护理</OPTION>
          <OPTION value="广告/市场/媒体/艺术" <%=(gerenmap.get("now_industry").equals("广告/市场/媒体/艺术"))?"selected":""%>>广告/市场/媒体/艺术</OPTION>
          <OPTION value="建筑/房地产" <%=(gerenmap.get("now_industry").equals("建筑/房地产"))?"selected":""%>>建筑/房地产</OPTION>
          <OPTION  value="人事/行政/高级管" <%=(gerenmap.get("now_industry").equals("人事/行政/高级管"))?"selected":""%>>人事/行政/高级管理</OPTION>
          <OPTION value="咨询/法律/教育/科研" <%=(gerenmap.get("now_industry").equals("咨询/法律/教育/科研"))?"selected":""%>>咨询/法律/教育/科研</OPTION>
          <OPTION value="服务业" <%=(gerenmap.get("now_industry").equals("服务业"))?"selected":""%>>服务业</OPTION>
	  </SELECT></TD>
	  	<td><div id="div3"></div>
			</TD>
			</tr></table>
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
	<SPAN class=atten>*</SPAN>&nbsp;现职业/现职位:</TD>
    <TD class=tdiright height=38>
              <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
           <TR>
            <TD class=tdtsin>    &nbsp;
	<SELECT  onchange=""  size=1 name="xzy" id="s111">
	<option value="0">=请选择现从事职业=</option>
		</SELECT>
      <SELECT size=1 name=xzw id="s221">
        <OPTION  value=0 selected>==请选择职位类==</OPTION>
      </SELECT>      </TD>
         	<td><div id="div4"></div>
			</TD>
			</tr></table>
      </TR>
  <TR>
    <TD class=tdileft height=38>
	<SPAN class=atten>*</SPAN>&nbsp;希望从事行业:</TD>
    <TD class=tdiright height=38>
        <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin>  &nbsp;
        <SELECT    onchange=""   size=1 name=xwhy>
          <OPTION value=0 <%=(gerenmap.get("hope_industry").equals("0"))?"selected":""%>>==请选择行业类==</OPTION>
          <OPTION value="计算机/互联网/通信/电子" <%=(gerenmap.get("hope_industry").equals("计算机/互联网/通信/电子"))?"selected":""%>>计算机/互联网/通信/电子</OPTION>
          <OPTION  value="销售/客服/技术支持" <%=(gerenmap.get("hope_industry").equals("销售/客服/技术支持"))?"selected":""%>>销售/客服/技术支持</OPTION>
          <OPTION value="会计/金融/银行/保险" <%=(gerenmap.get("hope_industry").equals("会计/金融/银行/保险"))?"selected":""%>>会计/金融/银行/保险</OPTION>
          <OPTION  value="生产/营运/采购/物流" <%=(gerenmap.get("hope_industry").equals("生产/营运/采购/物流"))?"selected":""%>>生产/营运/采购/物流</OPTION>
          <OPTION value="生物/制药/医疗/护理" <%=(gerenmap.get("hope_industry").equals("生物/制药/医疗/护理"))?"selected":""%>>生物/制药/医疗/护理</OPTION>
          <OPTION value="广告/市场/媒体/艺术" <%=(gerenmap.get("hope_industry").equals("广告/市场/媒体/艺术"))?"selected":""%>>广告/市场/媒体/艺术</OPTION>
          <OPTION value="建筑/房地产" <%=(gerenmap.get("hope_industry").equals("建筑/房地产"))?"selected":""%>>建筑/房地产</OPTION>
          <OPTION  value="人事/行政/高级管" <%=(gerenmap.get("hope_industry").equals("人事/行政/高级管"))?"selected":""%>>人事/行政/高级管理</OPTION>
          <OPTION value="咨询/法律/教育/科研" <%=(gerenmap.get("hope_industry").equals("咨询/法律/教育/科研"))?"selected":""%>>咨询/法律/教育/科研</OPTION>
          <OPTION value="服务业" <%=(gerenmap.get("hope_industry").equals("服务业"))?"selected":""%>>服务业</OPTION>
        </SELECT></TD>
           <td><div id="div5"></div>
			</TD>
			</tr></table>
  </TR>
  <TR>
    <TD class=tdileft height=38><SPAN 
      class=atten>*</SPAN>希望职业/职位:</TD>
    <TD class=tdiright height=38>
            <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin>  &nbsp;
	<SELECT  onchange=""  size=1 name="xwzy" id="s112">
	<option value="0">=请选择希望职业=</option>
      </SELECT>
        <SELECT size=1 name=xwzw id="s222">
          <OPTION 
        value=0 selected>==请选择职位类==</OPTION>
        </SELECT>    </TD>
        		   <td><div id="div6"></div>
			</TD>
			</tr></table>
  </TR>
  
  <TR>
    <TD class=tdileft width=140 height=70>
	<SPAN  class=atten>*</SPAN>&nbsp;希望工作地区:</TD>
    <TD class=tdiright height=38>
               <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> &nbsp;  
<SELECT  id="s11" size=1 name="sheng">
	<option value="0">=省=</option>
	</SELECT>&nbsp;省&nbsp; 
  &nbsp; <SELECT id="s22"  NAME="shi">
	<option value="0">=市=</option>
  </SELECT></TD>
  		   <td><div id="div7"></div>
			</TD>
			</tr></table>
  </TR>
  <TR>
    <TD class=tdileft width=140 height=37><SPAN 
    class=atten>*</SPAN>&nbsp;工资待遇:</TD>
    <TD class=tdiright1 height=37>
        <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> &nbsp; 
	<SELECT size=1 name=gz >
		<OPTION  value=面议 <%=(gerenmap.get("hope_money").equals("面议"))?"selected":""%>>面议</OPTION>
		<OPTION value=800-1000 <%=(gerenmap.get("hope_money").equals("800-1000"))?"selected":""%>>800-1000</OPTION>
		<OPTION  value=1000-2000 <%=(gerenmap.get("hope_money").equals("1000-2000"))?"selected":""%>>1000-2000</OPTION>
		<OPTION  value=2000-3000 <%=(gerenmap.get("hope_money").equals("2000-3000"))?"selected":""%>>2000-3000</OPTION>
		<OPTION  value=3000-4000 <%=(gerenmap.get("hope_money").equals("3000-4000"))?"selected":""%>>3000-4000</OPTION>
		<OPTION value=4000-5000 <%=(gerenmap.get("hope_money").equals("4000-5000"))?"selected":""%>>4000-5000</OPTION>
		<OPTION  value=5000-8000 <%=(gerenmap.get("hope_money").equals("5000-8000"))?"selected":""%>>5000-8000</OPTION>
		<OPTION  value=8000以上 <%=(gerenmap.get("hope_money").equals("8000以上"))?"selected":""%>>8000以上</OPTION>
		</SELECT>元/月&nbsp; </TD>
		   		   <td><div id="div8"></div>
			</TD>
			</tr></table>
		</TR>
  <TR>
    <TD class=tdileft width=140 height=50>　</TD>
    <TD class=tdiright height=45><INPUT class=login_btn1 style="WIDTH: 180px" type=button value=保存简历  onclick="tiJiao()"></TD></TR></TABLE>
    </FORM>

</BODY></HTML>
 <SCRIPT LANGUAGE="JavaScript">
  <!--
    
  function zhisheng()
	{
		setup();
		setup1();
		setup2();

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

			
		dsy.add("0_0",["哈尔滨","齐齐哈尔","佳木斯","鹤岗","大庆","鸡西","双鸭山","伊春","牡丹江","黑河","七台河"]);

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
			var x=0
			for(var c=0;c<dsy.Items["0"].length;c++)
			{
				if(dsy.Items["0"][c]=='<%=gerenmap.get("hope_address1")%>')
				{
					x=c+1;	
				}
				
			}
			
			document.getElementById("s11").options[x].selected=true;
			
			for(d=1;d<=dsy.Items["0_"+(x-1)].length;d++)
			{
				var   newOption   =   document.createElement("option"); 
				newOption.value=dsy.Items["0_"+(x-1)][d-1]; 
	            newOption.text=dsy.Items["0_"+(x-1)][d-1];
	            document.getElementById("s22").options.add(newOption);  
	            if(dsy.Items["0_"+(x-1)][d-1]=='<%=gerenmap.get("hope_address2")%>')
	            {
	            	document.getElementById("s22").options[d].selected=true;
	            }
			}
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

		dsy1.add("0",["计算机硬件","计算机软件","互联网开发及应用","IT-管理","通信技术","电子/电器/半导体/仪器仪表","销售管理","销售人员","销售行政及商务","客服及技术支持","财务/审计/税务","证券/金融/投资","银行","保险","生产/营运","质量/安全管理","工程/机械/能源","汽车","技工","服将/纺织/皮革","采购","贸易","物流/仓储","生物/制药/医疗器械","化工","医院/医疗/护理","广告","公关/媒介","市场/营销","影视/媒体","写作/出版/印刷","艺术/设计","建筑工程","房地产","物业管理","人力资源","高级管理","行政/后勤","咨询/顾问","律师/法务","老师/培训","科研人员","餐饮/娱乐","酒店/旅游","美容/键身/体育","百货/连销/零售服务","交通运输服务","保安/家政/其它服务","其它/学生"]);

			
		dsy1.add("0_0",["高级软件工程师","硬件工程师"]);

		dsy1.add("0_1",["高级软件工程师","软件工程师","软件UI设计师/工程师","仿真应用工程师","ERP实施顾问","ERP技术开发","需求工程师","系统集成工程师","系统分析员","系统架构设计师","数据库工程师/管理员","计算机辅助设计工程师"]);
		dsy1.add("0_2",["互联网输件开发工程师","语音/视频开发工程师","多媒体/游戏开发工程师","网站营运经理/主管","网站营运专员","网络工程师","UI设计师/顾问","网站架构设计师","网站工程师",	"系统管理员/网络管理员","网站策划","网站编辑","网页设计/制作/美工","网络信息安全工程师","智能大厦/综合布线"]);

		dsy1.add("0_3",["首席技术执行字CTO/首席信息字CIO","技术总监/经理","信息技术经理/主管","信息技术专员","项目总监","项目经理","项目主管","项目执行/协调人员"]);


		dsy1.add("0_4",["通信技术工程师","有线传输工程师","无线通信工程师","电信交换工程师","数据通信工程师","移动通信工程师","电信网络工程师","通信网络工程师","增值产品开发工程师"]);
		dsy1.add("0_5",["集成电路IC设计/应用工程师","IC验证工程师","电子工程师/技术员","电子技术研发工程师","电子/电器维修工程师/技师","变压器与磁电工程师","版图设计工程师","电气工程师/技术员","电路工程师/技术员","电声/音响工程师/技术员","激光/光电子技术","半导体技术","自动控制工程师/技术员","电子软件开发","嵌入式软件开发","嵌入式硬件开发","电池/电源开发","FAE现场应用工程师","工艺工程师","家用电器/数码产品研发","仪器/仪表/计量","测试工程师"]);
		dsy1.add("0_6",["销售总监","销售经理","销售主管","业务拓展主管/经理","渠道/分销总监","渠道/分销经理","渠道/分销主管","客户经理/主管"]);
		dsy1.add("0_7",["销售代表","渠道/分销专员","客户代表","销售工程师","电话销售","团购业务员","经销商"]);
		dsy1.add("0_8",["销售行政经理/主管","销售行政专员/助理","业务分析经理/主管","业务分析专员/助理","商和经理","商务主管/专员","商务助理","销售助理"]);
		dsy1.add("0_9",["客服总监","客服经理","客服主管","客服专员/助理","投拆专员","售前/售后的技术支持经理","售前/售后技术支持主管","售前/售后技术支持工程师","咨询热线/呼叫中心服务人员","VIP专员"]);
		dsy1.add("0_10",["首席财务官CFO","财务总监","财务经理","财务顾问","财和主管/总账主管","会计经理/会计主管","会计","出纳员","财务/会计助理","会计文员","固定资产会计","财务分析经理/成本主管","成本管理员","审计经理/主管","审计专员/助理","税务经理/税务主管","税务专员/助理","统计员"]);
		dsy1.add("0_11",["证券/期凭/外汇经纪人","证券分析师","股票期货操盘手","金融/经济研究员","投资/基金项目经理","投资/理财顾问","投资银行业务","融资经理/融资主管理","融资专员","拍卖师"]);
		dsy1.add("0_12",["行长/副行长","资产评估/分析","风险控制","信贷管理/信用调查/分析人员","进出口/信用证结算","外汇交易","清算人员","高级客户经理/客户经理","客户主管/专员","银行柜员","银行卡、电子银行业务推广"]);
		dsy1.add("0_13",["保险精算师","保险产品开发/项目策划","保险业务经理/主管","保险代理/经纪人/客户经理","理财顾问/财务规划师","储备经理人","保险核保","保险理赔","保险客户服务/续期管理","保险培训师","保险内勤","契约管理"]);
		dsy1.add("0_14",["工厂经理/厂长","总工程师/副总工程师","项目经理/主管","项目工程师","营运经理","营运主管","生产经理/车间主任","生产计划/物科管理","生产主管/督导/领班/组长","生产文员","化验员"]);

		dsy1.add("0_15",["质量管理/测试经理","质量管理/测试主管","质量管理/测试工程师","质量检验员/测试员","可靠度工程师","故障分析工程师","认证工程师/审核员","体系工程师/审核员","安全/健康/环境经理/主管","安全/健康/环境工程师","供应商管理","采购材料、设备质量管理"]);



		dsy1.add("0_16",["技术研发经理/主管","技术研发工程师","产品工艺/制程工程师","产品规划工程师","实验室负责人/工程师","工程/设备经理","工程/设备主管","工程/设备工程师","工程/机械绘图员","工业工程师","机械工程师","结构工程师","模具工程师","机电工程师","维修工程师","铸造/锻造工程师/技师","注塑工程师/技师","焊接工程师/技师","夹具工程师/技师","CNC工程师","冲压工程师/技师","锅炉工程师/技师","电力工程师/技术员","光源与照明工程","汽车/摩托车工程师","船舶工程师","轨道工程师/技术员","飞机维修机械师","飞机器设计与制造","水利/水电工程师","石油天然气技术人员","地质/地质勘测工程师"]);
		dsy1.add("0_17",["汽车机构工程师","汽车设计工程师","汽车电子工程师","汽车质量管理","汽车安全性能工程师","汽车装配工艺工程师","汽车修理人员","4S店经理/维修站经理","汽车销售/经纪人","二手车评估师"]);
		dsy1.add("0_18",["钳工/机修工/钣金工","电焊工/铆焊工","车工/磨工/铣工/冲压工/锣工","切割技工","模具工","电工","叉车工","空调工/电梯工/锅炉工","水工/木工/漆工","普工","裁剪车缝熨烫","汽车修理工"]);
		dsy1.add("0_19",["服装/纺织设计总监","服装/纺织设计","面料辅料开发","面料辅料采购","服装/纺织人/皮革跟单","质量管理/验货员","板房/楦头/底格出格师","服装打样/制版","电脑放码员","纸样师/车板工","裁床"]);
		dsy1.add("0_20",["买手","采购总监","采购经理","采购主管","采购员","采购助理"]);
		dsy1.add("0_21",["外贸/贸易经理/主管","外贸/贸易专员/助理","国内贸易人员","业务跟单经理","高级业务跟单","业务跟单","助理业务跟单"]);

		dsy1.add("0_22",["物流总监","物流经理","物流主管","物流专员/助理","供应链总监","供应链经理","供应链主管/专员","仓库经理/主管","仓库管理员","运输经理/主管","货运代理","集装箱业务","海关事务管理","报关员","单证员","船务/空运陆运操作","快递员","调度员","理货员"]);

		dsy1.add("0_23",["生物工程/生物制药","化学化析测试员","医药技术发管理人员","医药技术研发人员","临床研究员","临床协调员","药品注册","药品生产/质量管理","药品市场推广经理","药品市场推广方管/专员","医药招商","医药销售经理/主管","医药销售代表","医疗设备注册","医疗设备生产/质量管理","医疗器械市场推广","医疗器械销售","医疗器械维修人员"]);

		dsy1.add("0_24",["化工技术应用/化工工程师","化工实验室研究员/技术员","涂料研发工程师","配色技术员","塑料工程师","化妆品研发","食品/饮料研发"]);

		dsy1.add("0_25",["医院管理人员","内科医生","外科医生","专料医生","牙科医生","麻醉医生","美容整形师","理疗师","中医科医生","针灸、推拿","儿科医生","心理医生","营养师","药库主任/药剂师","医药学检验","公共卫生/疾病控制","护理主任/护士长","护士/护理人员","兽医","验光师"]);


dsy1.add("0_26",["广告客户总监/副总监","广告客户经理","广告客户主管/专员","广告创意/设计经理","广告创意总监","广告创意/设计主管/专员","美术指导","文案/策划","企业/业务发展经理","企业策划人员"]);
dsy1.add("0_27",["公关经理","公关主管","公关专员","会务经理","会务主管","会务专员","媒介经理","媒介专员","公关/媒介助理","媒介销售"]);
dsy1.add("0_28",["市场/营销/拓展总监","市场/营销/拓展专员","市场助理","市场分析/调研人员","产品/品牌经理","产品/品牌主管","产品/品牌专员","市场通路经理/主管","市场通路专员","市场企划经理/主管","市场个划专员","促销经理","促销主管/督导","促销员/导购","选址拓展/新店开发"]);
dsy1.add("0_29",["影视策划/制作人员","导演/编导","艺术/设计总监","经纪人/星探","演员/模特/主持人","摄影师","音效师","配音员","化妆师/造型师"]);
dsy1.add("0_30",["总编/副总编","编辑/作家/撰稿人","记者","电话采编","美术编辑","排版设计","校对/录入","出版/发行","电分操作员","印刷排版/制版","数码直印/菲林输出","打搞机操作员","调墨技术师","印刷机械机长","晒版/拼版/装订/烫金技工"]);
dsy1.add("0_31",["平面设计","动画/3D设计","店面/陈列/展览设计","多媒体设计","包装设计","工业/产品设计","工世品/珠宝设计","家具/家居用品设计","玩具设计"]);
dsy1.add("0_32",["高级建筑工程师/总工","建筑工程师","结构/土木/土建军工程师","公路/桥梁/港口/隧道工程","岩土工程","电气工程","给排水/暖通工程","幕墙工程师","城市规划与设计","室内外装潢设计","园世/园林/景观设计","测绘/测量","建筑制图","工程造价师/预结算经理","预结算员","建筑工程管理/项目经理","建筑工程验收","工程监更是","施工员"]);
dsy1.add("0_33",["房地产开发/策划经理","房地产开发/策划主管/专员","房产项目配套工程师","房地产项目招标专员","房地产评估","房地产中介/交易","房地产销售人员"]);
dsy1.add("0_34",["高级物业顾问/物业顾问","物业管理经理/主管","特业管理专员/助理","物业招商/租凭/租售","物业设施管理人员","物业维修人员"]);
dsy1.add("0_35",["人事总监","人事经理","人事主管","人事专员","人事助理","招聘经理/主管","招聘专员/助理","薪资福利经理/主管","薪资福利专员/助理","绩效考核经理/主管","绩效考核专员/助理","培训经理/主管","培训专员/助理/培训师","企业文化/员工关系/工会管理","人力资源信息系统专员"]);
dsy1.add("0_36",["首席执行官CEO/总裁/总经理","首度运营官COO","副总经理/副总裁","合伙人","总监","办事处首度代表","办事处/分公司/分支机构经理","总裁助理/总经理助理"]);
dsy1.add("0_37",["行政总监","行政经理/主管/办公室主任","行政专员/助理","经理助理/秘书","前台接待/总机/接待生","后勤","图书管理员/资料管理员","电脑操作员/打字员"]);
dsy1.add("0_38",["专业顾问","咨询总监","咨询经理","专业培训师","咨询员","调研员","猎头/人才中介","情报信息分析人员"]);
dsy1.add("0_39",["律师/法律顾问","律师助理","法务经理","法务主管/专员","法务助理","知识产机/专利顾问/专员"]);
dsy1.add("0_40",["大学教授","讲师/助教","中学教师","小学教师","幼教","院校教务管理人员","兼职教师","家教","职业技术教师","培训师"]);
dsy1.add("0_41",["科研管理人员","科研人员"]);
dsy1.add("0_42",["餐饮/娱乐管理","餐饮/娱乐领班/部长","餐饮/娱乐服务员","传菜主管/传菜员","礼仪/迎宾","司仪","行政主厨/厨师长","厨师/面点师","调查酒师/吧台员","茶艺师"]);

dsy1.add("0_43",["酒店/宾馆经理","酒店/宾馆营销","宴会管理","大堂经理","楼面经理","前厅接待","客房服务员/楼面服务员","机场代表","行李员","管家部经理/主管","清洁服务人员","导游/旅行顾问","订票/订房服务"]);

dsy1.add("0_44",["美容顾问/化妆","美容助理/见席美容师","瘦身顾问","发型师","发型助理/学徒","美甲师","按摩/足疗","健身顾问/教练","体育运动教练","瑜伽/舞蹈老师","宠物护理/美容"]);

dsy1.add("0_45",["店长/卖场经理/楼面管理","店员/营业员","防损员/内保","收银主管/收银员","理货员/陈列员/收货员","导购员","西点师/面包糕点加工","生鲜食品加工/处理","熟食加工","兼职店员"]);

dsy1.add("0_46",["飞机机长/副机长","空乘人员","地勤人员","列车车长","列车司机","乘务员","船长/副船长","船员","司机"]);
dsy1.add("0_47",["保安经理","保安人员","保镖","寻呼员/话务员","搬运工","清洁工","家政服务/保姆"]);
dsy1.add("0_48",["在校学生","应届毕业生"]);


		var s1=["s111","s221"];
		var opt1 = ["=请选择现从事职业=","=请选择现从现职位="];

		function setup1(){
		for(i=0;i<s1.length-1;i++)document.getElementById(s1[i]).onchange=new Function("change1("+(i+1)+")");
		change1(0);
			var x1=0
			for(var c=0;c<dsy1.Items["0"].length;c++)
			{
				if(dsy1.Items["0"][c]=='<%=gerenmap.get("now_occupation")%>')
				{
					x1=c+1;	
				}
				
			}
			
			document.getElementById("s111").options[x1].selected=true;
			
			for(d=1;d<=dsy1.Items["0_"+(x1-1)].length;d++)
			{
				var   newOption   =   document.createElement("option"); 
				newOption.value=dsy1.Items["0_"+(x1-1)][d-1]; 
	            newOption.text=dsy1.Items["0_"+(x1-1)][d-1];
	            document.getElementById("s221").options.add(newOption);  
	            if(dsy1.Items["0_"+(x1-1)][d-1]=='<%=gerenmap.get("now_position")%>')
	            {
	            	document.getElementById("s221").options[d].selected=true;
	            }
			}
		}




		function Dsy2(){
		this.Items = {};
		}
		Dsy2.prototype.add = function(id,iArray){
		this.Items[id] = iArray;
		}
		Dsy2.prototype.Exists = function(id){

		if(typeof(this.Items[id]) == "undefined") return false;
		return true;
		}

		function change2(v){
		var str="0";
		for(i=0;i<v;i++){ str+=("_"+(document.getElementById(s2[i]).selectedIndex-1));};
		
		var ss=document.getElementById(s2[v]);
		with(ss){
		  length = 0;
		  options[0]=new Option(opt2[v],opt2[v]);
		  if(v && document.getElementById(s2[v-1]).selectedIndex>0 || !v)
		  {
		   if(dsy2.Exists(str)){
			ar = dsy2.Items[str];
			for(i=0;i<ar.length;i++)options[length]=new Option(ar[i],ar[i]);
			if(v)options[1].selected = true;
		   }
		  }
		  if(++v<s2.length){change2(v);}
		}
		}

		var dsy2 = new Dsy2();

		dsy2.add("0",["计算机硬件","计算机软件","互联网开发及应用","IT-管理","通信技术","电子/电器/半导体/仪器仪表","销售管理","销售人员","销售行政及商务","客服及技术支持","财务/审计/税务","证券/金融/投资","银行","保险","生产/营运","质量/安全管理","工程/机械/能源","汽车","技工","服将/纺织/皮革","采购","贸易","物流/仓储","生物/制药/医疗器械","化工","医院/医疗/护理","广告","公关/媒介","市场/营销","影视/媒体","写作/出版/印刷","艺术/设计","建筑工程","房地产","物业管理","人力资源","高级管理","行政/后勤","咨询/顾问","律师/法务","老师/培训","科研人员","餐饮/娱乐","酒店/旅游","美容/键身/体育","百货/连销/零售服务","交通运输服务","保安/家政/其它服务"]);

			
		dsy2.add("0_0",["高级软件工程师","硬件工程师"]);

		dsy2.add("0_1",["高级软件工程师","软件工程师","软件UI设计师/工程师","仿真应用工程师","ERP实施顾问","ERP技术开发","需求工程师","系统集成工程师","系统分析员","系统架构设计师","数据库工程师/管理员","计算机辅助设计工程师"]);
		dsy2.add("0_2",["互联网输件开发工程师","语音/视频开发工程师","多媒体/游戏开发工程师","网站营运经理/主管","网站营运专员","网络工程师","UI设计师/顾问","网站架构设计师","网站工程师",	"系统管理员/网络管理员","网站策划","网站编辑","网页设计/制作/美工","网络信息安全工程师","智能大厦/综合布线"]);

		dsy2.add("0_3",["首席技术执行字CTO/首席信息字CIO","技术总监/经理","信息技术经理/主管","信息技术专员","项目总监","项目经理","项目主管","项目执行/协调人员"]);


		dsy2.add("0_4",["通信技术工程师","有线传输工程师","无线通信工程师","电信交换工程师","数据通信工程师","移动通信工程师","电信网络工程师","通信网络工程师","增值产品开发工程师"]);
		dsy2.add("0_5",["集成电路IC设计/应用工程师","IC验证工程师","电子工程师/技术员","电子技术研发工程师","电子/电器维修工程师/技师","变压器与磁电工程师","版图设计工程师","电气工程师/技术员","电路工程师/技术员","电声/音响工程师/技术员","激光/光电子技术","半导体技术","自动控制工程师/技术员","电子软件开发","嵌入式软件开发","嵌入式硬件开发","电池/电源开发","FAE现场应用工程师","工艺工程师","家用电器/数码产品研发","仪器/仪表/计量","测试工程师"]);
		dsy2.add("0_6",["销售总监","销售经理","销售主管","业务拓展主管/经理","渠道/分销总监","渠道/分销经理","渠道/分销主管","客户经理/主管"]);
		dsy2.add("0_7",["销售代表","渠道/分销专员","客户代表","销售工程师","电话销售","团购业务员","经销商"]);
		dsy2.add("0_8",["销售行政经理/主管","销售行政专员/助理","业务分析经理/主管","业务分析专员/助理","商和经理","商务主管/专员","商务助理","销售助理"]);
		dsy2.add("0_9",["客服总监","客服经理","客服主管","客服专员/助理","投拆专员","售前/售后的技术支持经理","售前/售后技术支持主管","售前/售后技术支持工程师","咨询热线/呼叫中心服务人员","VIP专员"]);
		dsy2.add("0_10",["首席财务官CFO","财务总监","财务经理","财务顾问","财和主管/总账主管","会计经理/会计主管","会计","出纳员","财务/会计助理","会计文员","固定资产会计","财务分析经理/成本主管","成本管理员","审计经理/主管","审计专员/助理","税务经理/税务主管","税务专员/助理","统计员"]);
		dsy2.add("0_11",["证券/期凭/外汇经纪人","证券分析师","股票期货操盘手","金融/经济研究员","投资/基金项目经理","投资/理财顾问","投资银行业务","融资经理/融资主管理","融资专员","拍卖师"]);
		dsy2.add("0_12",["行长/副行长","资产评估/分析","风险控制","信贷管理/信用调查/分析人员","进出口/信用证结算","外汇交易","清算人员","高级客户经理/客户经理","客户主管/专员","银行柜员","银行卡、电子银行业务推广"]);
		dsy2.add("0_13",["保险精算师","保险产品开发/项目策划","保险业务经理/主管","保险代理/经纪人/客户经理","理财顾问/财务规划师","储备经理人","保险核保","保险理赔","保险客户服务/续期管理","保险培训师","保险内勤","契约管理"]);
		dsy2.add("0_14",["工厂经理/厂长","总工程师/副总工程师","项目经理/主管","项目工程师","营运经理","营运主管","生产经理/车间主任","生产计划/物科管理","生产主管/督导/领班/组长","生产文员","化验员"]);

		dsy2.add("0_15",["质量管理/测试经理","质量管理/测试主管","质量管理/测试工程师","质量检验员/测试员","可靠度工程师","故障分析工程师","认证工程师/审核员","体系工程师/审核员","安全/健康/环境经理/主管","安全/健康/环境工程师","供应商管理","采购材料、设备质量管理"]);



		dsy2.add("0_16",["技术研发经理/主管","技术研发工程师","产品工艺/制程工程师","产品规划工程师","实验室负责人/工程师","工程/设备经理","工程/设备主管","工程/设备工程师","工程/机械绘图员","工业工程师","机械工程师","结构工程师","模具工程师","机电工程师","维修工程师","铸造/锻造工程师/技师","注塑工程师/技师","焊接工程师/技师","夹具工程师/技师","CNC工程师","冲压工程师/技师","锅炉工程师/技师","电力工程师/技术员","光源与照明工程","汽车/摩托车工程师","船舶工程师","轨道工程师/技术员","飞机维修机械师","飞机器设计与制造","水利/水电工程师","石油天然气技术人员","地质/地质勘测工程师"]);
		dsy2.add("0_17",["汽车机构工程师","汽车设计工程师","汽车电子工程师","汽车质量管理","汽车安全性能工程师","汽车装配工艺工程师","汽车修理人员","4S店经理/维修站经理","汽车销售/经纪人","二手车评估师"]);
		dsy2.add("0_18",["钳工/机修工/钣金工","电焊工/铆焊工","车工/磨工/铣工/冲压工/锣工","切割技工","模具工","电工","叉车工","空调工/电梯工/锅炉工","水工/木工/漆工","普工","裁剪车缝熨烫","汽车修理工"]);
		dsy2.add("0_19",["服装/纺织设计总监","服装/纺织设计","面料辅料开发","面料辅料采购","服装/纺织人/皮革跟单","质量管理/验货员","板房/楦头/底格出格师","服装打样/制版","电脑放码员","纸样师/车板工","裁床"]);
		dsy2.add("0_20",["买手","采购总监","采购经理","采购主管","采购员","采购助理"]);
		dsy2.add("0_21",["外贸/贸易经理/主管","外贸/贸易专员/助理","国内贸易人员","业务跟单经理","高级业务跟单","业务跟单","助理业务跟单"]);

		dsy2.add("0_22",["物流总监","物流经理","物流主管","物流专员/助理","供应链总监","供应链经理","供应链主管/专员","仓库经理/主管","仓库管理员","运输经理/主管","货运代理","集装箱业务","海关事务管理","报关员","单证员","船务/空运陆运操作","快递员","调度员","理货员"]);

		dsy2.add("0_23",["生物工程/生物制药","化学化析测试员","医药技术发管理人员","医药技术研发人员","临床研究员","临床协调员","药品注册","药品生产/质量管理","药品市场推广经理","药品市场推广方管/专员","医药招商","医药销售经理/主管","医药销售代表","医疗设备注册","医疗设备生产/质量管理","医疗器械市场推广","医疗器械销售","医疗器械维修人员"]);

		dsy2.add("0_24",["化工技术应用/化工工程师","化工实验室研究员/技术员","涂料研发工程师","配色技术员","塑料工程师","化妆品研发","食品/饮料研发"]);

		dsy2.add("0_25",["医院管理人员","内科医生","外科医生","专料医生","牙科医生","麻醉医生","美容整形师","理疗师","中医科医生","针灸、推拿","儿科医生","心理医生","营养师","药库主任/药剂师","医药学检验","公共卫生/疾病控制","护理主任/护士长","护士/护理人员","兽医","验光师"]);


dsy2.add("0_26",["广告客户总监/副总监","广告客户经理","广告客户主管/专员","广告创意/设计经理","广告创意总监","广告创意/设计主管/专员","美术指导","文案/策划","企业/业务发展经理","企业策划人员"]);
dsy2.add("0_27",["公关经理","公关主管","公关专员","会务经理","会务主管","会务专员","媒介经理","媒介专员","公关/媒介助理","媒介销售"]);
dsy2.add("0_28",["市场/营销/拓展总监","市场/营销/拓展专员","市场助理","市场分析/调研人员","产品/品牌经理","产品/品牌主管","产品/品牌专员","市场通路经理/主管","市场通路专员","市场企划经理/主管","市场个划专员","促销经理","促销主管/督导","促销员/导购","选址拓展/新店开发"]);
dsy2.add("0_29",["影视策划/制作人员","导演/编导","艺术/设计总监","经纪人/星探","演员/模特/主持人","摄影师","音效师","配音员","化妆师/造型师"]);
dsy2.add("0_30",["总编/副总编","编辑/作家/撰稿人","记者","电话采编","美术编辑","排版设计","校对/录入","出版/发行","电分操作员","印刷排版/制版","数码直印/菲林输出","打搞机操作员","调墨技术师","印刷机械机长","晒版/拼版/装订/烫金技工"]);
dsy2.add("0_31",["平面设计","动画/3D设计","店面/陈列/展览设计","多媒体设计","包装设计","工业/产品设计","工世品/珠宝设计","家具/家居用品设计","玩具设计"]);
dsy2.add("0_32",["高级建筑工程师/总工","建筑工程师","结构/土木/土建军工程师","公路/桥梁/港口/隧道工程","岩土工程","电气工程","给排水/暖通工程","幕墙工程师","城市规划与设计","室内外装潢设计","园世/园林/景观设计","测绘/测量","建筑制图","工程造价师/预结算经理","预结算员","建筑工程管理/项目经理","建筑工程验收","工程监更是","施工员"]);
dsy2.add("0_33",["房地产开发/策划经理","房地产开发/策划主管/专员","房产项目配套工程师","房地产项目招标专员","房地产评估","房地产中介/交易","房地产销售人员"]);
dsy2.add("0_34",["高级物业顾问/物业顾问","物业管理经理/主管","特业管理专员/助理","物业招商/租凭/租售","物业设施管理人员","物业维修人员"]);
dsy2.add("0_35",["人事总监","人事经理","人事主管","人事专员","人事助理","招聘经理/主管","招聘专员/助理","薪资福利经理/主管","薪资福利专员/助理","绩效考核经理/主管","绩效考核专员/助理","培训经理/主管","培训专员/助理/培训师","企业文化/员工关系/工会管理","人力资源信息系统专员"]);
dsy2.add("0_36",["首席执行官CEO/总裁/总经理","首度运营官COO","副总经理/副总裁","合伙人","总监","办事处首度代表","办事处/分公司/分支机构经理","总裁助理/总经理助理"]);
dsy2.add("0_37",["行政总监","行政经理/主管/办公室主任","行政专员/助理","经理助理/秘书","前台接待/总机/接待生","后勤","图书管理员/资料管理员","电脑操作员/打字员"]);
dsy2.add("0_38",["专业顾问","咨询总监","咨询经理","专业培训师","咨询员","调研员","猎头/人才中介","情报信息分析人员"]);
dsy2.add("0_39",["律师/法律顾问","律师助理","法务经理","法务主管/专员","法务助理","知识产机/专利顾问/专员"]);
dsy2.add("0_40",["大学教授","讲师/助教","中学教师","小学教师","幼教","院校教务管理人员","兼职教师","家教","职业技术教师","培训师"]);
dsy2.add("0_41",["科研管理人员","科研人员"]);
dsy2.add("0_42",["餐饮/娱乐管理","餐饮/娱乐领班/部长","餐饮/娱乐服务员","传菜主管/传菜员","礼仪/迎宾","司仪","行政主厨/厨师长","厨师/面点师","调查酒师/吧台员","茶艺师"]);

dsy2.add("0_43",["酒店/宾馆经理","酒店/宾馆营销","宴会管理","大堂经理","楼面经理","前厅接待","客房服务员/楼面服务员","机场代表","行李员","管家部经理/主管","清洁服务人员","导游/旅行顾问","订票/订房服务"]);

dsy2.add("0_44",["美容顾问/化妆","美容助理/见席美容师","瘦身顾问","发型师","发型助理/学徒","美甲师","按摩/足疗","健身顾问/教练","体育运动教练","瑜伽/舞蹈老师","宠物护理/美容"]);

dsy2.add("0_45",["店长/卖场经理/楼面管理","店员/营业员","防损员/内保","收银主管/收银员","理货员/陈列员/收货员","导购员","西点师/面包糕点加工","生鲜食品加工/处理","熟食加工","兼职店员"]);

dsy2.add("0_46",["飞机机长/副机长","空乘人员","地勤人员","列车车长","列车司机","乘务员","船长/副船长","船员","司机"]);
dsy2.add("0_47",["保安经理","保安人员","保镖","寻呼员/话务员","搬运工","清洁工","家政服务/保姆"]);

		var s2=["s112","s222"];
		var opt2 = ["=请选择希望职业=","=请选择希望职位="];

		function setup2(){
		for(i=0;i<s2.length-1;i++)document.getElementById(s2[i]).onchange=new Function("change2("+(i+1)+")");
		change2(0);
			var x2=0
			for(var c=0;c<dsy2.Items["0"].length;c++)
			{
				if(dsy2.Items["0"][c]=='<%=gerenmap.get("hope_occupation")%>')
				{
					x2=c+1;	
				}
				
			}
			
			document.getElementById("s112").options[x2].selected=true;
			
			for(d=1;d<=dsy2.Items["0_"+(x2-1)].length;d++)
			{
				var   newOption   =   document.createElement("option"); 
				newOption.value=dsy2.Items["0_"+(x2-1)][d-1]; 
	            newOption.text=dsy2.Items["0_"+(x2-1)][d-1];
	            document.getElementById("s222").options.add(newOption);  
	            if(dsy2.Items["0_"+(x2-1)][d-1]=='<%=gerenmap.get("hope_position")%>')
	            {
	            	document.getElementById("s222").options[d].selected=true;
	            }
			}
		}
  
  
  
	function tiJiao()
	{
		var qwgzlx=document.getElementById("qwgzlx");
		var mqzk=document.getElementById("mqzk");

		var xhy=document.getElementById("xhy");
		var xzy=document.getElementById("xzy");
		var xzw=document.getElementById("xzw");
		var xwhy=document.getElementById("xwhy");
		var xwzy=document.getElementById("xwzy");
		var xwzw=document.getElementById("xwzw");
		var sheng=document.getElementById("sheng");	
		var shi=document.getElementById("shi");
		var gz=document.getElementById("gz");

		if(qwgzlx.value=="0")
		{		
			div1.innerHTML="<span style='color:red'>期望工作性质未选<span>";
			return;
		}
		else
		{
			div1.innerHTML="";
		}
		if(mqzk.value=="")
		{
			div2.innerHTML="<span style='color:red'>目前状况不能为空<span>";
			return;
		}
		else
		{
			div2.innerHTML="";
		}
		
		
		if(xhy.value=="0")
		{
			div3.innerHTML="<span style='color:red'>现从事行业未选<span>";
			return;
		}
		else
		{
			div3.innerHTML="";
		}

		if(xzy.value=="=请选择现从事职业="||xzy.value=="=请选择现从现职位=")
		{
			div4.innerHTML="<span style='color:red'>现从事职业/现职位未选<span>";
			return;
		}
		else
		{
			div4.innerHTML="";
		}
		
		
		
		if(xwhy.value=="0")
		{
			div5.innerHTML="<span style='color:red'>希望从事行业未选<span>";
			return;
		}
		else
		{
			div5.innerHTML="";
		}

		if(xwzy.value=="=请选择希望职业="||xwzy.value=="=请选择希望职位=")
		{
			div6.innerHTML="<span style='color:red'>希望职业/现职位未选<span>";
			return;
		}
		else
		{
			div6.innerHTML="";
		}
		if(sheng.value=="=省="||shi.value=="=市=")
		{
			div7.innerHTML="<span style='color:red'>希望工作地区未选<span>";
			return;
		}
		else
		{
			div7.innerHTML="";
		}
		if(gz.value=="0")
		{
			div8.innerHTML="<span style='color:red'>工资待遇未选<span>";
			return;
		}
		else
		{
			div8.innerHTML="";
		}
		
		document.forms[0].actionType.value="updateqiuzhiyixiang" ;
		document.forms[0].action="<%=request.getContextPath()%>/gerenqiuzhiyixiang";
		document.forms[0].submit();

	}
  //-->
  </SCRIPT>			