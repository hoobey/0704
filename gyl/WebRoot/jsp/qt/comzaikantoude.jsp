<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>����ǰ����Ƹ��������ҵ��Ͷ���ļ���</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE type=text/css>
TD {
	FONT-SIZE: 12px; LINE-HEIGHT: 20px; FONT-FAMILY: "����"; TEXT-DECORATION: none
}
.d {
	FONT-SIZE: 14px; FONT-FAMILY: "����"; TEXT-DECORATION: none
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
 List zaitoulailist=(List)request.getAttribute("zaitoulailist");
 Map comzaikantoudemap=(Map)zaitoulailist.get(0);
 %>
<DIV align=center>��<a href="<%=request.getContextPath() %>/mianshitongzhi?actionType=zhuanfayie&resume_name=<%=comzaikantoudemap.get("resume_name") %>&user_info_id=<%=comzaikantoudemap.get("user_info_id") %>" >������֪ͨ</a>��
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
                        class=t3>��&nbsp;��&nbsp;��&nbsp;��</SPAN></TD></TR></TABLE></TD></TR></TABLE></TD></TR>
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
                      <TD align=right width=89 height=22>��&nbsp;&nbsp; 
                      &nbsp;����</TD>
                      <TD width=135><SPAN class=t><%=comzaikantoudemap.get("resume_name") %></SPAN></TD>
                      <TD align=right width=78>��&nbsp; &nbsp;&nbsp;��</TD>
                      <TD width=98><SPAN class=t><%=comzaikantoudemap.get("resume_sex") %></SPAN>��</TD>
                    </TR>
                    
					  <TR>
                      <TD align=right width=89 height=22>�������ڣ�</TD>
                      <TD width=135><SPAN class=t><%=((String)comzaikantoudemap.get("resume_birth")).substring(0,10) %></SPAN></TD>
                      <TD align=right width=78>��&nbsp; &nbsp;&nbsp;�䣺</TD>
                      <TD width=98><span class="t"><%=comzaikantoudemap.get("resume_age") %></span></TD>
					  </TR>
					    <TR>
                      <TD align=right width=89 height=22>�û����ͣ�</TD>
                      <TD width=135><span class="t"><%=comzaikantoudemap.get("stu_or_social") %></span></TD>
                      <TD align=right width=78>����״����</TD>
                      <TD width=98><SPAN class=t><%=comzaikantoudemap.get("marital_status") %></SPAN></TD>
					    </TR>
					  
                    <TR>
                      <TD align=right width=89 height=22>�����ڵأ�</TD>
                      <TD width=135><SPAN class=t><%=comzaikantoudemap.get("now_live_city1") %>-&gt;<%=comzaikantoudemap.get("now_live_city2") %></SPAN></TD>
                      <TD align=right width=78>�������ڵأ�</TD>
                      <TD width=98><SPAN class=t><%=comzaikantoudemap.get("account_place1") %>-&gt;<%=comzaikantoudemap.get("account_place2") %></SPAN></TD>
                    </TR>
                    <TR>
                      <TD align=right width=89 height=22>�������飺</TD>
                      <TD width=135><SPAN class=t><%=(comzaikantoudemap.get("work_year")).equals("0")?"��":(comzaikantoudemap.get("work_year"))%></SPAN></TD>
                      <TD align=right width=78>���ѧ����</TD>
                      <TD width=98><SPAN class=t><%=comzaikantoudemap.get("educational_level") %></SPAN></TD>
                    </TR>
                    <TR>
                      <TD align=right width=89 height=22>�ڶ���ҵѧУ��</TD>
                      <TD width=135><SPAN class=t><%=comzaikantoudemap.get("graduate_school") %></SPAN></TD>
                      <TD align=right width=78>��ҵʱ�䣺</TD>
                      <TD width=98><SPAN class=t><%=((String)comzaikantoudemap.get("graduate_date")).substring(0,4) %>.7</SPAN></TD>
                    </TR>
                    <TR>
                      <TD align=right width=89 height=22>����רҵ��</TD>
                      <TD colSpan=3><SPAN class=t><%=comzaikantoudemap.get("major") %></SPAN></TD>
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
                <TD class=pertd>��������</TD></TR>
              <TR>
                <TD>
                  <DIV align=right>
                  <TABLE id=table11 cellSpacing=10 width="97%" border=0>
                    
                    <TR>
                      <TD><SPAN 
                  class=t><%=comzaikantoudemap.get("self_assess") %></SPAN></TD></TR></TABLE></DIV></TD></TR></TABLE></TD></TR>
        <TR>
          <TD>
            <TABLE id=table6 cellSpacing=0 cellPadding=0 width="100%" 
              border=0>
              <TR>
                <TD class=pertd>��ѧ��������</TD>
              </TR>
              <TR>
                <TD>
                  <DIV align=right>
                  <TABLE id=table11 cellSpacing=10 width="97%" border=0>
                    
                    <TR>
                      <TD><SPAN 
                        class=t><%=comzaikantoudemap.get("study_history") %></SPAN></TD></TR></TABLE></DIV></TD></TR></TABLE></TD></TR>
        
        <TR>
          <TD>
            <TABLE id=table7 cellSpacing=0 cellPadding=0 width="100%" 
              border=0>
              <TR>
                <TD class=pertd>���⼼��</TD>
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
                            height=22>��ѧ���ԣ�</TD>
                            <TD vAlign=top><SPAN 
                              class=t>&nbsp;<%=comzaikantoudemap.get("user_language") %></SPAN></TD>
                          </TR>
							  <TR>
                            <TD vAlign=top align=right width=96 
                            height=22>��ѧ����ˮƽ��</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=comzaikantoudemap.get("user_language_ability") %></SPAN></TD>
							  </TR>
							  <TR>
                            <TD vAlign=top align=right width=96 
                            height=22>�������ƣ�</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=comzaikantoudemap.get("special_expertise") %></SPAN></TD>
							  </TR>
                          <TR>
                            <TD vAlign=top align=right width=96 
                            height=22>����ʹʱ�䣺</TD>
                            <TD vAlign=top><SPAN 
                          class=t><%=comzaikantoudemap.get("special_use_time") %></SPAN></TD>
                          </TR></TABLE></TD></TR></TABLE></DIV></TD></TR></TABLE></TD></TR>
        <TR>
          <TD>
            <TABLE id=table9 cellSpacing=0 cellPadding=0 width="100%" 
              border=0>
              <TR>
                <TD class=pertd>��ְ����</TD></TR>
              <TR>
                <TD>
                  <DIV align=right>
                  <TABLE id=table11 cellSpacing=10 width="97%" border=0>
                    
                    <TR>
                      <TD>
                        <TABLE id=table12 cellSpacing=0 cellPadding=0 
                        width="100%" border=0>
                         
                          <TR>
                            <TD vAlign=top width=102 height=22>�����������ʣ�</TD>
                            <TD width="452"  vAlign=top><SPAN 
                              class=t><%=comzaikantoudemap.get("hope_job_category") %></SPAN></TD>
							  </TR>
							  <TR>
                            <TD vAlign=top width=102 height=22>Ŀǰ״����</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=comzaikantoudemap.get("now_status") %></SPAN></TD>
							  </TR>
							  <TR>
                            <TD vAlign=top width=102 height=22>�ִ�����ҵ��</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=comzaikantoudemap.get("now_industry") %></SPAN></TD>
							  </TR>
							  <TR>
                            <TD vAlign=top width=102 height=22>�ִ�ְҵ/��ְλ��</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=comzaikantoudemap.get("now_occupation") %>-&gt;<%=comzaikantoudemap.get("now_position") %></SPAN></TD>
							  </TR>
							  <TR>
                            <TD vAlign=top width=102 height=22>ϣ��������ҵ��</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=comzaikantoudemap.get("hope_industry") %></SPAN></TD>
							  </TR>
							  
                          <TR>
                            <TD vAlign=top width=102 height=22>ϣ��ְҵ/ְλ��</TD>
                            <TD vAlign=top><SPAN class=t><%=comzaikantoudemap.get("hope_occupation") %>-&gt;<%=comzaikantoudemap.get("hope_position") %></SPAN></TD></TR>
                          <TR>
                            <TD vAlign=top width=102 height=22>ϣ������������</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=comzaikantoudemap.get("hope_address1") %>-&gt;<%=comzaikantoudemap.get("hope_address2") %></SPAN></TD>
                          </TR>
                          <TR>
                            <TD vAlign=top width=102 height=22>���ʴ�����</TD>
                            <TD vAlign=top><span class="t"><%=comzaikantoudemap.get("hope_money") %>(�����)/��</span></TD>
                          </TR></TABLE></TD></TR></TABLE></DIV></TD></TR></TABLE></TD></TR>
        <TR>
          <TD>
            <TABLE id=table10 cellSpacing=0 cellPadding=0 width="100%" 
              border=0>
              <TR>
                <TD class=pertd>��ϵ��ʽ</TD></TR>
              <TR>
                <TD>
                  <DIV align=right>
                  <TABLE id=table11 cellSpacing=10 width="97%" border=0>
                    
                    <TR>
                      <TD>
                        <TABLE id=table12 cellSpacing=0 cellPadding=0 
                        width="100%" border=0>
                         
                          <TR>
                            <TD vAlign=top width=60 height=22>��ϵ�绰��</TD>
                            <TD vAlign=top><SPAN 
                          class=t><%=comzaikantoudemap.get("telephone1") %></SPAN></TD>
                          </TR>
                          <TR>
                            <TD vAlign=top width=60 height=22>�����ʼ���</TD>
                            <TD vAlign=top><SPAN 
                              class=t><%=comzaikantoudemap.get("email") %></SPAN></TD></TR>
                          <TR>
                            <TD vAlign=top width=60 height=22>��&nbsp; &nbsp;&nbsp;�ࣺ</TD>
                            <TD vAlign=top><SPAN 
                          class=t><%=comzaikantoudemap.get("post_code") %></SPAN></TD>
                          </TR>
						  <TR>
                            <TD vAlign=top width=60 height=22>ͨ�ŵ�ַ��</TD>
                            <TD vAlign=top><SPAN 
                          class=t><%=comzaikantoudemap.get("contact_address") %></SPAN></TD></TR></TABLE></TD></TR></TABLE></DIV></TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE>
                          ��<a href='<%=request.getContextPath() %>/mianshitongzhi?actionType=zhuanfayie&resume_name=<%=comzaikantoudemap.get("resume_name") %>&user_info_id=<%=comzaikantoudemap.get("user_info_id") %>' >������֪ͨ</a>��
                          </DIV></BODY></HTML>
