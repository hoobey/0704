<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<HTML><HEAD><TITLE>个人简历</TITLE>

<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<SCRIPT src="<%=request.getContextPath() %>/js/chkUtil.js" type=text/javascript></SCRIPT>
<SCRIPT src="<%=request.getContextPath() %>/js/common.js" type=text/javascript></SCRIPT>
</HEAD>
<BODY   onload="shengshi()">
<%
		List Loginlist=(List)session.getAttribute("Loginlist");
			Map yhMap=(Map)Loginlist.get(0);	
			String id=(String)yhMap.get("user_info_id");	
		%>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdtit height=30><B>填写个人简历--个人基本信息</B>
    </TD>
    </TR>

</TABLE>
 <FORM   action="" method=post>
  <INPUT type=hidden name=actionType> 
  <INPUT   type=hidden  name=id  value="<%=id %>"> 
<TABLE class=tableBorder style="WIDTH: 100%" cellSpacing=0 
borderColorDark=#ffffff cellPadding=0 width="96%" borderColorLight=#dddddd 
border=1>
 
  <TR>
    <TD class=tdtop colSpan=2 height=23><B>个人信息</B></TD></TR>

  <TR>
    <TD class=tdileft width=140 height=38>
	<SPAN class=atten>*</SPAN>&nbsp;姓&nbsp;&nbsp;&nbsp;&nbsp;名:</TD>
    <TD class=tdiright height=38>
      <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
           <TR>
            <TD class=tdtsin>
          <INPUT style="WIDTH: 158px; HEIGHT: 21px" name="name"> </TD>
	<td><div id="div1"></div>
			</TD>
			</tr>
	</table>
	</TD></TR>
  <TR>
    <TD class=tdileft height=38>
	<SPAN  class=atten>*</SPAN>&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;别:</TD>
    <TD class=tdiright height=38>
		    <table  cellSpacing=0 cellPadding=0 width="100%"  border=0>
		       <TR>
			     <TD class=tdtsin>  
						 <INPUT type=radio  value=男 name=sex CHECKED>
					      &nbsp;男&nbsp;&nbsp;
					      <INPUT type=radio   value=女 name=sex>
					      &nbsp;女</TD>
					<td><div id="div2"></div></TD>
			
			   	</TR>
		</table>
	</TD>
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;出生日期:</TD>
	<TD class=tdiright height=38>
       <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
           <TR>
            <TD class=tdtsin>
	<SELECT size=1 name=csyy >
        <OPTION value=1994 selected>1994</OPTION><OPTION value=1993>1993</OPTION>
		<OPTION value=1992>1992</OPTION><OPTION value=1991>1991</OPTION>
		<OPTION value=1990>1990</OPTION><OPTION value=1989>1989</OPTION>
		<OPTION value=1988>1988</OPTION><OPTION value=1987>1987</OPTION>
		<OPTION value=1986>1986</OPTION><OPTION value=1985>1985</OPTION>
		<OPTION value=1984>1984</OPTION><OPTION value=1983>1983</OPTION>
		<OPTION value=1982>1982</OPTION><OPTION value=1981>1981</OPTION>
		<OPTION value=1980>1980</OPTION><OPTION value=1979>1979</OPTION>
		<OPTION value=1978>1978</OPTION><OPTION value=1977>1977</OPTION>
		<OPTION value=1976>1976</OPTION><OPTION value=1975>1975</OPTION>
		<OPTION value=1974>1974</OPTION><OPTION value=1973>1973</OPTION>
		<OPTION value=1972>1972</OPTION><OPTION value=1971>1971</OPTION>
		<OPTION value=1970>1970</OPTION><OPTION value=1969>1969</OPTION>
		<OPTION value=1968>1968</OPTION><OPTION value=1967>1967</OPTION>
		<OPTION value=1966>1966</OPTION><OPTION value=1965>1965</OPTION>
		<OPTION value=1964>1964</OPTION><OPTION value=1963>1963</OPTION>
		<OPTION  value=1962>1962</OPTION><OPTION value=1961>1961</OPTION>
		<OPTION value=1960>1960</OPTION><OPTION value=1959>1959</OPTION>
		<OPTION value=1958>1958</OPTION><OPTION value=1957>1957</OPTION>
		<OPTION  value=1956>1956</OPTION><OPTION value=1955>1955</OPTION>
		<OPTION value=1954>1954</OPTION><OPTION value=1953>1953</OPTION>
		<OPTION value=1952>1952</OPTION><OPTION value=1951>1951</OPTION>
		<OPTION value=1950>1950</OPTION><OPTION value=1949>1949</OPTION>
		<OPTION  value=1948>1948</OPTION><OPTION value=1947>1947</OPTION>
		<OPTION value=1946>1946</OPTION><OPTION value=1945>1945</OPTION>
		<OPTION value=1944>1944</OPTION><OPTION value=1943>1943</OPTION>
		<OPTION value=1942>1942</OPTION><OPTION value=1941>1941</OPTION>
		<OPTION  value=1940>1940</OPTION><OPTION value=1939>1939</OPTION>
		<OPTION value=1938>1938</OPTION><OPTION value=1937>1937</OPTION>
		<OPTION value=1936>1936</OPTION><OPTION value=1935>1935</OPTION>
		<OPTION value=1934>1934</OPTION><OPTION value=1933>1933</OPTION>
		<OPTION value=1932>1932</OPTION><OPTION value=1931>1931</OPTION>
		<OPTION  value=1930>1930</OPTION></SELECT>&nbsp;年&nbsp;
		<SELECT size=1 name=csmm > 
		<OPTION value=1 selected>1</OPTION>
		<OPTION  value=2>2</OPTION><OPTION value=3>3</OPTION>
		<OPTION value=4 >4</OPTION><OPTION value=5>5</OPTION>
		<OPTION  value=6>6</OPTION><OPTION value=7>7</OPTION>
		<OPTION value=8>8</OPTION><OPTION value=9>9</OPTION>
		<OPTION  value=10>10</OPTION><OPTION value=11>11</OPTION>
		<OPTION value=12>12</OPTION></SELECT>&nbsp;月&nbsp;
		<SELECT size=1 name=csdd > 
		<OPTION value=1 selected>1</OPTION>
		<OPTION  value=2>2</OPTION><OPTION value=3>3</OPTION>
		<OPTION value=4>4</OPTION><OPTION value=5>5</OPTION>
		<OPTION  value=6>6</OPTION><OPTION value=7>7</OPTION>
		<OPTION  value=8>8</OPTION><OPTION value=9>9</OPTION>
		<OPTION  value=10>10</OPTION><OPTION value=11>11</OPTION>
		<OPTION  value=12>12</OPTION><OPTION value=13>13</OPTION>
		<OPTION value=14>14</OPTION><OPTION value=15>15</OPTION>
		<OPTION value=16>16</OPTION><OPTION value=17>17</OPTION>
		<OPTION  value=18>18</OPTION><OPTION value=19>19</OPTION>
		<OPTION value=20 >20</OPTION><OPTION value=21>21</OPTION>
		<OPTION value=22>22</OPTION><OPTION value=23>23</OPTION>
		<OPTION value=24>24</OPTION><OPTION value=25>25</OPTION>
		<OPTION value=26>26</OPTION><OPTION value=27>27</OPTION>
		<OPTION value=28>28</OPTION><OPTION value=29>29</OPTION>
		<OPTION value=30>30</OPTION><OPTION value=31>31</OPTION>
		</SELECT>&nbsp;日
		</TD>
	<td><div id="div3"></div>
			</TD>
			</tr></table>
		</TD></TR>
  <TR>
    <TD class=tdileft height=38><span class="atten">*</span>&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;龄:</TD>
    <TD class=tdiright height=38>
           <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
           <TR>
            <TD class=tdtsin>    
    <INPUT style="WIDTH: 50px; HEIGHT: 21px"  name="age"> &nbsp;岁</TD>
    	<td><div id="div4"></div>
			</TD>
			</tr></table>
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;身份证编号:</TD>
    <TD class=tdiright height=38>
      <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin>  
    <INPUT style="WIDTH: 158px; HEIGHT: 21px" name="sfzh" ></TD>
    <td><div id="div5"></div>
			</TD>
			</tr></table>
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
    <span class="atten">*</span>&nbsp;婚姻状况:</TD>
    <TD class=tdiright height=38>
         <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin>  
	<SELECT style="WIDTH: 130px" name=hyzk>
	<OPTION value=0 CHECKED>--请选择--</OPTION>
	<OPTION  value="保密">保密</OPTION>
	<OPTION value="未婚" >未婚</OPTION>
	<OPTION  value="已婚">已婚</OPTION>
	<OPTION value="离异">离异</OPTION>
	</SELECT>
	</TD>
		   <td><div id="div6"></div>
			</TD>
			</tr></table></TR>
  <TR>
    <TD class=tdileft height=38><SPAN 
    class=atten>*</SPAN>&nbsp;用户类型:</TD>
    <TD class=tdiright height=38>
            <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> 
	<INPUT  type=radio  value=学生 name=lx CHECKED>
