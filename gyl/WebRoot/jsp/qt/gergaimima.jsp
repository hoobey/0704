<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<HTML>
<HEAD>
<TITLE>�޸�����</TITLE>
<link href="<%=request.getContextPath() %>/images/guanli/cdjobmi.css" rel="stylesheet" type="text/css">
<SCRIPT src="<%=request.getContextPath() %>/js/chkUtil.js" type=text/javascript></SCRIPT>
<SCRIPT src="<%=request.getContextPath() %>/js/common.js" type=text/javascript></SCRIPT>
</HEAD>
<SCRIPT LANGUAGE="JavaScript">
  <!--
		function load(){
	document.getElementById("password").focus();
	}
	
  //-->
  </SCRIPT>
<BODY onload="load()">
<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>

  <TR>
    <TD class=tdtop bgColor=#e2e2e2><B>�޸�����</B></TD></TR>
  <TR>
    <TD height=30>
    <%
    List userelist=(List)request.getAttribute("userlist");
	Map yhMap=(Map)userelist.get(0);
	String id=(String)yhMap.get("user_info_id");
     %>
    <FORM name="thisForm" method="post">
      <INPUT TYPE="hidden" NAME="id" value="<%=id %>">
      <INPUT type="hidden"  name="actionType" >
      <TABLE id=table4 height=223 cellSpacing=0 borderColorDark=#ffffff  cellPadding=0 width="100%"  border=1>
      
        <TR>
          <TD class=tdileft width=158 bgColor=#f6f6f6 >�� �� ��: </TD>
          <TD class=tdiright>
           <TABLE id=table5 cellSpacing=0 cellPadding=0 width="100%"  border=0>
         
              <TR>
                <TD class=tdtsin>
          <INPUT type=password   name="password" onblur="ducuo('jiumima','div1',this)" id="password"> <img id="yhmc1" src="<%=request.getContextPath()%>/images/kong.gif"></TD>
	<td><div id="div1"></div>
			</TD>
			</tr>
			
			</table>
			</TD>
          </TR>
        <TR>
          <TD class=tdileft width=158 bgColor=#f6f6f6>�� �� ��:</TD>
          <TD class=tdiright>
            <TABLE id=table5 cellSpacing=0 cellPadding=0 width="100%"  border=0>
           
              <TR>
                <TD class=tdtsin><INPUT type=password  alt=������:6-20�ַ�  name="newpassword" onblur="ducuo('xinmima','div2',this)"> <img id="yhmc2" src="<%=request.getContextPath()%>/images/kong.gif"></TD>
	<td><div id="div2"></div>   
                  </TD>
                  </TR>
              <TR>
                <TD class=tdtsin 
                  height=30>����Ϊ6��20���ַ���
                  </TD>
                  </TR>
                
                  </TABLE>
                  </TD>
                  </TR>
        <TR>
          <TD class=tdileft width=158 bgColor=#f6f6f6>ȷ������:</TD>
		          <TD class=tdiright>
		          <TABLE id=table5 cellSpacing=0 cellPadding=0 width="100%"  border=0>
		         
		        <TR>
		        <TD class=tdtsin>
		          <INPUT type=password  name="rnewpassword" onblur="ducuo('congmima','div3',this)"> 
		           <img id="yhmc3" src="<%=request.getContextPath()%>/images/kong.gif"></TD>
			<td><div id="div3"></div>   
		            </TD>
		            </tr>
		           
		            </table>
		            </TD>
      </TR>
        <TR>
          <TD class=tdileft width=158 bgColor=#f6f6f6>��</TD>
          <TD class=tdiright><INPUT class=login_btn1 style="WIDTH: 120px" type=button value=����  onclick="tiJiao()">
          </TD>
          </TR>   
          
          </TABLE>
  </FORM>
          </TD>
          </TR>
  <TR>
    <TD height=30>
    </TD>
    </TR>
    
    </TABLE>
