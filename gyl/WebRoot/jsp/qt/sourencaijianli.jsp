<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>找人才————个人简历预览</TITLE>
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
  List list=(List)session.getAttribute("Loginlist");
  Map yhMap=(Map)list.get(0);
  String company_id=(String)yhMap.get("company_id");
 List zaisoujianlilist=(List)request.getAttribute("zaisoujianlilist");
 Map zaisoujianlimap=(Map)zaisoujianlilist.get(0);
 %>
<DIV align=center>【<a href="<%=request.getContextPath() %>/mianshitongzhi?actionType=zhuanfayie&resume_name=<%=zaisoujianlimap.get("resume_name") %>&user_info_id=<%=zaisoujianlimap.get("user_info_id") %>" >发面试通知</a>】&nbsp;【<a href="<%=request.getContextPath() %>/shoucangrencai?actionType=comshourencai&resume_id=<%=zaisoujianlimap.get("resume_id") %>&user_info_id=<%=zaisoujianlimap.get("user_info_id") %>&company_id=<%=company_id %>" >收藏人才</a>】&nbsp;【<a href="<%=request.getContextPath()%>/sourencai?actionType=sourencai">搜索其它人才</a>】
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
                      <TD width=135><SPAN class=t><%=zaisoujianlimap.get("resume_name") %></SPAN></TD>
                      <TD align=right width=78>性&nbsp; &nbsp;&nbsp;别：</TD>
                      <TD width=98><SPAN class=t><%=zaisoujianlimap.get("resume_sex") %></SPAN>　</TD>
                    </TR>
                    
					  <TR>
                      <TD align=right width=89 height=22>出生日期：</TD>
                      <TD width=135><SPAN class=t><%=((String)zaisoujianlimap.get("resume_birth")).substring(0,10) %></SPAN></TD>
                      <TD align=right width=78>年&nbsp; &nbsp;&nbsp;龄：</TD>
                      <TD width=98><span class="t"><%=zaisoujianlimap.get("resume_age") %></span></TD>
					  </TR>
					    <TR>
                      <TD align=right width=89 height=22>用户类型：</TD>
                      <TD width=135><span class="t"><%=zaisoujianlimap.get("stu_or_social") %></span></TD>
                      <TD align=right width=78>婚姻状况：</TD>
                      <TD width=98><SPAN class=t><%=zaisoujianlimap.get("marital_status") %></SPAN></TD>
					    </TR>
					  
                    <TR>
                      <TD align=right width=89 height=22>现所在地：</TD>
                      <TD width=135><SPAN class=t><%=zaisoujianlimap.get("now_live_city1") %>-&gt;<%=zaisoujianlimap.get("now_live_city2") %></SPAN></TD>
                      <TD align=right width=78>户口所在地：</TD>
                      <TD width=98><SPAN class=t><%=zaisoujianlimap.get("account_place1") %>-&gt;<%=zaisoujianlimap.get("account_place2") %></SPAN></TD>
                    </TR>
                    <TR>
                      <TD align=right width=89 height=22>工作经验：</TD>
                      <TD width=135><SPAN class=t><%=(zaisoujianlimap.get("work_year")).equals("0")?"无":(zaisoujianlimap.get("work_year"))%></SPAN></TD>
                      <TD align=right width=78>最高学历：</TD>
                      <TD width=98><SPAN class=t><%=zaisoujianlimap.get("educational_level") %></SPAN></TD>
                    </TR>
                    <TR>
                      <TD align=right width=89 height=22>在读毕业学校：</TD>
                      <TD width=135><SPAN class=t><%=zaisoujianlimap.get("graduate_school") %></SPAN></TD>
                      <TD align=right width=78>毕业时间：</TD>
                      <TD width=98><SPAN class=t><%=((String)zaisoujianlimap.get("graduate_date")).substring(0,4) %>.7</SPAN></TD>
                    </TR>
                    <TR>
                      <TD align=right width=89 height=22>主修专业：</TD>
                      <TD colSpan=3><SPAN class=t><%=zaisoujianlimap.get("major") %></SPAN></TD>
                    </TR></TABLE></TD>
                                    <%
                List photolist = (List) request.getAttribute("photolist");
                System.out.println(photolist.size());
                if (photolist.size() > 0) {
					Map photomap = (Map) photolist.get(0);
					System.out.println(photomap.get("photo_url"));
                
                 %>
                <TD width=150>              
                <IMG height=200 
                  src="<%=photomap.get("photo_url")%>" width=150 
              border=0></TD>
              <%}else{ %>
                 <TD width=150>              
                <IMG height=200 
                  src="<%=request.getContextPath() %>/images/guanli/photo_ref.gif" width=150 
              border=0></TD>
              
              <%} %>
              </TR></TABLE>
            </TD></TR>
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
                  class=t><%=zaisoujianlimap.get("self_assess") %></SPAN></TD></TR></TABLE></DIV></TD></TR></TABLE></TD></TR>
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
                        class=t><%=zaisoujianlimap.get("study_history") %></SPAN></TD></TR></TABLE></DIV></TD></TR></TABLE></TD></TR>
        
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
                              class=t>&nbsp;<%=zaisoujianlimap.get("user_language") %></SPAN></TD>
                          </TR>
							  <TR>
                            <TD vAlign=top align=right width=96 
                            height=22>所学语言水平：</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=zaisoujianlimap.get("user_language_ability") %></SPAN></TD>
							  </TR>
							  <TR>
                            <TD vAlign=top align=right width=96 
                            height=22>技术名称：</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=zaisoujianlimap.get("special_expertise") %></SPAN></TD>
							  </TR>
                          <TR>
                            <TD vAlign=top align=right width=96 
                            height=22>技能使时间：</TD>
                            <TD vAlign=top><SPAN 
                          class=t><%=zaisoujianlimap.get("special_use_time") %></SPAN></TD>
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
                              class=t><%=zaisoujianlimap.get("hope_job_category") %></SPAN></TD>
							  </TR>
							  <TR>
                            <TD vAlign=top width=102 height=22>目前状况：</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=zaisoujianlimap.get("now_status") %></SPAN></TD>
							  </TR>
							  <TR>
                            <TD vAlign=top width=102 height=22>现从事行业：</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=zaisoujianlimap.get("now_industry") %></SPAN></TD>
							  </TR>
							  <TR>
                            <TD vAlign=top width=102 height=22>现从职业/现职位：</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=zaisoujianlimap.get("now_occupation") %>-&gt;<%=zaisoujianlimap.get("now_position") %></SPAN></TD>
							  </TR>
							  <TR>
                            <TD vAlign=top width=102 height=22>希望从事行业：</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=zaisoujianlimap.get("hope_industry") %></SPAN></TD>
							  </TR>
							  
                          <TR>
                            <TD vAlign=top width=102 height=22>希望职业/职位：</TD>
                            <TD vAlign=top><SPAN class=t><%=zaisoujianlimap.get("hope_occupation") %>-&gt;<%=zaisoujianlimap.get("hope_position") %></SPAN></TD></TR>
                          <TR>
                            <TD vAlign=top width=102 height=22>希望工作地区：</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=zaisoujianlimap.get("hope_address1") %>-&gt;<%=zaisoujianlimap.get("hope_address2") %></SPAN></TD>
                          </TR>
                          <TR>
                            <TD vAlign=top width=102 height=22>工资待遇：</TD>
                            <TD vAlign=top><span class="t"><%=zaisoujianlimap.get("hope_money") %>(人民币)/月</span></TD>
                          </TR></TABLE></TD></TR></TABLE></DIV></TD></TR></TABLE></TD></TR>
							</TABLE>
                          </TD>
                          </TR>
                          </TABLE>
                            【<a href='<%=request.getContextPath() %>/mianshitongzhi?actionType=zhuanfayie&resume_name=<%=zaisoujianlimap.get("resume_name") %>&user_info_id=<%=zaisoujianlimap.get("user_info_id") %>' >发面试通知</a>】&nbsp;&nbsp;【<a href="<%=request.getContextPath() %>/shoucangrencai?actionType=comshourencai&resume_id=<%=zaisoujianlimap.get("resume_id") %>&user_info_id=<%=zaisoujianlimap.get("user_info_id") %>&company_id=<%=company_id %>" >收藏人才</a>】&nbsp;【<a href="javascript:history.back(1)">后退</a>】                     
                          </DIV>
                          </BODY></HTML>
