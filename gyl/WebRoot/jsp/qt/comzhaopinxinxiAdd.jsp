<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<HTML><HEAD><TITLE>������ҵ��Ƹ��Ϣ</TITLE>

<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<SCRIPT src="<%=request.getContextPath() %>/js/chkUtil.js" type=text/javascript></SCRIPT>
<SCRIPT src="<%=request.getContextPath() %>/js/common.js" type=text/javascript></SCRIPT>
</HEAD>
<BODY  onload="setup()">
<%
		List Loginlist=(List)session.getAttribute("Loginlist");
			Map yhMap=(Map)Loginlist.get(0);	
			String id=(String)yhMap.get("company_id");	
		%>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdtit height=30><B>������ҵ��Ƹ��Ϣ--��Ƹ��Ϣ</B>    </TD>
  </TR>

</TABLE>
 <FORM   action="" method=post>
  <INPUT type=hidden name=actionType> 
  <INPUT   type=hidden  name=company_id  value="<%=id %>"> 
<TABLE class=tableBorder style="WIDTH: 100%" cellSpacing=0 
borderColorDark=#ffffff cellPadding=0 width="96%" borderColorLight=#dddddd 
border=1>
 
  <TR>
    <TD class=tdtop colSpan=2 height=23><B>��ҵ��Ƹ��Ϣ</B></TD>
  </TR>

  <TR>
    <TD class=tdileft height=38><SPAN 
    class=atten>*</SPAN>&nbsp;ְλ����:</TD>
    <TD width="1023" height=38 class=tdiright><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin><INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=want_name></TD>
          <td><div id="div1"></div></TD>
        </tr>
    </table>    </TR>
  <TR>
    <TD class=tdileft height=38><SPAN class=atten>*</SPAN>&nbsp;��Ƹְλ����רҵ���:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin><SELECT   size=1 name="want_profession" id="w11">
              <option  value="0" SELECTED>=��ѡ��ְҵ���=</option>
            </SELECT>
            &nbsp;&nbsp; 
            &nbsp;
            <SELECT   NAME="want_position" id="w22">
              <option value="0"SELECTED>=��ѡ��ְλ���=</option>
            </SELECT>
            &nbsp;</TD>
          <td><div id="div2"></div></TD>
        </tr>
    </table></TD>
  </TR>
  <TR>
    <TD class=tdileft height=38><SPAN 
    class=atten>*</SPAN>&nbsp;����Ҫ��:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin><INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=want_age>��&nbsp;&nbsp;&nbsp;����25-30��</TD>
          <td><div id="div3"></div></TD>
        </tr>
      </table>    </TR>
  <TR>
    <TD class=tdileft width=271 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;�������༰ʹ�ó̶�:</TD>
	<TD class=tdiright height=38>
       <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
           <TR>
            <TD class=tdtsin><input name="want_language" maxLength=30 style="WIDTH: 250px; HEIGHT: 21px" value="����"  >
            ���粻��дĬ��Ϊ���ޣ�</TD>
	        <td><div id="div4"></div>			</TD>
		</tr></table>		</TD></TR>
  <TR>
    <TD class=tdileft height=38><span class="atten">*</span>&nbsp;��Ч��:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
      <TR>
        <TD class=tdtsin>
	<SELECT size=1 name=yy >
	<OPTION value="0" SELECTED>=��=</OPTION>
	<%for(int i=2009;i<2050;i++) {%>
        <OPTION value="<%=i %>" ><%=i %></OPTION>
        <%} %>
        </SELECT>&nbsp;��&nbsp;
		<SELECT size=1 name=mm > 
		<OPTION value="0" SELECTED>=��=</OPTION>
		<%for(int i=1;i<13;i++) {%>
        <OPTION value="<%=i %>" ><%=i %></OPTION>
        <%} %>
		
		</SELECT>&nbsp;��&nbsp;
		<SELECT size=1 name=dd > 
		<OPTION value="0" SELECTED>=��=</OPTION>
		<%for(int i=1;i<32;i++) {%>
        <OPTION value="<%=i %>" ><%=i %></OPTION>
        <%} %>
		</SELECT>&nbsp;��        </TD>
        <td><div id="div5"></div></TD>
      </tr>
    </table>    </TR>
  <TR>
    <TD class=tdileft height=38><SPAN  class=atten>*</SPAN>&nbsp;�ؼ���:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin><INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=want_keyword>          </TD>
          <td><div id="div6"></div></TD>
        </tr>
    </table>    </TR>
  <TR>
    <TD class=tdileft width=271 height=38>
    <span class="atten">*</span>&nbsp;��Ƹ����:</TD>
    <TD class=tdiright height=38>
         <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin><INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=want_amount value="����">��&nbsp;&nbsp;&nbsp;���粻��дĬ��Ϊ���ɣ�</TD>
		   <td><div id="div7"></div>			</TD>
		   </tr></table></TR>
  <TR>
    <TD class=tdileft height=38><SPAN class=atten>*</SPAN>&nbsp;�������ڵ�:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin><SELECT   size=1 name="big_address_id" onChange="jysheng()">
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
            &nbsp;��</TD>
          <td><div id="div8"></div></TD>
        </tr>
    </table></TD>
  </TR>
  
  <TR>
    <TD class=tdileft width=271 height=38><SPAN 
      class=atten>*</SPAN>&nbsp;�Ա�Ҫ��:��</TD>
    <TD class=tdiright height=38>
        <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin><label>
     <input type="radio" name="want_sex" value=��>��&nbsp;&nbsp;<input type="radio" name="want_sex" value=Ů>Ů&nbsp;&nbsp;<input type="radio" name="want_sex"  value=���� CHECKED>����
   </label></TD>
     		   <td><div id="div9"></div>			</TD>
	</tr></table>  </TR>
  <TR>
    <TD class=tdileft width=271 height=38><SPAN  class=atten>*</SPAN>&nbsp;��н��Χ:��</TD>
    <TD class=tdiright height=38><table  cellspacing=0 cellpadding=0 width="100%"  border=0>
      <tr>
        <td class=tdtsin><input name="want_month_wage" style="WIDTH: 250px; HEIGHT: 21px"  >
          Ԫ������ң�
          (����800-1000)</td>
        <td><div id="div10"></div></td>
      </tr>
    </table>  </TR>
  <TR>
    <TD class=tdileft width=271 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;����Ҫ��:</TD>
    <TD class=tdiright height=38>
        <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> 
    <INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=want_now_address>        </TD>
    <td><div id="div11"></div>			</TD>
	</tr></table>    </TR>
  <TR>
    <TD class=tdileft height=38><SPAN  class=atten>*</SPAN>&nbsp;��Ƹ���ڵ�ַ:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin><input name="want_address" style="WIDTH: 250px; HEIGHT: 21px"  ></TD>
          <td><div id="div12"></div></TD>
        </tr>
    </table>    </TR>
  <TR>
    <TD class=tdileft height=38><SPAN  class=atten>*</SPAN>&nbsp;ѧ��Ҫ��:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin>	<SELECT size=1 name=want_degree >
	<OPTION value=���� selected>����</OPTION>
	<OPTION value=��ר>��ר</OPTION>
	<OPTION value=��ר>��ר</OPTION>
	<OPTION  value=����>����</OPTION>
	<OPTION value=�о���>�о���</OPTION>
	<OPTION   value=˶ʿ >˶ʿ</OPTION>
	<OPTION value=��ʿ>��ʿ</OPTION>
	</SELECT>          </TD>
          <td><div id="div13"></div></TD>
        </tr>
    </table>    </TR>
  <TR>
    <TD class=tdileft height=38><SPAN  class=atten>*</SPAN>&nbsp;��������:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin>    <select style="WIDTH: 130px"  name="want_experience">
      <option value=���� selected>����</option>
      <option   value=1��>1��</option>
      <option value=2��>2��</option>
	  <option value=3��>3��</option>
	  <option value=4��>4��</option>
	   <option value=5�� >5��</option>
	  <option value=5������>5������</option>
    </select>  
          </TD>
          <td><div id="div14"></div></TD>
        </tr>
      </table>
    </TR>
  <TR>
    <TD class=tdileft width=271 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;����Ҫ��:</TD>
    <TD class=tdiright height=38>
        <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin><textarea name=want_require rows=6 cols=70 ></textarea></TD>
    <td><div id="div15"></div></TD>	</tr></table></TR>
  <TR>
    <TD class=tdileft width=271 height=50>��</TD>
    <TD class=tdiright height=45><INPUT class=login_btn1 style="WIDTH: 180px" type=button value=������Ϣ onClick="tiJiao()"></TD></TR></TABLE>
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
			div1.innerHTML="<span style='color:red'>ְλ���Ʋ���Ϊ��<span>";
			return;
		}
		else{
			div1.innerHTML="";
		}		
		
		if(want_profession.value=="=��ѡ��ְҵ���=" || want_position.value=="=��ѡ��ְλ���=")
		{		
			div2.innerHTML="<span style='color:red'>��Ƹְҵ/ְλ����רҵ����ѡ<span>";
			return;
		}else{
			div2.innerHTML="";
		}
		if(want_age.value=="")
		{
			div3.innerHTML="<span style='color:red'>����Ҫ����Ϊ��<span>";
			return;
		}
		else{
			div3.innerHTML="";
		}
		
		if(want_language.value=="")
		{
			div4.innerHTML="<span style='color:red'>����Ҫ����Ϊ�� <span>";
			return;
		}
		else{
			div4.innerHTML="";
		}
		if(yy.value=="0"||mm.value=="0"||dd.value=="0")
		{
			div5.innerHTML="<span style='color:red'>��Ч�ڲ���Ϊ�� <span>";
			return;
		}
		else{
			div5.innerHTML="";
		}
		if(want_keyword.value=="")
		{
			div6.innerHTML="<span style='color:red'>�ؼ��ʲ���Ϊ��<span>";
			return;
		}
		else{
			div6.innerHTML="";
		}

		if(want_amount.value=="")
		{
			div7.innerHTML="<span style='color:red'>��Ƹ��������Ϊ��<span>";
			return;
		}
		else{
			div7.innerHTML="";
		}
		if(big_address_id.value=="0"||small_address_id.value=="0")
		{		
			div8.innerHTML="<span style='color:red'>������ַ��ѡ<span>";
			return;
		}else{
			div8.innerHTML="";
		}
		if(want_month_wage.value=="")
		{		
			div10.innerHTML="<span style='color:red'>��н��Χ����Ϊ��<span>";
			return;
		}else{
			div10.innerHTML="";
		}
		if(want_now_address.value=="")
		{		
			div11.innerHTML="<span style='color:red'>����Ҫ����Ϊ��<span>";
			return;
		}else{
			div11.innerHTML="";
		}
		if(want_address.value=="")
		{		
			div12.innerHTML="<span style='color:red'>��Ƹ���ڵ�ַ����Ϊ��<span>";
			return;
		}else{
			div12.innerHTML="";
		}

		if(want_require.value.length<20||want_require.value.length>2000)
		{
		div15.innerHTML="<span style='color:red'>��д�Ĺ�˾��鳤�ȱ���Ϊ��20��2000���ַ�֮��<span>";
		}
		else
		{
		div15.innerHTML="";
		}
		document.forms[0].actionType.value="add" ;
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
		var opt0 = ["=��ѡ��ְҵ���=","=��ѡ��ְλ���="];

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
  //-->
  </SCRIPT>			