</BODY></HTML>
  <SCRIPT LANGUAGE="JavaScript">
  <!--	
  
   //�Ƿ�����ύ,Ϊʲô�����¼����źã������桭������Ŭ��!!!
	var sf=true;
	
  	function tiJiao()
	{
		var jmm=document.getElementById("password");
		var xmm=document.getElementById("newpassword");
		var rmm=document.getElementById("rnewpassword");		
		
		if(jmm.value=="")
		{
			sf=ducuo('jiumima','div1',jmm);
		}
		else{

			if(xmm.value=="")
			{
				sf=ducuo('xinmima','div2',xmm);
			}
			else{ 

				if(rmm.value=="")
				{			
					sf=ducuo('congmima','div3',rmm);					
				}
				else{

					if(sf==false)
					{
						alert("��������밴��ʾ����");
					}else{
						
							var pass=xmm.value;
							document.thisForm.actionType.value="gai";
							document.thisForm.action="<%=request.getContextPath()%>/gerengaimima?mima="+pass;
							document.thisForm.submit();
						
					}							
				}
			}
		}
		
	}
  //�������������ȷ��������֤�ģ���Ҫ�п��ܲ����ύ�ģ�lkx������!!!
	function ducuo(lx,d,obj)
	{
	 var div1=hq(d);
	 		if(lx=="jiumima")
			{
						var yhmc1=document.getElementById("yhmc1");		
							
						if(ChkUtil.isNull(obj.value)==true)
						{
							yhmc1.src="<%=request.getContextPath()%>/images/cha.gif";			
							div1.innerHTML="<span style='color:red'>������Ϊ��<span>";
							return false;
						}
						if(obj.value!='<%=((String)yhMap.get("user_info_password"))%>')
						{
							yhmc1.src="<%=request.getContextPath()%>/images/cha.gif";
							div1.innerHTML="<span style='color:red'>�����벻��ȷ<span>";
							return false;			
						}
						div1.innerHTML="<span style='color:#66FF00'>������������ȷ<span>";
						yhmc1.src="<%=request.getContextPath()%>/images/duihao.gif"	;		
						return true;
				}
			if(lx=="xinmima")
				{
						var yhmc2=document.getElementById("yhmc2");		
						if(ChkUtil.isNull(obj.value)==true)
						{
							yhmc2.src="<%=request.getContextPath()%>/images/cha.gif";			
							div1.innerHTML="<span style='color:red'>������Ϊ��<span>";
							return false;		
						}
						if(ChkUtil.isString6_20(obj.value)==false)
						{
							yhmc2.src="<%=request.getContextPath()%>/images/cha.gif";
							div1.innerHTML="<span style='color:red'>ֻ������6-20����ĸ�����֡��»���<span>";
							return false;
						}
						div1.innerHTML="<span style='color:#66FF00'>������������ȷ<span>";
						yhmc2.src="<%=request.getContextPath()%>/images/duihao.gif"	;		
						return true;			
			    }
			if(lx=="congmima")
			{
			
						
						var yhmc3=document.getElementById("yhmc3");	
						var newpassword=document.getElementById("newpassword");	
						if(ChkUtil.isNull(obj.value)==true)
						{
							yhmc3.src="<%=request.getContextPath()%>/images/cha.gif";			
							div1.innerHTML="<span style='color:red'>�����������Ϊ��<span>";
							return false;		
						}
						 if(obj.value!=newpassword.value)
						{ 
							yhmc3.src="<%=request.getContextPath()%>/images/cha.gif";					
							div1.innerHTML="<span style='color:red'>��������������������ͬ<span>";
							return  sf=false;
						}						
						
						div1.innerHTML="<span style='color:#66FF00'>�����������������ȷ<span>";
						yhmc3.src="<%=request.getContextPath()%>/images/duihao.gif"	;		
						return sf=true;
						
			}

	}
		function hq(id)
	{
		var ibj=document.getElementById(id);
		return ibj;
	}
  //-->
  </SCRIPT>
 