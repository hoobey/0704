<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<HTML><HEAD><TITLE>��ҵ������Ϣ</TITLE>

<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<SCRIPT src="<%=request.getContextPath() %>/js/chkUtil.js" type=text/javascript></SCRIPT>
<SCRIPT src="<%=request.getContextPath() %>/js/common.js" type=text/javascript></SCRIPT>
</HEAD>
<BODY >
<%
		List comjibenlist=(List)request.getAttribute("comjibenlist");
			Map comjibenmap=(Map)comjibenlist.get(0);	
			String company_id=(String)comjibenmap.get("company_id");	
			System.out.println("======="+company_id);
		%>
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdtit height=30><B>�޸���ҵ������Ϣ--��ҵ������Ϣ</B>
    </TD>
    </TR>

</TABLE>
 <FORM   action="" method=post>
  <INPUT type=hidden name=actionType> 
  <INPUT   type=hidden  name=company_id  value="<%=company_id %>"> 
<TABLE class=tableBorder style="WIDTH: 100%" cellSpacing=0 
borderColorDark=#ffffff cellPadding=0 width="96%" borderColorLight=#dddddd 
border=1>
 
  <TR>
    <TD class=tdtop colSpan=2 height=23><B>��ҵ������Ϣ</B></TD></TR>

  <TR>
    <TD class=tdileft width=140 height=38>
	<SPAN class=atten>*</SPAN>&nbsp;��ҵ���ڵ�:</TD>
    <TD class=tdiright height=38>
      <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
           <TR>
            <TD class=tdtsin><SELECT   size=1 name="big_address_id" onchange="jysheng()">
              <option value="0" >=ʡ=</option>
<%
				String big_address_id1=(String)comjibenmap.get("big_address_id");
				String small_address_id1=(String)comjibenmap.get("small_address_id");
				System.out.println("============="+big_address_id1);
			    List shenglist=(List)request.getAttribute("shenglist");
			    System.out.println("û�ӵ���"+shenglist.size());
			    for(int i=0;i<shenglist.size();i++)
			    {
			    Map shengmap=(Map)shenglist.get(i);
			    String big_address_id=(String)shengmap.get("big_address_id");
			    String big_address_name=(String)shengmap.get("big_address_name");
			    
%>
<OPTION VALUE="<%=big_address_id %>" <%=(big_address_id.equals(big_address_id1))?"selected":""%>><%=big_address_name %></option>
				<%} %>
            </SELECT>
              &nbsp;ʡ&nbsp; 
  &nbsp;
  <SELECT   NAME="small_address_id" id="small_address_id">
    <option value="0">=��=</option>
    <%
    List dangqianshilist=(List)request.getAttribute("dangqianshilist");
    for(int i=0;i<dangqianshilist.size();i++)
    {
    Map dangqianshimap=(Map)dangqianshilist.get(i);
    
     %>
 <OPTION VALUE="<%=dangqianshimap.get("small_address_id") %>" <%=(((String)dangqianshimap.get("small_address_id")).equals(small_address_id1))?"selected":""%>><%=dangqianshimap.get("small_address_name") %></option>    
     <%} %>
  </SELECT>
  &nbsp;��</TD>
	<td><div id="div1"></div></TD>
		  </tr>
	</table>	</TD></TR>
  <TR>
    <TD class=tdileft width=140 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;��ϵ��ַ:</TD>
	<TD class=tdiright height=38>
       <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
           <TR>
            <TD class=tdtsin><input name="com_contact_address" style="WIDTH: 250px; HEIGHT: 21px"  value="<%=(String)comjibenmap.get("com_contact_address") %>"></TD>
	<td><div id="div2"></div>			</TD>
		</tr></table>		</TD></TR>
  <TR>
    <TD class=tdileft height=38><span class="atten">*</span>&nbsp;��&nbsp;&nbsp;&nbsp;&nbsp;��:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
      <TR>
        <TD class=tdtsin><input style="WIDTH: 158px; HEIGHT: 21px" name="com_post_code" value="<%=(String)comjibenmap.get("com_post_code") %>">        </TD>
        <td><div id="div3"></div></TD>
      </tr>
    </table>    </TR>
  <TR>
    <TD class=tdileft height=38><SPAN  class=atten>*</SPAN>&nbsp;��ϵ�绰:</TD>
    <TD class=tdiright height=38><TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
        <TR>
          <TD class=tdtsin><INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=com_contact_telephone value="<%=(String)comjibenmap.get("com_contact_telephone") %>">          </TD>
          <td><div id="div4"></div></TD>
        </tr>
    </table>    </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
    <span class="atten">*</span>&nbsp;��Ƹ��ϵ��:</TD>
    <TD class=tdiright height=38>
         <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin><INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=com_contact_people value="<%=(String)comjibenmap.get("com_contact_people") %>"></TD>
		   <td><div id="div5"></div>			</TD>
			</tr></table></TR>
  <TR>
    <TD class=tdileft height=38><SPAN 
    class=atten>*</SPAN>&nbsp;�������:</TD>
    <TD class=tdiright height=38>
            <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin><INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=com_fax value="<%=(String)comjibenmap.get("com_fax") %>"></TD>
		   <td><div id="div6"></div>			</TD>
	</tr></table>  </TR>
  
  <TR>
    <TD class=tdileft width=140 height=38><SPAN 
      class=atten>*</SPAN>&nbsp;��ҵ��ģ:��</TD>
    <TD class=tdiright height=38>
        <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin><input style="WIDTH: 158px; HEIGHT: 21px"  name=com_extent value="<%=(String)comjibenmap.get("com_extent") %>"></TD>
     		   <td><div id="div7"></div>			</TD>
	</tr></table>  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>&nbsp;��˾��ַ:��</TD>
    <TD class=tdiright height=38>
     <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin><input name="com_url" style="WIDTH: 250px; HEIGHT: 21px" value="<%=(String)comjibenmap.get("com_url") %>" ></TD>
  <td><div id="div8"></div>			</TD>
	</tr></table>  </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;�����ʼ�:</TD>
    <TD class=tdiright height=38>
        <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> 
    <INPUT style="WIDTH: 158px; HEIGHT: 21px"  name=com_email value="<%=(String)comjibenmap.get("com_email") %>">        </TD>
    <td><div id="div9"></div>			</TD>
	</tr></table>    </TR>
  <TR>
    <TD class=tdileft width=140 height=38>
    <SPAN  class=atten>*</SPAN>&nbsp;��˾���:</TD>
    <TD class=tdiright height=38>
        <TABLE  cellSpacing=0 cellPadding=0 width="100%"  border=0>
  <TR>
   <TD class=tdtsin> 
	<TEXTAREA name=com_summary rows=6 cols=100 ><%=(String)comjibenmap.get("com_summary") %></TEXTAREA>
	</TD>
	    <td><div id="div10"></div>
