<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<HTML><HEAD><TITLE>���˼���</TITLE>

<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<SCRIPT src="<%=request.getContextPath() %>/js/chkUtil.js" type=text/javascript></SCRIPT>
<SCRIPT src="<%=request.getContextPath() %>/js/common.js" type=text/javascript></SCRIPT>
</HEAD>
<BODY   onload="shengshi()">
<%
		List gerenlist=(List)request.getAttribute("gerenlist");
			Map gerenmap=(Map)gerenlist.get(0);	
			String id=(String)gerenmap.get("user_info_id");	
			System.out.println("======="+id);
		%>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdtit height=30><B>�޸ĸ��˼���--���˻�����Ϣ</B>
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
          <INPUT style="WIDTH: 158px; HEIGHT: 21px" name="name" value="<%=(String)gerenmap.get("resume_name") %>"> </TD>
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
						 <INPUT type=radio   name=sex value="��" <%if(null!=gerenmap.get("resume_sex")){if(gerenmap.get("resume_sex").equals("��")){ %>CHECKED<% }}%>>
					      &nbsp;��&nbsp;&nbsp;
					      <INPUT type=radio   value="Ů" <%if(null!=gerenmap.get("resume_sex")){if(gerenmap.get("resume_sex").equals("Ů")){ %> CHECKED<%  }}%> name=sex >
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
            <%
            	String rq=gerenmap.get("resume_birth").toString();
            	String nian=rq.substring(0,4);
            	String yue=rq.substring(5,7);
            	String ri=rq.substring(8,10);
            	System.out.println(ri);
             %>
	<SELECT size=1 name=csyy >
	<%for(int i=1930;i<2000;i++) {%>
	
        <OPTION value="<%=i %>" <%=(Integer.parseInt(nian)==i)?"selected":""%>><%=i %></OPTION>
        <%} %>
        </SELECT>&nbsp;��&nbsp;
		<SELECT size=1 name=csmm > 
		<%for(int i=1;i<13;i++) {%>
	
        <OPTION value="<%=i %>" <%=(Integer.parseInt(yue)==i)?"selected":""%>><%=i %></OPTION>
        <%} %>
		
		</SELECT>&nbsp;��&nbsp;
		<SELECT size=1 name=csdd > 
		<%for(int i=1;i<32;i++) {%>
	
        <OPTION value="<%=i %>" <%=(Integer.parseInt(ri)==i)?"selected":""%>><%=i %></OPTION>
        <%} %>
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
    <INPUT style="WIDTH: 50px; HEIGHT: 21px"  name="age" value="<%=(String)gerenmap.get("resume_age") %>"> &nbsp;��</TD>
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
    <INPUT style="WIDTH: 158px; HEIGHT: 21px" name="sfzh" value="<%=(String)gerenmap.get("identity_num") %>"></TD>
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
	<OPTION value=0 >--��ѡ��--</OPTION>
	<OPTION  value="����" <%=(gerenmap.get("marital_status").equals("����"))?"selected":""%>>����</OPTION>
	<OPTION value="δ��" <%=(gerenmap.get("marital_status").equals("δ��"))?"selected":""%>>δ��</OPTION>
	<OPTION  value="�ѻ�" <%=(gerenmap.get("marital_status").equals("�ѻ�"))?"selected":""%>>�ѻ�</OPTION>
	<OPTION value="����" <%=(gerenmap.get("marital_status").equals("����"))?"selected":""%>>����</OPTION>
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
	<INPUT  type=radio  value=ѧ�� name=lx <%if(null!=gerenmap.get("stu_or_social")){if(gerenmap.get("stu_or_social").equals("ѧ��")){ %>CHECKED<% }}%>>
