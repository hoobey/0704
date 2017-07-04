<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<HTML>
<HEAD>
<TITLE>修改密码</TITLE>
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
    <TD class=tdtop bgColor=#e2e2e2><B>修改密码</B></TD></TR>
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
          <TD class=tdileft width=158 bgColor=#f6f6f6 >旧 密 码: </TD>
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
          <TD class=tdileft width=158 bgColor=#f6f6f6>新 密 码:</TD>
          <TD class=tdiright>
            <TABLE id=table5 cellSpacing=0 cellPadding=0 width="100%"  border=0>
           
              <TR>
                <TD class=tdtsin><INPUT type=password  alt=新密码:6-20字符  name="newpassword" onblur="ducuo('xinmima','div2',this)"> <img id="yhmc2" src="<%=request.getContextPath()%>/images/kong.gif"></TD>
	<td><div id="div2"></div>   
                  </TD>
                  </TR>
              <TR>
                <TD class=tdtsin 
                  height=30>长度为6－20个字符。
                  </TD>
                  </TR>
                
                  </TABLE>
                  </TD>
                  </TR>
        <TR>
          <TD class=tdileft width=158 bgColor=#f6f6f6>确认密码:</TD>
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
          <TD class=tdileft width=158 bgColor=#f6f6f6>　</TD>
          <TD class=tdiright><INPUT class=login_btn1 style="WIDTH: 120px" type=button value=保存  onclick="tiJiao()">
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
  
   //是否可以提交,为什么焦点事件看着好，做着真……唉，努力!!!
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
						alert("输入错误，请按提示输入");
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
  //看输入的正不正确，这是验证的，还要有看能不能提交的，lkx加油做!!!
	function ducuo(lx,d,obj)
	{
	 var div1=hq(d);
	 		if(lx=="jiumima")
			{
						var yhmc1=document.getElementById("yhmc1");		
							
						if(ChkUtil.isNull(obj.value)==true)
						{
							yhmc1.src="<%=request.getContextPath()%>/images/cha.gif";			
							div1.innerHTML="<span style='color:red'>旧密码为空<span>";
							return false;
						}
						if(obj.value!='<%=((String)yhMap.get("user_info_password"))%>')
						{
							yhmc1.src="<%=request.getContextPath()%>/images/cha.gif";
							div1.innerHTML="<span style='color:red'>旧密码不正确<span>";
							return false;			
						}
						div1.innerHTML="<span style='color:#66FF00'>旧密码输入正确<span>";
						yhmc1.src="<%=request.getContextPath()%>/images/duihao.gif"	;		
						return true;
				}
			if(lx=="xinmima")
				{
						var yhmc2=document.getElementById("yhmc2");		
						if(ChkUtil.isNull(obj.value)==true)
						{
							yhmc2.src="<%=request.getContextPath()%>/images/cha.gif";			
							div1.innerHTML="<span style='color:red'>新密码为空<span>";
							return false;		
						}
						if(ChkUtil.isString6_20(obj.value)==false)
						{
							yhmc2.src="<%=request.getContextPath()%>/images/cha.gif";
							div1.innerHTML="<span style='color:red'>只能输入6-20个字母、数字、下划线<span>";
							return false;
						}
						div1.innerHTML="<span style='color:#66FF00'>新密码输入正确<span>";
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
							div1.innerHTML="<span style='color:red'>重输的新密码为空<span>";
							return false;		
						}
						 if(obj.value!=newpassword.value)
						{ 
							yhmc3.src="<%=request.getContextPath()%>/images/cha.gif";					
							div1.innerHTML="<span style='color:red'>重输密码必须和新密码相同<span>";
							return  sf=false;
						}						
						
						div1.innerHTML="<span style='color:#66FF00'>重输的新密码输入正确<span>";
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
 