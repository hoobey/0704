<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<HTML><HEAD><TITLE>修改企业招聘信息</TITLE>

<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<SCRIPT src="<%=request.getContextPath() %>/js/chkUtil.js" type=text/javascript></SCRIPT>
<SCRIPT src="<%=request.getContextPath() %>/js/common.js" type=text/javascript></SCRIPT>
</HEAD>
<BODY  onload="setup()">
<%
		List zhaopinlist=(List)request.getAttribute("zhaopinlist");
			Map zhaopinMap=(Map)zhaopinlist.get(0);	
			String want_information_id=(String)zhaopinMap.get("want_information_id");
			String company_id=(String)zhaopinMap.get("company_id");	
		%>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdtit height=30><B>修改企业招聘信息--招聘信息</B>    </TD>
  </TR>

</TABLE>
 <FORM   action="" method=post>
  <INPUT type=hidden name=actionType> 
  <INPUT   type=hidden  name=company_id  value="<%=company_id %>"> 
  <INPUT   type=hidden  name=want_information_id  value="<%=want_information_id %>"> 
<TABLE class=tableBorder style="WIDTH: 100%" cellSpacing=0 
borderColorDark=#ffffff cellPadding=0 width="96%" borderColorLight=#dddddd 
border=1>
 
  <TR>
    <TD class=tdtop colSpan=2 height=23><B>企业招聘信息</B></TD>
  </TR>

  <TR>
    <TD class=tdileft height=38><SPAN 
    class=atten>*</SPAN>&nbsp;职位名称:</TD>
    <TD width="1023" height=38 class=tdiright><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin><INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=want_name value="<%=zhaopinMap.get("want_name") %>"></TD>
          <td><div id="div1"></div></TD>
        </tr>
    </table>    </TR>
  <TR>
    <TD class=tdileft height=38><SPAN class=atten>*</SPAN>&nbsp;招聘职位所属专业类别:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin><SELECT   size=1 name="want_profession" id="w11">
              <option  value="0" SELECTED>=请选择职业类别=</option>
            </SELECT>
            &nbsp;&nbsp; 
            &nbsp;
            <SELECT   NAME="want_position" id="w22">
              <option value="0"SELECTED>=请选择职位类别=</option>
            </SELECT>
            &nbsp;</TD>
          <td><div id="div2"></div></TD>
        </tr>
    </table></TD>
  </TR>
  <TR>
    <TD class=tdileft height=38><SPAN 
    class=atten>*</SPAN>&nbsp;年龄要求:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin><INPUT style="WIDTH: 158px; HEIGHT: 21px;"  name=want_age value="<%=zhaopinMap.get("want_age") %>">岁&nbsp;&nbsp;&nbsp;例（25-30）</TD>
          <td><div id="div3"></div></TD>
        </tr>
      </table>    </TR>
  <TR>
    <TD class=tdileft width=271 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;语言种类及使用程度:</TD>
	<TD class=tdiright height=38>
       <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
           <TR>
            <TD class=tdtsin><input name="want_language" maxLength=30 style="WIDTH: 250px; HEIGHT: 21px" value="不限"  >
           人</TD>
	        <td><div id="div4"></div>			</TD>
		</tr></table>		</TD></TR>
  <TR>
    <TD class=tdileft height=38><span class="atten">*</span>&nbsp;有效期:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
      <TR>
        <TD class=tdtsin>
                    <%
            	String rq=zhaopinMap.get("want_time").toString();
            	String nian=rq.substring(0,4);
            	String yue=rq.substring(5,7);
            	String ri=rq.substring(8,10);
            	System.out.println(ri);
             %>       
	<SELECT size=1 name=yy >
	<%for(int i=2009;i<2050;i++) {%>
        <OPTION value="<%=i %>" <%=(Integer.parseInt(nian)==i)?"selected":""%>><%=i %></OPTION>
        <%} %>
        </SELECT>&nbsp;年&nbsp;
		<SELECT size=1 name=mm > 
		<%for(int i=1;i<13;i++) {%>
        <OPTION value="<%=i %>" <%=(Integer.parseInt(yue)==i)?"selected":""%>><%=i %></OPTION>
        <%} %>
		
		</SELECT>&nbsp;月&nbsp;
		<SELECT size=1 name=dd > 
		<%for(int i=1;i<32;i++) {%>
        <OPTION value="<%=i %>" <%=((Integer.parseInt(ri)==i)?"selected":"") %>><%=i %></OPTION>
        <%} %>
		</SELECT>&nbsp;日        </TD>
        <td><div id="div5"></div></TD>
      </tr>
    </table>    </TR>
  <TR>
    <TD class=tdileft height=38><SPAN  class=atten>*</SPAN>&nbsp;关键词:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin><INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=want_keyword value="<%=zhaopinMap.get("want_keyword") %>">          </TD>
          <td><div id="div6"></div></TD>
        </tr>
    </table>    </TR>
  <TR>
    <TD class=tdileft width=271 height=38>
    <span class="atten">*</span>&nbsp;招聘人数:</TD>
    <TD class=tdiright height=38>
         <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin><INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=want_amount value="<%=zhaopinMap.get("want_amount") %>">人&nbsp;&nbsp;&nbsp;（如不填写默认为若干）</TD>
		   <td><div id="div7"></div>			</TD>
		   </tr></table></TR>
  <TR>
    <TD class=tdileft height=38><SPAN class=atten>*</SPAN>&nbsp;工作所在地:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin><SELECT   size=1 name="big_address_id" onChange="jysheng()">
              <option value="0" SELECTED>=省=</option>
              <%
              	String big_address_id1=(String)zhaopinMap.get("big_address_id");
				String small_address_id1=(String)zhaopinMap.get("small_address_id");
              List shenglist=(List)request.getAttribute("shenglist");
              for(int i=0;i<shenglist.size();i++)
             { Map shengmap=(Map)shenglist.get(i);
             	String big_address_id=(String)shengmap.get("big_address_id");
			    String big_address_name=(String)shengmap.get("big_address_name");
               %>
              <option value="<%=big_address_id %>" <%=(big_address_id.equals(big_address_id1))?"selected":""%>><%=big_address_name %></option>
              <%} %>
            </SELECT>
            &nbsp;省&nbsp; 
            &nbsp;
            <SELECT   NAME="small_address_id">
              <option value="0" SELECTED>=市=</option>
                  <%
				    List dangqianshilist=(List)request.getAttribute("dangqianshilist");
				    for(int i=0;i<dangqianshilist.size();i++)
				    {
				    Map dangqianshimap=(Map)dangqianshilist.get(i);    
				     %>
				<option value="<%=dangqianshimap.get("small_address_id") %>" <%=(((String)dangqianshimap.get("small_address_id")).equals(small_address_id1))?"selected":""%>><%=dangqianshimap.get("small_address_name") %></option>
				<%} %>
            </SELECT>
            &nbsp;市</TD>
          <td><div id="div8"></div></TD>
        </tr>
    </table></TD>
  </TR>
  
  <TR>
    <TD class=tdileft width=271 height=38><SPAN 
      class=atten>*</SPAN>&nbsp;性别要求:　</TD>
    <TD class=tdiright height=38>
        <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin><label>
     <input type="radio" name="want_sex" value=男 <%if(null!=zhaopinMap.get("want_sex")){if(zhaopinMap.get("want_sex").equals("男")){ %>CHECKED<% }}%>>男&nbsp;&nbsp;<input type="radio" name="want_sex" value=女 <%if(null!=zhaopinMap.get("want_sex")){if(zhaopinMap.get("want_sex").equals("女")){ %>CHECKED<% }}%>>女&nbsp;&nbsp;<input type="radio" name="want_sex"  value=不限 <%if(null!=zhaopinMap.get("want_sex")){if(zhaopinMap.get("want_sex").equals("不限")){ %>CHECKED<% }}%>>不限
   </label></TD>
     		   <td><div id="div9"></div>			</TD>
	</tr></table>  </TR>
  <TR>
    <TD class=tdileft width=271 height=38><SPAN  class=atten>*</SPAN>&nbsp;月薪范围:　</TD>
    <TD class=tdiright height=38><table  cellspacing=0 cellpadding=0 width="100%"  border=0>
      <tr>
        <td class=tdtsin><input name="want_month_wage" style="WIDTH: 250px; HEIGHT: 21px" value="<%=zhaopinMap.get("want_month_wage") %>" >
          元（人民币）
          (例：800-1000)</td>
        <td><div id="div10"></div></td>
      </tr>
    </table>  </TR>
  <TR>
    <TD class=tdileft width=271 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;户籍要求:</TD>
    <TD class=tdiright height=38>
        <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> 
    <INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=want_now_address  value="<%=zhaopinMap.get("want_now_address") %>">        </TD>
    <td><div id="div11"></div>			</TD>
	</tr></table>    </TR>
  <TR>
    <TD class=tdileft height=38><SPAN  class=atten>*</SPAN>&nbsp;招聘所在地址:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin><input name="want_address" style="WIDTH: 250px; HEIGHT: 21px"  value="<%=zhaopinMap.get("want_address") %>"></TD>
          <td><div id="div12"></div></TD>
        </tr>
    </table>    </TR>
  <TR>
    <TD class=tdileft height=38><SPAN  class=atten>*</SPAN>&nbsp;学历要求:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin>	<SELECT size=1 name=want_degree >
	<OPTION value=不限 <%=(zhaopinMap.get("want_degree").equals("不限"))?"selected":""%>>不限</OPTION>
	<OPTION value=中专 <%=(zhaopinMap.get("want_degree").equals("中专"))?"selected":""%>>中专</OPTION>
	<OPTION value=大专 <%=(zhaopinMap.get("want_degree").equals("大专"))?"selected":""%>>大专</OPTION>
	<OPTION  value=本科 <%=(zhaopinMap.get("want_degree").equals("本科"))?"selected":""%>>本科</OPTION>
	<OPTION value=研究生 <%=(zhaopinMap.get("want_degree").equals("研究生"))?"selected":""%>>研究生</OPTION>
	<OPTION   value=硕士 <%=(zhaopinMap.get("want_degree").equals("硕士"))?"selected":""%>>硕士</OPTION>
	<OPTION value=博士 <%=(zhaopinMap.get("want_degree").equals("博士"))?"selected":""%>>博士</OPTION>
	</SELECT>          </TD>
          <td><div id="div13"></div></TD>
        </tr>
    </table>    </TR>
  <TR>
    <TD class=tdileft height=38><SPAN  class=atten>*</SPAN>&nbsp;工作经验:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin>    <select style="WIDTH: 130px"  name="want_experience">
      <option value=不限 <%=(zhaopinMap.get("want_experience").equals("不限"))?"selected":""%>>不限</option>
      <option   value=1年 <%=(zhaopinMap.get("want_experience").equals("1年"))?"selected":""%>>1年</option>
      <option value=2年 <%=(zhaopinMap.get("want_experience").equals("2年"))?"selected":""%>>2年</option>
	  <option value=3年 <%=(zhaopinMap.get("want_experience").equals("3年"))?"selected":""%>>3年</option>
	  <option value=4年 <%=(zhaopinMap.get("want_experience").equals("4年"))?"selected":""%>>4年</option>
	   <option value=5年 <%=(zhaopinMap.get("want_experience").equals("5年"))?"selected":""%> >5年</option>
	  <option value=5年以上 <%=(zhaopinMap.get("want_experience").equals("5年以上"))?"selected":""%>>5年以上</option>
    </select>  
          </TD>
          <td><div id="div14"></div></TD>
        </tr>
      </table>
    </TR>
  <TR>
    <TD class=tdileft width=271 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;具体要求:</TD>
    <TD class=tdiright height=38>
        <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin><textarea name=want_require rows=6 cols=70 ><%=zhaopinMap.get("want_require") %></textarea></TD>
    <td><div id="div15"></div></TD>	</tr></table></TR>
  <TR>
    <TD class=tdileft width=271 height=50>　</TD>
    <TD class=tdiright height=45><INPUT class=login_btn1 style="WIDTH: 180px" type=button value=保存信息 onClick="tiJiao()"></TD></TR></TABLE>
 </FORM>

