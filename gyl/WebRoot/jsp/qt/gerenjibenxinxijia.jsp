<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<HTML><HEAD><TITLE>���˼���</TITLE>

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
    <TD class=tdtit height=30><B>��д���˼���--���˻�����Ϣ</B>
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
    <TD class=tdtop colSpan=2 height=23><B>������Ϣ</B></TD></TR>

  <TR>
    <TD class=tdileft width=140 height=38>
	<SPAN class=atten>*</SPAN>&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;��:</TD>
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
	<SPAN  class=atten>*</SPAN>&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;��:</TD>
    <TD class=tdiright height=38>
		    <table  cellSpacing=0 cellPadding=0 width="100%"  border=0>
		       <TR>
			     <TD class=tdtsin>  
						 <INPUT type=radio  value=�� name=sex CHECKED>
					      &nbsp;��&nbsp;&nbsp;
					      <INPUT type=radio   value=Ů name=sex>
					      &nbsp;Ů</TD>
					<td><div id="div2"></div></TD>
			
			   	</TR>
		</table>
	</TD>
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;��������:</TD>
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
		<OPTION  value=1930>1930</OPTION></SELECT>&nbsp;��&nbsp;
		<SELECT size=1 name=csmm > 
		<OPTION value=1 selected>1</OPTION>
		<OPTION  value=2>2</OPTION><OPTION value=3>3</OPTION>
		<OPTION value=4 >4</OPTION><OPTION value=5>5</OPTION>
		<OPTION  value=6>6</OPTION><OPTION value=7>7</OPTION>
		<OPTION value=8>8</OPTION><OPTION value=9>9</OPTION>
		<OPTION  value=10>10</OPTION><OPTION value=11>11</OPTION>
		<OPTION value=12>12</OPTION></SELECT>&nbsp;��&nbsp;
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
		</SELECT>&nbsp;��
		</TD>
	<td><div id="div3"></div>
			</TD>
			</tr></table>
		</TD></TR>
  <TR>
    <TD class=tdileft height=38><span class="atten">*</span>&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;��:</TD>
    <TD class=tdiright height=38>
           <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
           <TR>
            <TD class=tdtsin>    
    <INPUT style="WIDTH: 50px; HEIGHT: 21px"  name="age"> &nbsp;��</TD>
    	<td><div id="div4"></div>
			</TD>
			</tr></table>
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;���֤���:</TD>
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
    <span class="atten">*</span>&nbsp;����״��:</TD>
    <TD class=tdiright height=38>
         <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin>  
	<SELECT style="WIDTH: 130px" name=hyzk>
	<OPTION value=0 CHECKED>--��ѡ��--</OPTION>
	<OPTION  value="����">����</OPTION>
	<OPTION value="δ��" >δ��</OPTION>
	<OPTION  value="�ѻ�">�ѻ�</OPTION>
	<OPTION value="����">����</OPTION>
	</SELECT>
	</TD>
		   <td><div id="div6"></div>
			</TD>
			</tr></table></TR>
  <TR>
    <TD class=tdileft height=38><SPAN 
    class=atten>*</SPAN>&nbsp;�û�����:</TD>
    <TD class=tdiright height=38>
            <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> 
	<INPUT  type=radio  value=ѧ�� name=lx CHECKED>
&nbsp;ѧ��&nbsp;&nbsp;
	<INPUT type=radio   value=�����Ա name=lx>
&nbsp;�����Ա</TD>
		   <td><div id="div7"></div>
			</TD>
			</tr></table>
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
	<SPAN class=atten>*</SPAN>&nbsp;��������:</TD>
    <TD class=tdiright height=38>
     <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> 
    <select style="WIDTH: 130px"  name="gzjy">
      <option value=0 CHECKED>0</option>
      <option   value=1��>1��</option>
      <option value=2��>2��</option>
	  <option value=3��>3��</option>
	  <option value=4��>4��</option>
	   <option value=5�� >5��</option>
	  <option value=5������>5������</option>
    </select>    </TD>
    		   <td><div id="div8"></div>
			</TD>
			</tr></table>
    </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
	<SPAN class=atten>*</SPAN>&nbsp;�������ڵ�:��</TD>
    <TD class=tdiright height=38>
        <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> 
    
