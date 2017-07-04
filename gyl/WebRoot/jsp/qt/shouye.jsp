<%@ page language="java" import="java.util.*,com.dao.*"
	pageEncoding="gbk"%>
<%@ include file="../../include/header.inc"%>


<HTML>
<HEAD>
<TITLE>南工大招聘网</TITLE>



<LINK href="<%=request.getContextPath() %>/images/CSS5.css"
	type=text/css rel=stylesheet>

<LINK href="<%=request.getContextPath() %>/images/logon_css5.css"
	type=text/css rel=stylesheet>


<style type="text/css">
<!--
.STYLE1 {
	color: #000000
}

.STYLE2 {
	color: #bd0a01
}

.STYLE4 {
	color: #000000;
	font-size: 15px;
}

.STYLE5 {
	color: #002883
}

.STYLE7 {
	font-size: 15px
}
-->
</style>
</HEAD>
<BODY>
	<!--头部开始-->
	<%@include file="tou.jsp"%>
	<!--头结束-->

	<DIV id=member_switch_search>
		<DIV id=member>
			<DIV id=member_title>会员中心</DIV>
			<%
    if(session.getAttribute("Loginlist")==null || session.getAttribute("Loginlist").equals(""))
    {
		
  
%>
			<FORM action="" method=post target=_parent>
				<INPUT TYPE="hidden" NAME="actionType">
				<DIV id=member_input>
					&nbsp;&nbsp;&nbsp;用户名&nbsp;<INPUT name="loginName" type="text">&nbsp;
				</DIV>
				<DIV id=member_input1>
					&nbsp;&nbsp;&nbsp;密&nbsp;&nbsp;码&nbsp;<INPUT type=password
						name="loginPassword">&nbsp;<a
						href="<%=request.getContextPath() %>/jsp/qt/zhaomima.jsp"
						style="color:red">忘记密码</a>
				</DIV>
				<DIV id=member_input2>
					&nbsp;&nbsp;&nbsp;验证码&nbsp;<INPUT maxLength=4 name="yzm">
				</DIV>
				<DIV id=member_code>
					<IMG src="<%=request.getContextPath() %>/qtlogin?actionType=yzm">
				</DIV>
				<DIV class=clear></DIV>
				<DIV id=member_botton>
					<IMG style="CURSOR: pointer" onclick="javascript:tijiao(0)"
						src="<%=request.getContextPath() %>/images/person_login.gif"><IMG
						style="CURSOR: pointer" onclick=javascript:tijiao(1)
						src="<%=request.getContextPath() %>/images/company_login.gif"><a
						href="<%=request.getContextPath() %>/jsp/qt/gerenzhuce.jsp"
						style="border:0px;"><IMG
						src="<%=request.getContextPath() %>/images/resume_reg.gif"></a>
				</DIV>
			</FORM>
			<DIV id=member_botton1>
				<a
					href="<%=request.getContextPath() %>/comzhuce?actionType=chasheng"
					style="border:0px;"><IMG
					src="<%=request.getContextPath() %>/images/company_reg.gif"></a>
			</DIV>
			<%
	}
	else
	{
			List Loginlist=(List)session.getAttribute("Loginlist");
			Map yhMap=(Map)Loginlist.get(0);
						String name=null;
			if(yhMap.get("user_info_name")!=null)
			{
			name=(String)yhMap.get("user_info_name");
			}
			else if(yhMap.get("com_login_name")!=null)
			{
			name=(String)yhMap.get("com_login_name");
			}
			String loginTime=(String)session.getAttribute("loginTime");
 %>
			<div style="margin-top:50px;text-align:center;">
				<span style="font-size:17px;color:red;">用户名:<%=name %></span> <br>
				<br> <span style="font-size:17px;color:red;">登录时间:<%=loginTime %></span><br>
				<br> <span style="font-size:17px;color:red;"">欢迎您登录</span> <a
					href="<%=request.getContextPath()%>/qtlogin?actionType=tuichu"
					style="font-size:17px;">安全退出</a>
			</div>

			<%} %>
			<DIV class=clear></DIV>
		</DIV>

		<DIV id=switch
			style="background:url('<%=request.getContextPath()%>/images/xianchangtu.jpg');">
		</DIV>


		<DIV id=search>
			<DIV id=search_title>职位搜索</DIV>
			<FORM name="fromsou" action=# method=post>
				<INPUT TYPE="hidden" NAME="actionType">
				<DIV id=search_1>
					<label> 职位类别：&nbsp;&nbsp;<select NAME="want_profession">
							<OPTION VALUE="0" SELECTED>^请选择职位类别^</OPTION>
							<OPTION VALUE="管理科学与工程类">管理科学与工程类</OPTION>
							<OPTION VALUE="工商管理类">工商管理类</OPTION>
							<OPTION VALUE="公共管理类">公共管理类</OPTION>
							<OPTION VALUE="图书档案学">图书档案学类</OPTION>
							<OPTION VALUE="电子信息类">电子信息类</OPTION>
							<OPTION VALUE="计算机类">计算机类</OPTION>
							<OPTION VALUE="机械类">机械类</OPTION>
							<OPTION VALUE="仪器仪表类">仪器仪表类</OPTION>
							<OPTION VALUE="能源动力类">能源动力类</OPTION>
							<OPTION VALUE="材料类">材料类</OPTION>
							<OPTION VALUE="轻工纺织食品类">轻工纺织食品类</OPTION>
							<OPTION VALUE="土建类">土建类</OPTION>
							<OPTION VALUE="环境科学与安全类">环境科学与安全类</OPTION>
							<OPTION VALUE="制药工程类">制药工程类</OPTION>
							<OPTION VALUE="交通运输类">交通运输类</OPTION>
							<OPTION VALUE="航空航天类">航空航天类</OPTION>
							<OPTION VALUE="水利类">水利类</OPTION>
							<OPTION VALUE="公安技术类">公安技术类</OPTION>
							<OPTION VALUE="数学类">数学类</OPTION>
							<OPTION VALUE="物理学类">物理学类</OPTION>
							<OPTION VALUE="化学类">化学类</OPTION>
							<OPTION VALUE="生物类">生物类</OPTION>
							<OPTION VALUE="天文地质地理类">天文地质地理类</OPTION>
							<OPTION VALUE="经济学类">经济学类</OPTION>
							<OPTION VALUE="语言学类">语言学类</OPTION>
							<OPTION VALUE="艺术类">艺术类</OPTION>
							<OPTION VALUE="法学类">法学类</OPTION>
							<OPTION VALUE="哲学类">哲学类</OPTION>
							<OPTION VALUE="教育学类">教育学类</OPTION>
							<OPTION VALUE="医学类">医学类</OPTION>
							<OPTION VALUE="农业类">农业类</OPTION>
							<OPTION VALUE="历史学类">历史学类</OPTION>
					</select>
					</label> &nbsp;&nbsp;
				</DIV>
				<DIV id=search_2>
					输入职位关键词:&nbsp;&nbsp;<INPUT
						style="cursor:hand;border: 1px solid #A7A6AA;" NAME="want_keyword">
				</DIV>
				<DIV class=clear></DIV>
				<DIV id=search_botton>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img
						src="<%=request.getContextPath() %>/images/search_botton.gif"
						name="sou" ONCLICK="zhao()" width="80" height="30">
				</DIV>
			</FORM>
			<DIV id=notice_title>网站公告</DIV>
			<UL id=notice_text>
				<LI>本网站发布的招聘企业全部通过了审核，求职人员可以放心查询
				<LI>提示：如果用户对网站有什么建议，或在使用过程中发现一些问题，请给我们留言。
			</UL>
			<DIV class=clear></DIV>
		</DIV>
	</DIV>
	<!--企业招聘开始-->
	<DIV id=adimg>
		<DIV id=adimg_title>
			<DIV style="FLOAT: left; WIDTH: 255px">
				&nbsp;|&nbsp;<SPAN><STRONG>企业招聘</STRONG>&nbsp;</SPAN>
			</DIV>
			<DIV
				style="PADDING-LEFT: 10px; FLOAT: left; WIDTH: 630px; PADDING-TOP: 2px">
				<MARQUEE onmouseover=this.stop() onmouseout=this.start()>
					<SPAN>欢迎光临！<span style="color:red;">注意：人才的信息只有通过审核的企业才可查看</span></SPAN>
				</MARQUEE>
			</DIV>
			<DIV class=clear></DIV>
		</DIV>
		<DIV class=adimg_row>
			<DIV class=adimg_range>
				<a href="http://localhost:8080/lkx"><IMG class=adimg_2
					src="<%=request.getContextPath() %>/images/20090902165530.JPG"></a>
			</DIV>
			<DIV class=adimgspace></DIV>
			<DIV class=adimg_range>
				<a href="http://www.baidu.com"><IMG class=adimg_1
					src="<%=request.getContextPath() %>/images/20090402084626.jpg"></a>
			</DIV>
			<DIV class=adimgspace></DIV>
			<DIV class=adimg_range>
				<a href="http://www.cnblogs.com/hoobey"><IMG class=adimg_1
					src="<%=request.getContextPath() %>/images/20090527154003.JPG"></a>
			</DIV>
			<DIV class=adimgspace></DIV>
			<DIV class=adimg_range>
				<a href="http://localhost:8080/lkx"><IMG class=adimg_2
					src="<%=request.getContextPath() %>/images/20090527153859.JPG"></a>
			</DIV>
			<DIV class=clear></DIV>
		</DIV>
		<!--  个人会员部分开始-->
		<DIV id=main>
			<DIV id=main_title_left>
				<DIV id=main_left_font>&nbsp;|&nbsp;最新招聘职位</DIV>
				<DIV class="STYLE2" id=main_left_more>
					<a href="<%=request.getContextPath()%>/souzhiwei?actionType=query">更多招聘信息...</a>
				</DIV>
				<DIV class=clear></DIV>
			</DIV>
			<DIV id=main_title_right>
				<DIV class=main_title_font>
					<A href="#" target=_blank>&nbsp;|&nbsp;</A>最新人才信息
				</DIV>
				<DIV class="STYLE2" id=main_right_more>
					<%      if(session.getAttribute("Loginlist")!=null && !session.getAttribute("Loginlist").equals(""))
    {
    	List list=(List)session.getAttribute("Loginlist");
        Map map=(Map)list.get(0);
        if(map.get("company_id")!=null&&!map.get("company_id").equals(""))
        {    %>
					<span class="main_title_more STYLE2"><A
						href="<%=request.getContextPath()%>/sourencai?actionType=sourencai">More</A></span>
					<%}else
		{ %>
					<span class="main_title_more STYLE2">More</span>
					<%}
	}
	else{%>
					<span class="main_title_more STYLE2">More</span>
					<% }%>
				</DIV>
				<DIV class=clear></DIV>
			</DIV>
			<DIV id=main_left_text>
				<DIV id=main_left_text1>
					<%
    DaoImpl dao = new DaoImpl();
	//通过最后发布信息的企业查询企业id
	String sql1="select distinct c.company_name,c.company_id from company c where c.com_is_examine='是' and c.company_id in( "
		+" select top 32 w.company_id from want_information w order by w.want_time desc )";
	List list1 = dao.executeQuery(sql1);
	for(int i=0;i<list1.size();i++)
	{
		Map m1=(Map)list1.get(i);
	%>
					<UL>
						<LI class=main_left_li><a
							href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=(String)m1.get("company_id")%>"><%=(String)m1.get("company_name") %></a>&nbsp;
						</LI>
						<LI class=main_left_li1>&nbsp;<span class="STYLE5"> <%
  		//通过企业id查询这个企业的招聘职位类
	String sql2="select top 3 * from want_information where want_information.company_id='"+m1.get("company_id")+"'";
  		List list2 = dao.executeQuery(sql2);
  		for(int j=0;j<list2.size();j++)
  		{
  			Map m2=(Map)list2.get(j);
  	%> <a
								href="<%=request.getContextPath()%>/souzhiwei?actionType=zaizaiquery&want_information_id=<%=(String)m2.get("want_information_id")%>"><%=(String)m2.get("want_name") %></a>&nbsp;
								<%} %>
						</span>
						</LI>
					</UL>
					<%} %>
				</DIV>
				<DIV class=clear></DIV>
			</DIV>
			<DIV id=main_right>
				<DIV id=main_right_newresume>
					<UL class=main_right_text>
						<%
  	String sql3="select top 22 resume_id,resume_name,resume_age,educational_level,major,now_live_city1 from resume  where resume_name!='null' and now_status!='null' order by resume_id desc";
  	List list3=dao.executeQuery(sql3);
  	for(int i=0;i<list3.size();i++)
  	{
  		Map map3=(Map)list3.get(i);
  %>

						<%
       if(session.getAttribute("Loginlist")!=null && !session.getAttribute("Loginlist").equals(""))
    {
    	List list=(List)session.getAttribute("Loginlist");
        Map map=(Map)list.get(0);
        if(map.get("company_id")!=null&&!map.get("company_id").equals(""))
        {   
        %>

						<LI class="newresume_li1 STYLE2">&nbsp;&nbsp;<a
							href="<%=request.getContextPath()%>/sourencai?actionType=zaisourencai&id=<%=map3.get("resume_id") %>"><%=(String)map3.get("resume_name") %></a></LI>
						<LI class=newresume_li2><%=(String)map3.get("resume_age") %>岁&nbsp;</LI>
						<LI class=newresume_li3><%=(String)map3.get("educational_level")%>&nbsp;&nbsp;</LI>
						<LI class=newresume_li4><%=(String)map3.get("major") %></LI>
						<LI class=newresume_li5><%=(String)map3.get("now_live_city1") %></LI>
						<%}
        else {%>
						<LI class="newresume_li1 STYLE2">&nbsp;&nbsp;<%=(String)map3.get("resume_name") %></LI>
						<LI class=newresume_li2><%=(String)map3.get("resume_age") %>岁&nbsp;</LI>
						<LI class=newresume_li3><%=(String)map3.get("educational_level")%>&nbsp;&nbsp;</LI>
						<LI class=newresume_li4><%=(String)map3.get("major") %></LI>
						<LI class=newresume_li5><%=(String)map3.get("now_live_city1") %></LI>
						<%} 
    }else{
    %>
						<LI class="newresume_li1 STYLE2">&nbsp;&nbsp;<%=(String)map3.get("resume_name") %></LI>
						<LI class=newresume_li2><%=(String)map3.get("resume_age") %>岁&nbsp;</LI>
						<LI class=newresume_li3><%=(String)map3.get("educational_level")%>&nbsp;&nbsp;</LI>
						<LI class=newresume_li4><%=(String)map3.get("major") %></LI>
						<LI class=newresume_li5><%=(String)map3.get("now_live_city1") %></LI>
						<%
    }
	}%>
					</UL>
					<DIV class=clear></DIV>
				</DIV>

				<!--  网上留言开始-->
				<DIV class=main_right_title>
					<DIV class=main_title_font>&nbsp;|&nbsp;来信答复</DIV>
					<DIV class=main_title_more>
						<span class="main_title_more STYLE2"><a
							href="<%=request.getContextPath()%>/qtmessage?actionType=query">More</a></span>
					</DIV>
					<DIV class=clear></DIV>
				</DIV>
				<DIV id=main_right_online>
					<DIV class=main_right_pic>
						<a href="<%=request.getContextPath()%>/qtmessage?actionType=query"><IMG
							src="<%=request.getContextPath() %>/images/feedback_pic.jpg"
							alt=来信答复 width="245" height="85"></a>
					</DIV>
					<UL class=main_right_text1>
						<LI class=main_right_li1>
							<%
  //留言 取出最后的1条留言
  	String sql4="select top 1 * from message where message_is_examine='是' order by message_updatetime desc";
  	List list4=dao.executeQuery(sql4);
  	Map map4=(Map)list4.get(0);
  	
  %> <FONT><%=((((String)map4.get("message_content")).length()>55)?(((String)map4.get("message_content")).substring(0,55)):((String)map4.get("message_content")))%>...</FONT>
						</LI>
					</UL>
				</DIV>
			</DIV>
			<DIV class=clear></DIV>
		</DIV>
		<!--一些图片-->
		<DIV id=logo>
			<TABLE cellSpacing=0 cellPadding=0 align=left border=0 cellspace="0">

				<TR>
					<TD id=logo1 vAlign=top>
						<TABLE cellSpacing=0 cellPadding=0 width=950 border=0>

							<TR>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=222221%>"><IMG
										src="<%=request.getContextPath() %>/images/8154836_20090605141346.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=222222%>"><IMG
										src="<%=request.getContextPath() %>/images/8187737_20093110393.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=222223%>"><IMG
										src="<%=request.getContextPath() %>/images/8141269_20092603514.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=222224%>"><IMG
										src="<%=request.getContextPath() %>/images/8437230_20091019172000.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=222225%>"><IMG
										src="<%=request.getContextPath() %>/images/7968168_20090513114643.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=222226%>"><IMG
										src="<%=request.getContextPath() %>/images/6657702_20083300837.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=222227%>"><IMG
										src="<%=request.getContextPath() %>/images/8322886_20090628133401.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=222228%>"><IMG
										src="<%=request.getContextPath() %>/images/8137556_20092204256.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=222229%>"><IMG
										src="<%=request.getContextPath() %>/images/8326308_20090626153814.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=2222210%>"><IMG
										src="<%=request.getContextPath() %>/images/8303749_20090617151327.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=2222211%>"><IMG
										src="<%=request.getContextPath() %>/images/8188565_20090703133718.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=2222212%>"><IMG
										src="<%=request.getContextPath() %>/images/8143038_20090507123629.gif"></a></TD>
							</TR>
							<TR>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=2222213%>"><IMG
										src="<%=request.getContextPath() %>/images/8333013_20090630222227.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=2222214%>"><IMG
										src="<%=request.getContextPath() %>/images/8180864_20090501113242.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=2222215%>"><IMG
										src="<%=request.getContextPath() %>/images/8286570_20090523073637.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=2222216%>"><IMG
										src="<%=request.getContextPath() %>/images/8325507_20090624112407.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=2222217%>"><IMG
										src="<%=request.getContextPath() %>/images/7355936_2008524098.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=2222218%>"><IMG
										src="<%=request.getContextPath() %>/images/7842208_2008102201859.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=2222219%>"><IMG
										src="<%=request.getContextPath() %>/images/8128911_200921102357.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=2222220%>"><IMG
										src="<%=request.getContextPath() %>/images/7451317_20086903858.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=2222221%>"><IMG
										src="<%=request.getContextPath() %>/images/6885630_2009215095.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=2222222%>"><IMG
										src="<%=request.getContextPath() %>/images/8161362_20090415131808.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=2222223%>"><IMG
										src="<%=request.getContextPath() %>/images/8238585_20090414132018.gif"></a></TD>
								<TD><a
									href="<%=request.getContextPath()%>/souzhiwei?actionType=zaiquery&company_id=<%=2222224%>"><IMG
										src="<%=request.getContextPath() %>/images/8177673_20090403113035.gif"></a></TD>
							</TR>
						</TABLE>
					</TD>
					<TD id=logo2 vAlign=top>&nbsp;</TD>
				</TR>
			</TABLE>
		</DIV>
	</DIV>
	<DIV class=clear></DIV>

	<!--职场新闻（资讯）部分开始-->
	<DIV id=news>
		<DIV id=news_left>
			<a style="color: #003399;"
				href="<%=request.getContextPath()%>/souwenzhang?actionType=query">职场新闻</a>
		</DIV>
		<DIV id=news_pic>
			<a style="color: #003399;"
				href="<%=request.getContextPath()%>/souwenzhang?actionType=query"><IMG
				alt=最新职场新闻，职业规划，薪资行情
				src="<%=request.getContextPath() %>/images/news.gif"></a>
		</DIV>
		<%
	//推举审核后的1篇文章，根据发布时间排序
	String sql5="select top 1 * from article where  is_examine='是' order by update_time desc";
	List list5=dao.executeQuery(sql5);
	Map map5=(Map)list5.get(0);
	String a_id=(String)map5.get("article_id");