</TD>	</tr></table></TR>
  <TR>
    <TD class=tdileft width=140 height=50>��</TD>
    <TD class=tdiright height=45><INPUT class=login_btn1 style="WIDTH: 180px" type=button value=������Ϣ onClick="tiJiao()"></TD></TR></TABLE>
 </FORM>

</BODY></HTML>
  <SCRIPT LANGUAGE="JavaScript">
  <!--
  

	function tiJiao()
	{
		var big_address_id=document.getElementById("big_address_id");
		var small_address_id=document.getElementById("small_address_id");
		var com_contact_address=document.getElementById("com_contact_address");
		var com_post_code=document.getElementById("com_post_code");
		var com_contact_telephone=document.getElementById("com_contact_telephone");
		var com_contact_people=document.getElementById("com_contact_people");
		var com_fax=document.getElementById("com_fax");
		var com_extent=document.getElementById("com_extent");
		var com_url=document.getElementById("com_url");	
		var com_email=document.getElementById("com_email");
		var com_summary=document.getElementById("com_summary");
		if(big_address_id.value=="0"&&small_address_id.value=="0")
		{		
			div1.innerHTML="<span style='color:red'>��ҵ��ַ��ѡ<span>";
			return;
		}else{
			div1.innerHTML="";
		}
		if(com_contact_address.value=="")
		{
			div2.innerHTML="<span style='color:red'>��ϵ��ַ����Ϊ��<span>";
			return;
		}
		else{
			div2.innerHTML="";
		}
		if(ChkUtil.isZipCode(com_post_code.value)==false)
		{
			div3.innerHTML="<span style='color:red'>�ʱ��ʽ����ȷ<span>";
			return;
		}
		else{
			div3.innerHTML="";
		}
		
		if(com_contact_telephone.value=="")
		{
			div4.innerHTML="<span style='color:red'>��ϵ�绰����Ϊ�� <span>";
			return;
		}
		else{
			div4.innerHTML="";
		}
		if(com_contact_people.value=="")
		{
			div5.innerHTML="<span style='color:red'>��ϵ�˲���Ϊ�� <span>";
			return;
		}
		else{
			div5.innerHTML="";
		}
		if(com_fax.value=="")
		{
			div6.innerHTML="<span style='color:red'>������벻��Ϊ��<span>";
			return;
		}
		else{
			div6.innerHTML="";
		}

		if(com_extent.value=="")
		{
			div7.innerHTML="<span style='color:red'>��ҵ��ģ����Ϊ��<span>";
			return;
		}
		else{
			div7.innerHTML="";
		}
		if(ChkUtil.isEmail(com_email.value)==false)
		{
		div9.innerHTML="<span style='color:red'>���������ʽ����ȷ<span>";
		return;
		}
		else
		{
		div9.innerHTML="";
		}
		if(com_summary.value.length<50||com_summary.value.length>4000)
		{
		div10.innerHTML="<span style='color:red'>��д�Ĺ�˾��鳤�ȱ���Ϊ��50��4000���ַ�֮��<span>";
		}
		else
		{
		div10.innerHTML="";
		}
		document.forms[0].actionType.value="updatejibenxinxi" ;
		document.forms[0].action="<%=request.getContextPath()%>/comjibenxinxigai";
		document.forms[0].submit();
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
				var url="<%=request.getContextPath()%>/comjibenxinxigai?actionType=chashi&big_address_id="+big_address_id;
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