</BODY></HTML>
  <SCRIPT LANGUAGE="JavaScript">
  <!--
  

	function tiJiao()
	{
		var want_name=document.getElementById("want_name");
		var want_profession=document.getElementById("want_profession");
		var want_position=document.getElementById("want_position");
		var want_age=document.getElementById("want_age");
		var want_language=document.getElementById("want_language");
		var yy=document.getElementById("yy");
		var mm=document.getElementById("mm");
		var dd=document.getElementById("dd");
		var want_keyword=document.getElementById("want_keyword");
		var want_amount=document.getElementById("want_amount");
		var big_address_id=document.getElementById("big_address_id");	
		var small_address_id=document.getElementById("small_address_id");
		var want_sex=document.getElementById("want_sex");
		var want_month_wage=document.getElementById("want_month_wage");
		var want_now_address=document.getElementById("want_now_address");
		var want_address=document.getElementById("want_address");
		var want_degree=document.getElementById("want_degree");	
		var want_experience=document.getElementById("want_experience");
		var want_require=document.getElementById("want_require");

		if(want_name.value=="")
		{
			div1.innerHTML="<span style='color:red'>职位名称不能为空<span>";
			return;
		}
		else{
			div1.innerHTML="";
		}		
		
		if(want_profession.value=="=请选择职业类别=" || want_position.value=="=请选择职位类别=")
		{		
			div2.innerHTML="<span style='color:red'>招聘职业/职位所属专业类别必选<span>";
			return;
		}else{
			div2.innerHTML="";
		}
		if(want_age.value=="")
		{
			div3.innerHTML="<span style='color:red'>年龄要求不能为空<span>";
			return;
		}
		else{
			div3.innerHTML="";
		}
		
		if(want_language.value=="")
		{
			div4.innerHTML="<span style='color:red'>语言要求不能为空 <span>";
			return;
		}
		else{
			div4.innerHTML="";
		}
		if(yy.value=="0"||mm.value=="0"||dd.value=="0")
		{
			div5.innerHTML="<span style='color:red'>有效期不能为空 <span>";
			return;
		}
		else{
			div5.innerHTML="";
		}
		if(want_keyword.value=="")
		{
			div6.innerHTML="<span style='color:red'>关键词不能为空<span>";
			return;
		}
		else{
			div6.innerHTML="";
		}

		if(want_amount.value=="")
		{
			div7.innerHTML="<span style='color:red'>招聘人数不能为空<span>";
			return;
		}
		else{
			div7.innerHTML="";
		}
		if(big_address_id.value=="0"||small_address_id.value=="0")
		{		
			div8.innerHTML="<span style='color:red'>工作地址必选<span>";
			return;
		}else{
			div8.innerHTML="";
		}
		if(want_month_wage.value=="")
		{		
			div10.innerHTML="<span style='color:red'>月薪范围不能为空<span>";
			return;
		}else{
			div10.innerHTML="";
		}
		if(want_now_address.value=="")
		{		
			div11.innerHTML="<span style='color:red'>户籍要求不能为空<span>";
			return;
		}else{
			div11.innerHTML="";
		}
		if(want_address.value=="")
		{		
			div12.innerHTML="<span style='color:red'>招聘所在地址不能为空<span>";
			return;
		}else{
			div12.innerHTML="";
		}

		if(want_require.value.length<20||want_require.value.length>2000)
		{
		div15.innerHTML="<span style='color:red'>填写的公司简介长度必须为在20到2000个字符之间<span>";
		}
		else
		{
		div15.innerHTML="";
		}
		document.forms[0].actionType.value="update" ;
		document.forms[0].action="<%=request.getContextPath()%>/comzhaopinxinxi";
		document.forms[0].submit();
		
		
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
		var opt0 = ["=请选择职业类别=","=请选择职位类别="];

		function setup(){
		for(i=0;i<s.length-1;i++)document.getElementById(s[i]).onchange=new Function("change("+(i+1)+")");
		change(0);
			var x=0
			for(var c=0;c<dsy.Items["0"].length;c++)
			{
				if(dsy.Items["0"][c]=='<%=zhaopinMap.get("want_profession")%>')
				{
					x=c+1;	
				}
				
			}
			
			document.getElementById("w11").options[x].selected=true;
			
			for(d=1;d<=dsy.Items["0_"+(x-1)].length;d++)
			{
				var   newOption   =   document.createElement("option"); 
				newOption.value=dsy.Items["0_"+(x-1)][d-1]; 
	            newOption.text=dsy.Items["0_"+(x-1)][d-1];
	            document.getElementById("w22").options.add(newOption);  
	            if(dsy.Items["0_"+(x-1)][d-1]=='<%=zhaopinMap.get("want_position")%>')
	            {
	            	document.getElementById("w22").options[d].selected=true;
	            }
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
  //-->
  </SCRIPT>			