%>
		<DIV id=news_font><%=(((String)map5.get("content")).length()>50)?(((String)map5.get("content")).substring(0,50)):((String)map5.get("content"))%>...
			<a
				href="<%=request.getContextPath()%>/souwenzhang?actionType=kanweizhang&article_id=<%=(String)map5.get("article_id")%>"><FONT
				class=news_detail>[详细]</FONT></a>
		</DIV>
		<DIV style="FLOAT: left">

			<UL class=news_ul>
				<%
	//推举审核后的8篇文章，根据发布时间排序
	String sql6="select top 8 * from article where  is_examine='是' and article_id not in("+a_id+") order by update_time desc ";
	List list6=dao.executeQuery(sql6);
	for(int i=0;i<2;i++)
	{
		Map map6=(Map)list6.get(i);		
%>
				<LI><a
					href="<%=request.getContextPath()%>/souwenzhang?actionType=kanweizhang&article_id=<%=(String)map6.get("article_id")%>"><FONT
						class=news_detail><%=(((String)map6.get("article_name")).length()>18)?(((String)map6.get("article_name")).substring(0,18)):((String)map6.get("article_name"))%>...</FONT></a>
				</LI>
				<%} %>
			</UL>

			<UL class=news_ul1>
				<%
for(int i=2;i<4;i++)
{
	Map map6=(Map)list6.get(i);
%>
				<LI><a
					href="<%=request.getContextPath()%>/souwenzhang?actionType=kanweizhang&article_id=<%=(String)map6.get("article_id")%>"><FONT
						class=news_detail style="color:#222222;"><%=(((String)map6.get("article_name")).length()>18)?(((String)map6.get("article_name")).substring(0,18)):((String)map6.get("article_name"))%>...</FONT></a></LI>
				<%} %>
			</UL>
			<UL class=news_ul>
				<%
