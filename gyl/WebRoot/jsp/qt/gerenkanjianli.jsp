<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>美好前程招聘网————个人简历预览</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css>
TD {
	FONT-SIZE: 12px; LINE-HEIGHT: 20px; FONT-FAMILY: "宋体"; TEXT-DECORATION: none
}
.d {
	FONT-SIZE: 14px; FONT-FAMILY: "宋体"; TEXT-DECORATION: none
}
.pertd {
	BORDER-TOP: #dddddd 1px solid; PADDING-LEFT: 2px; FONT-WEIGHT: bold; FONT-SIZE: 14px; BACKGROUND: #f6f6f6; LINE-HEIGHT: normal; FONT-STYLE: normal; HEIGHT: 20px; FONT-VARIANT: normal
}
.t {
	COLOR: #000099
}
.t1 {
	FONT-WEIGHT: bold; FONT-SIZE: 14px; COLOR: #000099; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal
}
.t2 {
	FONT-WEIGHT: bold; FONT-SIZE: 14px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal
}
.t3 {
	FONT-WEIGHT: bold; FONT-SIZE: 18px; LINE-HEIGHT: normal; FONT-STYLE: normal; FONT-VARIANT: normal
}
.TD1 {
	FONT-SIZE: 14px; WORD-BREAK: break-all; LINE-HEIGHT: 18px; FONT-FAMILY: Verdana; font-color:#000000
}

</STYLE>