<SELECT  id="s11" size=1 name="sheng">
	<option value="0">=ʡ=</option>
	</SELECT>&nbsp;ʡ&nbsp; 
  &nbsp; <SELECT id="s22"  NAME="shi">
	<option value="0">=��=</option>
  </SELECT>&nbsp;��</TD>
     		   <td><div id="div9"></div>
			</TD>
			</tr></table>
  
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38><SPAN 
      class=atten>*</SPAN>&nbsp;�־�ס��:��</TD>
    <TD class=tdiright height=38>
     <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> 
    
    <SELECT id="s111" size=1 name="sheng1">
	<OPTION   value="0" SELECTED>=ʡ=</OPTION>	
	</SELECT>&nbsp;ʡ&nbsp; &nbsp;
	 <SELECT id="s221" NAME="shi1">
	<OPTION  VALUE="0" SELECTED>=��=
	<OPTION VALUE=""></OPTION>
  </SELECT>&nbsp;��</TD>
  <td><div id="div10"></div>
			</TD>
			</tr></table>
  
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;��ϵ�绰1:</TD>
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
    <TD class=tdileft width=140 height=38 >��ϵ�绰2:</TD>
    <TD class=tdiright height=38>
    <INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=dianhua2>      </TD>
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;ͨѶ��ַ:</TD>
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
    
     
    <SPAN class=atten>*</SPAN>&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;��:</TD>
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
    <SPAN  class=atten>*</SPAN>&nbsp;��������:</TD>
    <TD class=tdiright height=38>
   <TABLE id=table25 cellSpacing=0 cellPadding=0 width="100%" border=0>
      
        <TR>
          <TD class=tdtsin height=22><B><FONT color=#008000>������ʲô?</FONT> 
            </B>�������ۺ����������ʽ��м������������Ƹ����һ�۾��ܿ�����������ʲô����<BR>  ���鲻Ҫ����100��,�벻Ҫ��д���������渺��֮��Ŀն��� 
          ģ�������ԡ�</TD></TR>
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
    <TD class=tdtop colSpan=2 height=28><B>�����ſ�</B></TD></TR>
  <TR>
    <TD class=tdileft width=140 height=38><SPAN 
    class=atten>*</SPAN>&nbsp;���ѧ��:</TD>
    <TD class=tdiright height=38>
        <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin>
	<SELECT size=1 name=xl >
	<OPTION value=0 selected>--��ѡ��--</OPTION>
	<OPTION value=��ר>��ר</OPTION>
	<OPTION value=��ר>��ר</OPTION>
	<OPTION  value=����>����</OPTION>
	<OPTION value=�о���>�о���</OPTION>
	<OPTION   value=˶ʿ >˶ʿ</OPTION>
	<OPTION value=��ʿ>��ʿ</OPTION>
	</SELECT></TD>
	  <td><div id="div15"></div>
			</TD>
			</tr></table>    
	
		</TR>
  <TR>
    <TD class=tdileft width=140 height=38><SPAN 
    class=atten>*</SPAN>&nbsp;�ڶ�/��ҵԺУ</TD>
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
    class=atten>*</SPAN>&nbsp;��ҵ����:</TD>
    <TD class=tdiright height=38>
              <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin>
    <SELECT size=1 name=byy > 
        <OPTION value=0 selected>��ѡ��</OPTION> <OPTION value=2012>2012</OPTION>
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
      �� 7 ��</TD>
       	  <td><div id="div17"></div>
			</TD>
			</tr></table>      
      
      </TR>
  <TR>
    <TD class=tdileft width=140 height=38>              
    <SPAN  class=atten>*</SPAN>&nbsp;����רҵ���:</TD>
    <TD class=tdiright height=38>
     <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin>
    <select size=1 name=zxzyl >
      <option value="0" selected>==��ѡ����������רҵ==</option>
      <option value="�����ѧ�빤����">�����ѧ�빤����</option>
      <option value="���̹�����">���̹�����</option>
      <option value="����������">����������</option>
      <option value="ͼ�鵵��ѧ">ͼ�鵵��ѧ��</option>
      <option value="������Ϣ��">������Ϣ��</option>
      <OPTION VALUE="�������">�������</OPTION>
      <option value="��е��">��е��</option>
      <option value="�����Ǳ���">�����Ǳ���</option>
      <option value="��Դ������">��Դ������</option>
      <option value="������">������</option>
      <option value="�Ṥ��֯ʳƷ��">�Ṥ��֯ʳƷ��</option>
      <option value="������">������</option>
      <option value="������ѧ�밲ȫ��">������ѧ�밲ȫ��</option>
      <option value="��ҩ������">��ҩ������</option>
      <option value="��ͨ������">��ͨ������</option>
      <option value="���պ�����">���պ�����</option>
      <option value="ˮ����">ˮ����</option>
      <option value="����������">����������</option>
      <option value="��ѧ��">��ѧ��</option>
      <option value="����ѧ��">����ѧ��</option>
      <option value="��ѧ��">��ѧ��</option>
      <option value="������">������</option>
      <option value="���ĵ��ʵ�����">���ĵ��ʵ�����</option>
      <option value="����ѧ��">����ѧ��</option>
      <option value="����ѧ��">����ѧ��</option>
      <option value="������">������</option>
      <option value="��ѧ��">��ѧ��</option>
      <option value="��ѧ��">��ѧ��</option>
      <option value="����ѧ��">����ѧ��</option>
      <option value="ҽѧ��">ҽѧ��</option>
      <option value="ũҵ��">ũҵ��</option>
      <option value="��ʷѧ��">��ʷѧ��</option>
    </select>    </TD>
          	  <td><div id="div18"></div>
			</TD>
			</tr></table>      
    </TR>
  <TR>
    <TD class=tdileft height=38>
	<SPAN  class=atten>*</SPAN>&nbsp;��ѧ��������:</TD>
    <TD class=tdiright height=38><TABLE id=table24 cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TR>
          <TD class=tdtsin 
            height=45>����ѧ��,����дʵϰ����ְ��ʵ�����鼰���Ż���1000�֡�<BR>
            <FONT color=#008000>��������������ǿ��������Щ��Ҫ��Ŀ/����,ͻ�����˹���ҵ����</FONT></TD>
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
    <TD class=tdtop colSpan=2 height=23><B>���⼼��</B></TD>
  </TR>
  <TR>
    <TD class=tdileft height=38>��ѧ����:</TD>
    <TD class=tdiright height=38><span class="tdtsin">
      <input name="yy" style="WIDTH: 158px; HEIGHT: 21px" >
    </span></TD>
  </TR>
  <TR>
    <TD class=tdileft height=38>��ѧ����ˮƽ:</TD>
    <TD class=tdiright height=38><SELECT style="WIDTH: 130px" 
        name=yysp>
      <OPTION value="">--��ѡ��--</OPTION>
      <OPTION value="����">����</OPTION>
      <OPTION value="����" >����</OPTION>
      <OPTION value="һ��">һ��</OPTION>
      <OPTION value="�ϲ�">�ϲ�</OPTION>
    </SELECT>
    </TD>
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>��������:</TD>
    <TD class=tdiright height=38><span class="tdtsin">
      <input name="jsmc" style="WIDTH: 158px; HEIGHT: 21px">
    </span></TD></TR>
  <TR>
    <TD class=tdileft width=140 height=38>����ʹ��ʱ�䣺</TD>
    <TD class=tdiright height=38><B><LABEL 
      id=chk_conl><span class="tdtsin">
      <input name="jsysj" style="WIDTH: 158px; HEIGHT: 21px">
      ����д�����˶����꣨��ѧϰ֮������</span></LABEL>
    </B></TD></TR>
  <TR>
    <TD class=tdileft width=140 height=50>��</TD>
    <TD class=tdiright height=45><INPUT class=login_btn1 style="WIDTH: 180px" type=button value=������Ϣ onclick="tiJiao()"></TD></TR></TABLE></FORM>

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
			div1.innerHTML="<span style='color:red'>���ֲ���Ϊ��<span>";
			return;
		}else{
			div1.innerHTML="";
		}
		if(age.value=="")
		{
			div4.innerHTML="<span style='color:red'>���䲻��Ϊ��<span>";
			return;
		}
		else{
			div4.innerHTML="";
		}
		if(ChkUtil.isPlusInteger(age.value)==false)
		{
			div4.innerHTML="<span style='color:red'>�������Ϊ������<span>";
			return;
		}
		else{
			div4.innerHTML="";
		}
		if(sfzh.value=="")
		{
			div5.innerHTML="<span style='color:red'>����֤�Ų���Ϊ��<span>";
			return;
		}
		else{
			div5.innerHTML="";
		}
		if(sfzh.value.length!="15"&&sfzh.value.length!="18")
		{
			div5.innerHTML="<span style='color:red'>����֤�ų�������<span>";
			return;
		}
		else{
			div5.innerHTML="";
		}
		if(hyzk.value=="0")
		{
			div6.innerHTML="<span style='color:red'>����״��δѡ<span>";
			return;
		}
		else{
			div6.innerHTML="";
		}
		if(sheng.value=="=ʡ="&&shi.value=="=��=")
		{
			div9.innerHTML="<span style='color:red'>�������ڵر�ѡ<span>";
			return;
		}
		else{
			div9.innerHTML="";
		}
		if(sheng1.value=="=ʡ="||shi1.value=="=��=")
		{
			div10.innerHTML="<span style='color:red'>�־�ס�ر�ѡ<span>";
			return;
		}
		else{
			div10.innerHTML="";
		}
		if(dianhua1.value=="")
		{
			div11.innerHTML="<span style='color:red'>��ϵ�绰Ϊ�� <span>";
			return;
		}
		else{
			div11.innerHTML="";
		}
		if(dz.value=="")
		{
			div12.innerHTML="<span style='color:red'>ͨѶ��ַΪ��<span>";
			return;
		}
		else{
			div12.innerHTML="";
		}
		if(yb.value=="")
		{
			div13.innerHTML="<span style='color:red'>�ʱ�Ϊ��<span>";
			return;
		}
		else{
			div13.innerHTML="";
		}
		if(ChkUtil.isZipCode(yb.value)==false)
		{
			div13.innerHTML="<span style='color:red'>�ʱ��ʽ����ȷ<span>";
			return;
		}
		else{
			div13.innerHTML="";
		}
		if(zwpj.value=="")
		{
			div14.innerHTML="<span style='color:red'>��������Ϊ��<span>";
			return;
		}
		else{
			div14.innerHTML="";
		}
		if(xl.value=="0")
		{
			div15.innerHTML="<span style='color:red'>��������δѡ<span>";
			return;
		}
		else{
			div15.innerHTML="";
		}
			if(xuexiao.value=="")
		{
			div16.innerHTML="<span style='color:red'>�ڶ�/��ҵԺУΪ��<span>";
			return;
		}
		else{
			div16.innerHTML="";
		}
			if(byy.value=="0")
		{
			div17.innerHTML="<span style='color:red'>��ҵʱ��δѡ<span>";
			return;
		}
		else{
			div17.innerHTML="";
		}
			if(zxzyl.value=="0")
		{
			div18.innerHTML="<span style='color:red'>����רҵ���δѡ<span>";
			return;
		}
		else{
			div18.innerHTML="";
		}
			if(qiuxiu.value=="")
		{
			div19.innerHTML="<span style='color:red'>��ѧ��������Ϊ��<span>";
			return;
		}
		else{
			div19.innerHTML="";
		}
			if(qiuxiu.value.length>=200)
		{
			div19.innerHTML="<span style='color:red'>��ѧ������������<span>";
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