&nbsp;学生&nbsp;&nbsp;
	<INPUT type=radio   value=社会人员 name=lx>
&nbsp;社会人员</TD>
		   <td><div id="div7"></div>
			</TD>
			</tr></table>
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
	<SPAN class=atten>*</SPAN>&nbsp;工作经验:</TD>
    <TD class=tdiright height=38>
     <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> 
    <select style="WIDTH: 130px"  name="gzjy">
      <option value=0 CHECKED>0</option>
      <option   value=1年>1年</option>
      <option value=2年>2年</option>
	  <option value=3年>3年</option>
	  <option value=4年>4年</option>
	   <option value=5年 >5年</option>
	  <option value=5年以上>5年以上</option>
    </select>    </TD>
    		   <td><div id="div8"></div>
			</TD>
			</tr></table>
    </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
	<SPAN class=atten>*</SPAN>&nbsp;户口所在地:　</TD>
    <TD class=tdiright height=38>
        <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> 
    
<SELECT  id="s11" size=1 name="sheng">
	<option value="0">=省=</option>
	</SELECT>&nbsp;省&nbsp; 
  &nbsp; <SELECT id="s22"  NAME="shi">
	<option value="0">=市=</option>
  </SELECT>&nbsp;市</TD>
     		   <td><div id="div9"></div>
			</TD>
			</tr></table>
  
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38><SPAN 
      class=atten>*</SPAN>&nbsp;现居住地:　</TD>
    <TD class=tdiright height=38>
     <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> 
    
    <SELECT id="s111" size=1 name="sheng1">
	<OPTION   value="0" SELECTED>=省=</OPTION>	
	</SELECT>&nbsp;省&nbsp; &nbsp;
	 <SELECT id="s221" NAME="shi1">
	<OPTION  VALUE="0" SELECTED>=市=
	<OPTION VALUE=""></OPTION>
  </SELECT>&nbsp;市</TD>
  <td><div id="div10"></div>
			</TD>
			</tr></table>
  
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;联系电话1:</TD>
    <TD class=tdiright height=38>
        <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> 
    <INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=dianhua1>        </TD>
    <td><div id="div11"></div>
			</TD>
			</tr></table>
    </TR>
  <TR>
    <TD class=tdileft width=140 height=38 >联系电话2:</TD>
    <TD class=tdiright height=38>
    <INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=dianhua2>      </TD>
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;通讯地址:</TD>
    <TD class=tdiright height=38>
            <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> 
    <input name="dz" style="WIDTH: 250px; HEIGHT: 21px"  ></TD>
    <td><div id="div12"></div>
			</TD>
			</tr></table>    
    </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
    
     
    <SPAN class=atten>*</SPAN>&nbsp;邮&nbsp;&nbsp;&nbsp;&nbsp;编:</TD>
    <TD class=tdtsin height=38>
    <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> 
    <input style="WIDTH: 158px; HEIGHT: 21px" name="yb">    </TD>
       <td><div id="div13"></div>
			</TD>
			</tr></table>   
    </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;自我评价:</TD>
    <TD class=tdiright height=38>
   <TABLE id=table25 cellSpacing=0 cellPadding=0 width="100%" border=0>
      
        <TR>
          <TD class=tdtsin height=22><B><FONT color=#008000>你能做什么?</FONT> 
            </B>对自身综合能力及素质进行简短评述，让招聘经理一眼就能看出“你能做什么？”<BR>  建议不要超过100字,请不要填写“工作认真负责”之类的空洞、 
          模糊的语言。</TD></TR>
        <TR>
          <TD>   
           <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  			<TR>
  			<TD > <TEXTAREA name=zwpj rows=6 cols=70 ></TEXTAREA>
  			    <td><div id="div14"></div>
			</TD>
			</tr></table> 
  			</TD>
   
   
   </TR></TABLE></TD></TR>
  <TR>
    <TD class=tdtop colSpan=2 height=28><B>教育概况</B></TD></TR>
  <TR>
    <TD class=tdileft width=140 height=38><SPAN 
    class=atten>*</SPAN>&nbsp;最高学历:</TD>
    <TD class=tdiright height=38>
        <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin>
	<SELECT size=1 name=xl >
	<OPTION value=0 selected>--请选择--</OPTION>
	<OPTION value=中专>中专</OPTION>
	<OPTION value=大专>大专</OPTION>
	<OPTION  value=本科>本科</OPTION>
	<OPTION value=研究生>研究生</OPTION>
	<OPTION   value=硕士 >硕士</OPTION>
	<OPTION value=博士>博士</OPTION>
	</SELECT></TD>
	  <td><div id="div15"></div>
			</TD>
			</tr></table>    
	
		</TR>
  <TR>
    <TD class=tdileft width=140 height=38><SPAN 
    class=atten>*</SPAN>&nbsp;在读/毕业院校</TD>
    <TD class=tdiright height=38>
           <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin>
    <INPUT style="WIDTH: 250px; HEIGHT: 21px" name="xuexiao"></TD>
    	  <td><div id="div16"></div>
			</TD>
			</tr></table>    
    </TR>
  <TR>
    <TD class=tdileft width=140 height=38><SPAN 
    class=atten>*</SPAN>&nbsp;毕业日期:</TD>
    <TD class=tdiright height=38>
              <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin>
    <SELECT size=1 name=byy > 
        <OPTION value=0 selected>请选择</OPTION> <OPTION value=2012>2012</OPTION>
		<OPTION  value=2011>2011</OPTION><OPTION value=2010 >2010</OPTION>
		<OPTION  value=2009>2009</OPTION><OPTION value=2008>2008</OPTION>
		<OPTION value=2007>2007</OPTION><OPTION value=2006>2006</OPTION>
		<OPTION  value=2005>2005</OPTION><OPTION value=2004>2004</OPTION>
		<OPTION  value=2003>2003</OPTION><OPTION value=2002>2002</OPTION>
		<OPTION value=2001>2001</OPTION><OPTION value=2000>2000</OPTION>
		<OPTION value=1999>1999</OPTION><OPTION value=1998>1998</OPTION>
		<OPTION  value=1997>1997</OPTION><OPTION value=1996>1996</OPTION>
		<OPTION  value=1995>1995</OPTION><OPTION value=1994>1994</OPTION>
		<OPTION value=1993>1993</OPTION><OPTION value=1992>1992</OPTION>
		<OPTION value=1991>1991</OPTION><OPTION value=1990>1990</OPTION>
		<OPTION value=1989>1989</OPTION><OPTION value=1988>1988</OPTION>
		<OPTION  value=1987>1987</OPTION><OPTION value=1986>1986</OPTION>
		<OPTION  value=1985>1985</OPTION><OPTION value=1984>1984</OPTION>
		<OPTION value=1983>1983</OPTION><OPTION value=1982>1982</OPTION>
		<OPTION value=1981>1981</OPTION><OPTION value=1980>1980</OPTION>
		<OPTION value=1979>1979</OPTION><OPTION value=1978>1978</OPTION>
		<OPTION  value=1977>1977</OPTION><OPTION value=1976>1976</OPTION>
		<OPTION  value=1975>1975</OPTION><OPTION value=1974>1974</OPTION>
		<OPTION value=1973>1973</OPTION><OPTION value=1972>1972</OPTION>
		<OPTION value=1971>1971</OPTION><OPTION value=1970>1970</OPTION>
		<OPTION value=1969>1969</OPTION><OPTION value=1968>1968</OPTION>
		<OPTION value=1967>1967</OPTION><OPTION value=1966>1966</OPTION>
		<OPTION value=1965>1965</OPTION><OPTION value=1964>1964</OPTION>
		<OPTION value=1963>1963</OPTION><OPTION value=1962>1962</OPTION>
		<OPTION value=1961>1961</OPTION><OPTION value=1960>1960</OPTION>
		<OPTION value=1959>1959</OPTION><OPTION value=1958>1958</OPTION>
		<OPTION  value=1957>1957</OPTION><OPTION value=1956>1956</OPTION>
		<OPTION value=1955>1955</OPTION><OPTION value=1954>1954</OPTION>
		<OPTION value=1953>1953</OPTION><OPTION value=1952>1952</OPTION>
		<OPTION value=1951>1951</OPTION><OPTION value=1950>1950</OPTION>
		<OPTION value=1949>1949</OPTION><OPTION value=1948>1948</OPTION>
		</SELECT> 
      年 7 月</TD>
       	  <td><div id="div17"></div>
			</TD>
			</tr></table>      
      
      </TR>
  <TR>
    <TD class=tdileft width=140 height=38>              
    <SPAN  class=atten>*</SPAN>&nbsp;主修专业类别:</TD>
    <TD class=tdiright height=38>
     <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin>
    <select size=1 name=zxzyl >
      <option value="0" selected>==请选择您的主修专业==</option>
      <option value="管理科学与工程类">管理科学与工程类</option>
      <option value="工商管理类">工商管理类</option>
      <option value="公共管理类">公共管理类</option>
      <option value="图书档案学">图书档案学类</option>
      <option value="电子信息类">电子信息类</option>
      <OPTION VALUE="计算机类">计算机类</OPTION>
      <option value="机械类">机械类</option>
      <option value="仪器仪表类">仪器仪表类</option>
      <option value="能源动力类">能源动力类</option>
      <option value="材料类">材料类</option>
      <option value="轻工纺织食品类">轻工纺织食品类</option>
      <option value="土建类">土建类</option>
      <option value="环境科学与安全类">环境科学与安全类</option>
      <option value="制药工程类">制药工程类</option>
      <option value="交通运输类">交通运输类</option>
      <option value="航空航天类">航空航天类</option>
      <option value="水利类">水利类</option>
      <option value="公安技术类">公安技术类</option>
      <option value="数学类">数学类</option>
      <option value="物理学类">物理学类</option>
      <option value="化学类">化学类</option>
      <option value="生物类">生物类</option>
      <option value="天文地质地理类">天文地质地理类</option>
      <option value="经济学类">经济学类</option>
      <option value="语言学类">语言学类</option>
      <option value="艺术类">艺术类</option>
      <option value="法学类">法学类</option>
      <option value="哲学类">哲学类</option>
      <option value="教育学类">教育学类</option>
      <option value="医学类">医学类</option>
      <option value="农业类">农业类</option>
      <option value="历史学类">历史学类</option>
    </select>    </TD>
          	  <td><div id="div18"></div>
			</TD>
			</tr></table>      
    </TR>
  <TR>
    <TD class=tdileft height=38>
	<SPAN  class=atten>*</SPAN>&nbsp;求学工作经历:</TD>
    <TD class=tdiright height=38><TABLE id=table24 cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TR>
          <TD class=tdtsin 
            height=45>如是学生,可填写实习、兼职等实践经验及社团活动。最长1000字。<BR>
            <FONT color=#008000>“工作简述”请强调参与哪些重要项目/事务,突出个人工作业绩。</FONT></TD>
        </TR>
      <TD >             <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD ><textarea name="qiuxiu" cols=70  rows=6 ></textarea>
   <td><div id="div19"></div>
			</TD>
			</tr></table>       </TD>

    </TABLE></TD>
  </TR>
  <TR>
    <TD class=tdtop colSpan=2 height=23><B>特殊技能</B></TD>
  </TR>
  <TR>
    <TD class=tdileft height=38>所学语言:</TD>
    <TD class=tdiright height=38><span class="tdtsin">
      <input name="yy" style="WIDTH: 158px; HEIGHT: 21px" >
    </span></TD>
  </TR>
  <TR>
    <TD class=tdileft height=38>所学语言水平:</TD>
    <TD class=tdiright height=38><SELECT style="WIDTH: 130px" 
        name=yysp>
      <OPTION value="">--请选择--</OPTION>
      <OPTION value="优秀">优秀</OPTION>
      <OPTION value="良好" >良好</OPTION>
      <OPTION value="一般">一般</OPTION>
      <OPTION value="较差">较差</OPTION>
    </SELECT>
    </TD>
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>技术名称:</TD>
    <TD class=tdiright height=38><span class="tdtsin">
      <input name="jsmc" style="WIDTH: 158px; HEIGHT: 21px">
    </span></TD></TR>
  <TR>
    <TD class=tdileft width=140 height=38>技能使用时间：</TD>
    <TD class=tdiright height=38><B><LABEL 
      id=chk_conl><span class="tdtsin">
      <input name="jsysj" style="WIDTH: 158px; HEIGHT: 21px">
      可以写你用了多少年（从学习之日算起）</span></LABEL>
    </B></TD></TR>
  <TR>
    <TD class=tdileft width=140 height=50>　</TD>
    <TD class=tdiright height=45><INPUT class=login_btn1 style="WIDTH: 180px" type=button value=保存信息 onclick="tiJiao()"></TD></TR></TABLE></FORM>