</HEAD>
<BODY>
<%
 List kanlist=(List)request.getAttribute("kanlist");
 if(kanlist.size()==0)
 {
 %>
 	您还没有编写简历，请编写好简历后在浏览<BR>
 	<a href="<%=request.getContextPath() %>/jsp/qt/gerenguanli.jsp" ><span>返回个人管理页</span></a>
 <%
 }else{
 Map kanmap=(Map)kanlist.get(0);
 if(kanmap.get("resume_name")==null || kanmap.get("resume_name").equals(""))
 {
 %>
 您还没有编写个人的基本信息，请您编写好后在浏览<BR>
<a href="<%=request.getContextPath() %>/jsp/qt/gerenguanli.jsp" ><span>返回个人管理页</span></a>
 <%
 }else{
 	if(kanmap.get("now_status")==null || kanmap.get("now_status").equals(""))
 	{
 	 %>
 	您还没有编写您的求职意向，请您编写好后在浏览<BR>
 	<a href="<%=request.getContextPath() %>/jsp/qt/gerenguanli.jsp" ><span>返回个人管理页</span></a>
 	 <%
 	}else{
 %>
<DIV align=center>【<a href='javascript:window.print()' >打印简历</a>】
<TABLE id=table1 cellSpacing=1 cellPadding=10 width=600 bgColor=#a8a8a8 
border=0>
 
  <TR>
    <TD vAlign=top bgColor=#ffffff>
      <TABLE id=table2 width=600 border=0>
    
        <TR>
          <TD>
            <TABLE id=table1 cellSpacing=0 cellPadding=0 width="100%" 
              border=0>
              <TR>
                <TD width=118><a href="http://localhost:8080/lkx"><IMG height=41 
                  src="<%=request.getContextPath() %>/images/biao.gif" width=127 border=0></A></TD>
                <TD vAlign=bottom>
                  <TABLE id=table2 cellSpacing=0 cellPadding=0 width="79%" 
                  border=0>
                  
                    <TR>
                      <TD class=td1 align=middle><SPAN 
                        class=t3>个&nbsp;人&nbsp;简&nbsp;历</SPAN></TD></TR></TABLE></TD></TR></TABLE></TD></TR>
        <TR>
          <TD vAlign=top height=1>
            <HR color=#a8a8a8 noShade SIZE=1>
          </TD></TR>
        <TR>
          <TD vAlign=top align=right height=76>
            <TABLE id=table4 cellSpacing=10 cellPadding=0 width=580 border=0>
           
              <TR>
                <TD vAlign=top width=400>
                  <TABLE id=table5 cellSpacing=0 cellPadding=0 width=400 
                  border=0>
                   

                    <TR>
                      <TD align=right width=89 height=22>姓&nbsp;&nbsp; 
                      &nbsp;名：</TD>
                      <TD width=135><SPAN class=t><%=kanmap.get("resume_name") %></SPAN></TD>
                      <TD align=right width=78>性&nbsp; &nbsp;&nbsp;别：</TD>
                      <TD width=98><SPAN class=t><%=kanmap.get("resume_sex") %></SPAN>　</TD>
                    </TR>
                    
					  <TR>
                      <TD align=right width=89 height=22>出生日期：</TD>
                      <TD width=135><SPAN class=t><%=((String)kanmap.get("resume_birth")).substring(0,10) %></SPAN></TD>
                      <TD align=right width=78>年&nbsp; &nbsp;&nbsp;龄：</TD>
                      <TD width=98><span class="t"><%=kanmap.get("resume_age") %></span></TD>
					  </TR>
					    <TR>
                      <TD align=right width=89 height=22>用户类型：</TD>
                      <TD width=135><span class="t"><%=kanmap.get("stu_or_social") %></span></TD>
                      <TD align=right width=78>婚姻状况：</TD>
                      <TD width=98><SPAN class=t><%=kanmap.get("marital_status") %></SPAN></TD>
					    </TR>
					  
                    <TR>
                      <TD align=right width=89 height=22>现所在地：</TD>
                      <TD width=135><SPAN class=t><%=kanmap.get("now_live_city1") %>-&gt;<%=kanmap.get("now_live_city2") %></SPAN></TD>
                      <TD align=right width=78>户口所在地：</TD>
                      <TD width=98><SPAN class=t><%=kanmap.get("account_place1") %>-&gt;<%=kanmap.get("account_place2") %></SPAN></TD>
                    </TR>
                    <TR>
                      <TD align=right width=89 height=22>工作经验：</TD>
                      <TD width=135><SPAN class=t><%=(kanmap.get("work_year")).equals("0")?"无":(kanmap.get("work_year"))%></SPAN></TD>
                      <TD align=right width=78>最高学历：</TD>
                      <TD width=98><SPAN class=t><%=kanmap.get("educational_level") %></SPAN></TD>
                    </TR>
                    <TR>
                      <TD align=right width=89 height=22>在读毕业学校：</TD>
                      <TD width=135><SPAN class=t><%=kanmap.get("graduate_school") %></SPAN></TD>
                      <TD align=right width=78>毕业时间：</TD>
                      <TD width=98><SPAN class=t><%=((String)kanmap.get("graduate_date")).substring(0,4) %>.7</SPAN></TD>
                    </TR>
                    <TR>
                      <TD align=right width=89 height=22>主修专业：</TD>
                      <TD colSpan=3><SPAN class=t><%=kanmap.get("major") %></SPAN></TD>
                    </TR></TABLE></TD>
                                    <%
                List phonelist = (List) request.getAttribute("phonelist");
                if (phonelist.size() > 0) {
					Map phonemap = (Map) phonelist.get(0);
					System.out.println(phonemap.get("photo_url"));
                
                 %>
                <TD width=150>              
                <IMG height=200 
                  src="<%=phonemap.get("photo_url")%>" width=150 
              border=0></TD>
              <%}else{ %>
                 <TD width=150>              
                <IMG height=200 
                  src="<%=request.getContextPath() %>/images/guanli/photo_ref.gif" width=150 
              border=0></TD>
              
              <%} %>
              </TR></TABLE>
            <DIV></DIV></TD></TR>
        <TR>
          <TD vAlign=top height=10>
            <TABLE id=table3 cellSpacing=0 cellPadding=0 width="100%" 
              border=0>
              <TR>
                <TD class=pertd>自我评价</TD></TR>
              <TR>
                <TD>
                  <DIV align=right>
                  <TABLE id=table11 cellSpacing=10 width="97%" border=0>
                    
                    <TR>
                      <TD><SPAN 
                  class=t><%=kanmap.get("self_assess") %></SPAN></TD></TR></TABLE></DIV></TD></TR></TABLE></TD></TR>
        <TR>
          <TD>
            <TABLE id=table6 cellSpacing=0 cellPadding=0 width="100%" 
              border=0>
              <TR>
                <TD class=pertd>求学工作经历</TD>
              </TR>
              <TR>
                <TD>
                  <DIV align=right>
                  <TABLE id=table11 cellSpacing=10 width="97%" border=0>
                    
                    <TR>
                      <TD><SPAN 
                        class=t><%=kanmap.get("study_history") %></SPAN></TD></TR></TABLE></DIV></TD></TR></TABLE></TD></TR>
        
        <TR>
          <TD>
            <TABLE id=table7 cellSpacing=0 cellPadding=0 width="100%" 
              border=0>
              <TR>
                <TD class=pertd>特殊技能</TD>
              </TR>
              <TR>
                <TD>
                  <DIV align=right>
                  <TABLE id=table11 cellSpacing=10 width="97%" border=0>
                    
                    <TR>
                      <TD>
                        <TABLE id=table12 cellSpacing=0 cellPadding=0 
                        width="100%" border=0>
                         
                          <TR>
                            <TD vAlign=top align=right width=96 
                            height=22>所学语言：</TD>
                            <TD vAlign=top><SPAN 
                              class=t>&nbsp;<%=kanmap.get("user_language") %></SPAN></TD>
                          </TR>
							  <TR>
                            <TD vAlign=top align=right width=96 
                            height=22>所学语言水平：</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=kanmap.get("user_language_ability") %></SPAN></TD>
							  </TR>
							  <TR>
                            <TD vAlign=top align=right width=96 
                            height=22>技术名称：</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=kanmap.get("special_expertise") %></SPAN></TD>
							  </TR>
                          <TR>
                            <TD vAlign=top align=right width=96 
                            height=22>技能使时间：</TD>
                            <TD vAlign=top><SPAN 
                          class=t><%=kanmap.get("special_use_time") %></SPAN></TD>
                          </TR></TABLE></TD></TR></TABLE></DIV></TD></TR></TABLE></TD></TR>
        <TR>
          <TD>
            <TABLE id=table9 cellSpacing=0 cellPadding=0 width="100%" 
              border=0>
              <TR>
                <TD class=pertd>求职意向</TD></TR>
              <TR>
                <TD>
                  <DIV align=right>
                  <TABLE id=table11 cellSpacing=10 width="97%" border=0>
                    
                    <TR>
                      <TD>
                        <TABLE id=table12 cellSpacing=0 cellPadding=0 
                        width="100%" border=0>
                         
                          <TR>
                            <TD vAlign=top width=102 height=22>期望工作性质：</TD>
                            <TD width="452"  vAlign=top><SPAN 
                              class=t><%=kanmap.get("hope_job_category") %></SPAN></TD>
							  </TR>
							  <TR>
                            <TD vAlign=top width=102 height=22>目前状况：</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=kanmap.get("now_status") %></SPAN></TD>
							  </TR>
							  <TR>
                            <TD vAlign=top width=102 height=22>现从事行业：</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=kanmap.get("now_industry") %></SPAN></TD>
							  </TR>
							  <TR>
                            <TD vAlign=top width=102 height=22>现从职业/现职位：</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=kanmap.get("now_occupation") %>-&gt;<%=kanmap.get("now_position") %></SPAN></TD>
							  </TR>
							  <TR>
                            <TD vAlign=top width=102 height=22>希望从事行业：</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=kanmap.get("hope_industry") %></SPAN></TD>
							  </TR>
							  
                          <TR>
                            <TD vAlign=top width=102 height=22>希望职业/职位：</TD>
                            <TD vAlign=top><SPAN class=t><%=kanmap.get("hope_occupation") %>-&gt;<%=kanmap.get("hope_position") %></SPAN></TD></TR>
                          <TR>
                            <TD vAlign=top width=102 height=22>希望工作地区：</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=kanmap.get("hope_address1") %>-&gt;<%=kanmap.get("hope_address2") %></SPAN></TD>
                          </TR>
                          <TR>
                            <TD vAlign=top width=102 height=22>工资待遇：</TD>
                            <TD vAlign=top><span class="t"><%=kanmap.get("hope_money") %>(人民币)/月</span></TD>
                          </TR></TABLE></TD></TR></TABLE></DIV></TD></TR></TABLE></TD></TR>
        <TR>
          <TD>
            <TABLE id=table10 cellSpacing=0 cellPadding=0 width="100%" 
              border=0>
              <TR>
                <TD class=pertd>联系方式</TD></TR>
              <TR>
                <TD>
                  <DIV align=right>
                  <TABLE id=table11 cellSpacing=10 width="97%" border=0>
                    
                    <TR>
                      <TD>
                        <TABLE id=table12 cellSpacing=0 cellPadding=0 
                        width="100%" border=0>
                         
                          <TR>
                            <TD vAlign=top width=60 height=22>联系电话：</TD>
                            <TD vAlign=top><SPAN 
                          class=t><%=kanmap.get("telephone1") %></SPAN></TD>
                          </TR>
                          <TR>
                            <TD vAlign=top width=60 height=22>电子邮件：</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=kanmap.get("email") %></SPAN></TD></TR>
                          <TR>
                            <TD vAlign=top width=60 height=22>邮&nbsp; &nbsp;&nbsp;编：</TD>
                            <TD vAlign=top><SPAN 
                          class=t><%=kanmap.get("post_code") %></SPAN></TD>
                          </TR>
						  <TR>
                            <TD vAlign=top width=60 height=22>通信地址：</TD>
                            <TD vAlign=top><SPAN 
                          class=t><%=kanmap.get("contact_address") %></SPAN></TD></TR></TABLE></TD></TR></TABLE></DIV></TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE>
                          【<a href='javascript:window.print()' >打印简历</a>】
                          </DIV><%}}} %></BODY></HTML>