for(int i=4;i<6;i++)
{
	Map map6=(Map)list6.get(i);
%>
				<LI><a
					href="<%=request.getContextPath()%>/souwenzhang?actionType=kanweizhang&article_id=<%=(String)map6.get("article_id")%>"><FONT
						class=news_detail style="color:#222222;"><%=(((String)map6.get("article_name")).length()>18)?(((String)map6.get("article_name")).substring(0,18)):((String)map6.get("article_name"))%>...</FONT></a></LI>
				<%} %>
			</UL>
			<UL class=news_ul1>
				<%
for(int i=6;i<8;i++)
{
	Map map6=(Map)list6.get(i);
%>
				<LI><a
					href="<%=request.getContextPath()%>/souwenzhang?actionType=kanweizhang&article_id=<%=(String)map6.get("article_id")%>"><FONT
						class=news_detail style="color:#222222;"><%=(((String)map6.get("article_name")).length()>18)?(((String)map6.get("article_name")).substring(0,18)):((String)map6.get("article_name"))%>...</FONT></a></LI>
				<%} %>
			</UL>
		</DIV>
		<DIV class=clear></DIV>
	</DIV>
	<DIV id=frdlink_title>
		<DIV id=frdlink_title_font>&nbsp;|&nbsp;友情链接</DIV>

	</DIV>
	<DIV id=frdlink_text>
		<UL style="width: 906px;">
			<img src=images/bg_02.jpg>
			<LI><a href="http://www.51job.com">前程无忧</a></LI>
			<LI><a href="http://www.hr.com.cn">中国人力资源网</a></LI>
			<LI><a href="http://www.chinahr.com/index.htm">中华英才网</a></LI>
			<LI><a href="http://qiye.01job.cn/">上海第一招聘网</a></LI>
			<LI><a href="http://www.job168.com">南方人才网</a></LI>
			<LI><a href="http://hrb.58.com/zhaopin.shtml/">哈尔滨网招聘网</a></LI>
			<LI><a href="http://www.21cnhr.com.cn/">21世纪金才网</a></LI>
			<LI><a href="http://www.cnzhaopin.com/">中国人才网</a></LI>
			<LI><A href="http://www.coreasia.com.tw/">亚洲人才網</A></LI>
		</UL>
		<DIV class=clear></DIV>
	</DIV>
	<%@include file="wei.jsp"%>

	<SCRIPT type=text/javascript>
<!--

function tijiao(bj)
{
		document.forms[0].actionType.value="qtdl";		
		document.forms[0].action="<%=request.getContextPath()%>/qtlogin?bj="+bj;
		document.forms[0].submit();
}

//用来找职位的 
	function zhao()
	{
	document.fromsou.actionType.value="query";
	document.fromsou.action="<%=request.getContextPath()%>/souzhiwei?";
	document.fromsou.submit();
	}
	function gaozhao()
	{
	document.forms[0].actionType.value="sheng";
	document.forms[0].action="<%=request.getContextPath()%>/souzhiwei?";
	document.forms[0].submit();
	}

</SCRIPT>
</BODY>
</HTML>