&nbsp;ѧ��&nbsp;&nbsp;
	<INPUT type=radio   value=�����Ա name=lx <%if(null!=gerenmap.get("stu_or_social")){if(gerenmap.get("stu_or_social").equals("�����Ա")){ %>CHECKED<% }}%>>
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
      <option value=0 <%=(gerenmap.get("work_year").equals("0"))?"selected":""%>>0</option>
      <option   value=1�� <%=(gerenmap.get("work_year").equals("1��"))?"selected":""%>>1��</option>
      <option value=2�� <%=(gerenmap.get("work_year").equals("2��"))?"selected":""%>>2��</option>
	  <option value=3�� <%=(gerenmap.get("work_year").equals("3��"))?"selected":""%>>3��</option>
	  <option value=4�� <%=(gerenmap.get("work_year").equals("4��"))?"selected":""%>>4��</option>
	   <option value=5�� <%=(gerenmap.get("work_year").equals("5��"))?"selected":""%>>5��</option>
	  <option value=5������ <%=(gerenmap.get("work_year").equals("5������"))?"selected":""%>>5������</option>
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
    <INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=dianhua1 value="<%=(String)gerenmap.get("telephone1") %>">        </TD>
    <td><div id="div11"></div>
			</TD>
			</tr></table>
    </TR>
  <TR>
    <TD class=tdileft width=140 height=38 >��ϵ�绰2:</TD>
    <TD class=tdiright height=38>
    <INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=dianhua2 value="<%=(String)gerenmap.get("telephone2") %>">      </TD>
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;ͨѶ��ַ:</TD>
    <TD class=tdiright height=38>
            <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> 
    <input name="dz" style="WIDTH: 250px; HEIGHT: 21px"  value="<%=(String)gerenmap.get("contact_address") %>"></TD>
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
    <input style="WIDTH: 158px; HEIGHT: 21px" name="yb" value="<%=(String)gerenmap.get("post_code") %>">    </TD>
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
  			<TD > <TEXTAREA name=zwpj rows=6 cols=70 ><%=(String)gerenmap.get("self_assess") %></TEXTAREA>
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
	<OPTION value=0 >--��ѡ��--</OPTION>
	<OPTION value=��ר <%=(gerenmap.get("educational_level").equals("��ר"))?"selected":""%>>��ר</OPTION>
	<OPTION value=��ר <%=(gerenmap.get("educational_level").equals("��ר"))?"selected":""%>>��ר</OPTION>
	<OPTION  value=���� <%=(gerenmap.get("educational_level").equals("����"))?"selected":""%>>����</OPTION>
	<OPTION value=�о��� <%=(gerenmap.get("educational_level").equals("�о���"))?"selected":""%>>�о���</OPTION>
	<OPTION   value=˶ʿ <%=(gerenmap.get("educational_level").equals("˶ʿ"))?"selected":""%>>˶ʿ</OPTION>
	<OPTION value=��ʿ <%=(gerenmap.get("educational_level").equals("��ʿ"))?"selected":""%>>��ʿ</OPTION>
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
    <INPUT style="WIDTH: 250px; HEIGHT: 21px" name="xuexiao" value="<%=(String)gerenmap.get("graduate_school") %>"></TD>
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
         <%
      	String byrq=gerenmap.get("graduate_date").toString();
      	String byyr=byrq.substring(0,4);
      	System.out.println(byyr);
       %>
    <SELECT size=1 name=byy > 
	<%for(int b=1948;b<2012;b++) {%>
	
        <OPTION value="<%=b %>" <%=(Integer.parseInt(byyr)==b)?"selected":""%>><%=b %></OPTION>
        <%} %>
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
      <option value="0" <%=(gerenmap.get("major").equals("0"))?"selected":""%>>==��ѡ����������רҵ==</option>
      <option value="�����ѧ�빤����" <%=(gerenmap.get("major").equals("�����ѧ�빤����"))?"selected":""%>>�����ѧ�빤����</option>
      <option value="���̹�����" <%=(gerenmap.get("major").equals("���̹�����"))?"selected":""%>>���̹�����</option>
      <option value="����������" <%=(gerenmap.get("major").equals("����������"))?"selected":""%>>����������</option>
      <option value="ͼ�鵵��ѧ" <%=(gerenmap.get("major").equals("ͼ�鵵��ѧ"))?"selected":""%>>ͼ�鵵��ѧ��</option>
      <option value="������Ϣ��" <%=(gerenmap.get("major").equals("������Ϣ��"))?"selected":""%>>������Ϣ��</option>
      <OPTION VALUE="�������" <%=(gerenmap.get("major").equals("�������"))?"selected":""%>>�������</OPTION>
      <option value="��е��" <%=(gerenmap.get("major").equals("��е��"))?"selected":""%>>��е��</option>
      <option value="�����Ǳ���" <%=(gerenmap.get("major").equals("�����Ǳ���"))?"selected":""%>>�����Ǳ���</option>
      <option value="��Դ������" <%=(gerenmap.get("major").equals("��Դ������"))?"selected":""%>>��Դ������</option>
      <option value="������" <%=(gerenmap.get("major").equals("������"))?"selected":""%>>������</option>
      <option value="�Ṥ��֯ʳƷ��" <%=(gerenmap.get("major").equals("�Ṥ��֯ʳƷ��"))?"selected":""%>>�Ṥ��֯ʳƷ��</option>
      <option value="������" <%=(gerenmap.get("major").equals("������"))?"selected":""%>>������</option>
      <option value="������ѧ�밲ȫ��" <%=(gerenmap.get("major").equals("������ѧ�밲ȫ��"))?"selected":""%>>������ѧ�밲ȫ��</option>
      <option value="��ҩ������" <%=(gerenmap.get("major").equals("��ҩ������"))?"selected":""%>>��ҩ������</option>
      <option value="��ͨ������" <%=(gerenmap.get("major").equals("��ͨ������"))?"selected":""%>>��ͨ������</option>
      <option value="���պ�����" <%=(gerenmap.get("major").equals("���պ�����"))?"selected":""%>>���պ�����</option>
      <option value="ˮ����" <%=(gerenmap.get("major").equals("ˮ����"))?"selected":""%>>ˮ����</option>
      <option value="����������" <%=(gerenmap.get("major").equals("����������"))?"selected":""%>>����������</option>
      <option value="��ѧ��" <%=(gerenmap.get("major").equals("��ѧ��"))?"selected":""%>>��ѧ��</option>
      <option value="����ѧ��" <%=(gerenmap.get("major").equals("����ѧ��"))?"selected":""%>>����ѧ��</option>
      <option value="��ѧ��" <%=(gerenmap.get("major").equals("��ѧ��"))?"selected":""%>>��ѧ��</option>
      <option value="������" <%=(gerenmap.get("major").equals("������"))?"selected":""%>>������</option>
      <option value="���ĵ��ʵ�����" <%=(gerenmap.get("major").equals("���ĵ��ʵ�����"))?"selected":""%>>���ĵ��ʵ�����</option>
      <option value="����ѧ��" <%=(gerenmap.get("major").equals("����ѧ��"))?"selected":""%>>����ѧ��</option>
      <option value="����ѧ��" <%=(gerenmap.get("major").equals("����ѧ��"))?"selected":""%>>����ѧ��</option>
      <option value="������" <%=(gerenmap.get("major").equals("������"))?"selected":""%>>������</option>
      <option value="��ѧ��" <%=(gerenmap.get("major").equals("��ѧ��"))?"selected":""%>>��ѧ��</option>
      <option value="��ѧ��" <%=(gerenmap.get("major").equals("��ѧ��"))?"selected":""%>>��ѧ��</option>
      <option value="����ѧ��" <%=(gerenmap.get("major").equals("����ѧ��"))?"selected":""%>>����ѧ��</option>
      <option value="ҽѧ��" <%=(gerenmap.get("major").equals("ҽѧ��"))?"selected":""%>>ҽѧ��</option>
      <option value="ũҵ��" <%=(gerenmap.get("major").equals("ũҵ��"))?"selected":""%>>ũҵ��</option>
      <option value="��ʷѧ��" <%=(gerenmap.get("major").equals("��ʷѧ��"))?"selected":""%>>��ʷѧ��</option>
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
   <TD ><textarea name="qiuxiu" cols=70  rows=6 ><%=(String)gerenmap.get("study_history") %></textarea>
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
      <input name="yy" style="WIDTH: 158px; HEIGHT: 21px" value="<%=(String)gerenmap.get("user_language")%>">
    </span></TD>
  </TR>
  <TR>
    <TD class=tdileft height=38>��ѧ����ˮƽ:</TD>
    <TD class=tdiright height=38><SELECT style="WIDTH: 130px" 
        name=yysp>
      <OPTION value="">--��ѡ��--</OPTION>
      <OPTION value="����" <%=(gerenmap.get("user_language_ability").equals("����"))?"selected":""%>>����</OPTION>
      <OPTION value="����" <%=(gerenmap.get("user_language_ability").equals("����"))?"selected":""%>>����</OPTION>
      <OPTION value="һ��" <%=(gerenmap.get("user_language_ability").equals("һ��"))?"selected":""%>>һ��</OPTION>
      <OPTION value="�ϲ�" <%=(gerenmap.get("user_language_ability").equals("�ϲ�"))?"selected":""%>>�ϲ�</OPTION>
    </SELECT>
    </TD>
  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>��������:</TD>
    <TD class=tdiright height=38><span class="tdtsin">
      <input name="jsmc" style="WIDTH: 158px; HEIGHT: 21px" value="<%=(String)gerenmap.get("special_expertise") %>">
    </span></TD></TR>
  <TR>
    <TD class=tdileft width=140 height=38>����ʹ��ʱ�䣺</TD>
    <TD class=tdiright height=38><B><LABEL 
      id=chk_conl><span class="tdtsin">
      <input name="jsysj" style="WIDTH: 158px; HEIGHT: 21px" value="<%=(String)gerenmap.get("special_use_time") %>">
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
			var x=0
			for(var c=0;c<dsy.Items["0"].length;c++)
			{
				if(dsy.Items["0"][c]=='<%=gerenmap.get("account_place1")%>')
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
	            if(dsy.Items["0_"+(x-1)][d-1]=='<%=gerenmap.get("account_place2")%>')
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
			var x1=0
			for(var c1=0;c1<dsy1.Items["0"].length;c1++)
			{
				if(dsy1.Items["0"][c1]=='<%=gerenmap.get("now_live_city1")%>')
				{
					x1=c1+1;	
				}
				
			}
			document.getElementById("s111").options[x1].selected=true;
			
			for(d=1;d<=dsy1.Items["0_"+(x1-1)].length;d++)
			{
				var   newOption1   =   document.createElement("option"); 
				newOption1.value=dsy1.Items["0_"+(x1-1)][d-1]; 
	            newOption1.text=dsy1.Items["0_"+(x1-1)][d-1];
	            document.getElementById("s221").options.add(newOption1);  
	            if(dsy1.Items["0_"+(x1-1)][d-1]=='<%=gerenmap.get("now_live_city2")%>')
	            {
	            	document.getElementById("s221").options[d].selected=true;
	            }
			}
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
		if(sheng.value=="=ʡ="||shi.value=="=��=")
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

		
		document.forms[0].actionType.value="updatejibenxinxi" ;
		document.forms[0].action="<%=request.getContextPath()%>/gerenjibenxinxi";
		document.forms[0].submit();


		
	}
  //-->
  </SCRIPT>			