</BODY></HTML>
  <SCRIPT LANGUAGE="JavaScript">
  <!--
  
  function shengshi()
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
	function tiJiao()
	{
		var name=document.getElementById("name");
		var age=document.getElementById("age");
		var sfzh=document.getElementById("sfzh");
		var hyzk=document.getElementById("hyzk");
		var sheng=document.getElementById("sheng");
		var shi=document.getElementById("shi");
		var sheng1=document.getElementById("sheng1");
		var shi1=document.getElementById("shi1");
		var dianhua1=document.getElementById("dianhua1");	
		var dz=document.getElementById("dz");
		var yb=document.getElementById("yb");
		var zwpj=document.getElementById("zwpj");
		var xl=document.getElementById("xl");
		var xuexiao=document.getElementById("xuexiao");
		var byy=document.getElementById("byy");	
		var zxzyl=document.getElementById("zxzyl");
		var qiuxiu=document.getElementById("qiuxiu");
		if(name.value=="")
		{		
			div1.innerHTML="<span style='color:red'>名字不能为空<span>";
			return;
		}else{
			div1.innerHTML="";
		}
		if(age.value=="")
		{
			div4.innerHTML="<span style='color:red'>年龄不能为空<span>";
			return;
		}
		else{
			div4.innerHTML="";
		}
		if(ChkUtil.isPlusInteger(age.value)==false)
		{
			div4.innerHTML="<span style='color:red'>年龄必须为正整数<span>";
			return;
		}
		else{
			div4.innerHTML="";
		}
		if(sfzh.value=="")
		{
			div5.innerHTML="<span style='color:red'>身体证号不能为空<span>";
			return;
		}
		else{
			div5.innerHTML="";
		}
		if(sfzh.value.length!="15"&&sfzh.value.length!="18")
		{
			div5.innerHTML="<span style='color:red'>身体证号长度有误<span>";
			return;
		}
		else{
			div5.innerHTML="";
		}
		if(hyzk.value=="0")
		{
			div6.innerHTML="<span style='color:red'>婚姻状况未选<span>";
			return;
		}
		else{
			div6.innerHTML="";
		}
		if(sheng.value=="=省="&&shi.value=="=市=")
		{
			div9.innerHTML="<span style='color:red'>户口所在地必选<span>";
			return;
		}
		else{
			div9.innerHTML="";
		}
		if(sheng1.value=="=省="||shi1.value=="=市=")
		{
			div10.innerHTML="<span style='color:red'>现居住地必选<span>";
			return;
		}
		else{
			div10.innerHTML="";
		}
		if(dianhua1.value=="")
		{
			div11.innerHTML="<span style='color:red'>联系电话为空 <span>";
			return;
		}
		else{
			div11.innerHTML="";
		}
		if(dz.value=="")
		{
			div12.innerHTML="<span style='color:red'>通讯地址为空<span>";
			return;
		}
		else{
			div12.innerHTML="";
		}
		if(yb.value=="")
		{
			div13.innerHTML="<span style='color:red'>邮编为空<span>";
			return;
		}
		else{
			div13.innerHTML="";
		}
		if(ChkUtil.isZipCode(yb.value)==false)
		{
			div13.innerHTML="<span style='color:red'>邮编格式不正确<span>";
			return;
		}
		else{
			div13.innerHTML="";
		}
		if(zwpj.value=="")
		{
			div14.innerHTML="<span style='color:red'>自我评价为空<span>";
			return;
		}
		else{
			div14.innerHTML="";
		}
		if(xl.value=="0")
		{
			div15.innerHTML="<span style='color:red'>自我评价未选<span>";
			return;
		}
		else{
			div15.innerHTML="";
		}
			if(xuexiao.value=="")
		{
			div16.innerHTML="<span style='color:red'>在读/毕业院校为空<span>";
			return;
		}
		else{
			div16.innerHTML="";
		}
			if(byy.value=="0")
		{
			div17.innerHTML="<span style='color:red'>毕业时间未选<span>";
			return;
		}
		else{
			div17.innerHTML="";
		}
			if(zxzyl.value=="0")
		{
			div18.innerHTML="<span style='color:red'>主修专业类别未选<span>";
			return;
		}
		else{
			div18.innerHTML="";
		}
			if(qiuxiu.value=="")
		{
			div19.innerHTML="<span style='color:red'>求学工作经历为空<span>";
			return;
		}
		else{
			div19.innerHTML="";
		}
			if(qiuxiu.value.length>=200)
		{
			div19.innerHTML="<span style='color:red'>求学工作经历过长<span>";
			return;
		}
		else{
			div19.innerHTML="";
		}

		
		document.forms[0].actionType.value="addjibenxinxi" ;
		document.forms[0].action="<%=request.getContextPath()%>/gerenjibenxinxi";
		document.forms[0].submit();


		
	}
  //-->
  </SCRIPT>			