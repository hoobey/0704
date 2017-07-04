<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html><head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="<%=request.getContextPath() %>/images/guanli/cdjobma.css" rel="stylesheet" type="text/css">
<title>管理菜单</title>
<!-- base -->
<script language="javascript">
<!--
function menu_display(t_id,i_id){//显示隐藏程序
        //var t_id;//表格ID
        //var i_id;//图片ID
        var on_img="<%=request.getContextPath() %>/images/guanli/collapse.gif";//打开时图片
        var off_img="<%=request.getContextPath() %>/images/guanli/expand.gif";//隐藏时图片
			if (t_id.style.display == "none") //如果为隐藏状态
			{
				
                t_id.style.display="";//切换为显示状态
                i_id.src=on_img;//换图
			}
        else{//否则
                t_id.style.display="none";//切换为隐藏状态
                i_id.src=off_img;
             }//换图

}

</script>
</head><body bgcolor="#fefefe">
<table border="0" cellpadding="0" cellspacing="0" height="100%" width="180">
		<tbody>
			<tr>
				<td class="td_lb" onclick="menu_display(menutable3,menuimg3)"><img src="<%=request.getContextPath() %>/images/guanli/collapse.gif" id="menuimg3" align="absmiddle" border="0" height="16" width="16"><b>基本设置</b></td>
			</tr>
		</tbody>
	<tbody id="menutable3" style="" width="100%">
			<tr>
				<td class="td_ls">
					<table id="table3" border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody><tr><td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/comguanli?actionType=shouyede" target="jobmaincom">管理首页</a></td>	</tr>
			<%
				 List Loginlist=(List)session.getAttribute("Loginlist");
				Map yhMap=(Map)Loginlist.get(0);
				String id=(String)yhMap.get("company_id");				
			 %>
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/comgaimima?actionType=query&id=<%=id %>" target="jobmaincom">修改密码</a></td>
			</tr>
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a target="_parent" href="<%=request.getContextPath()%>/qtlogin?actionType=tuichu">安全退出</a></td>
			</tr>
			</tbody></table>
		</td>
	</tr>
	</tbody>
	<tbody><tr>
		<td class="td_lb" onclick="menu_display(menutable1,menuimg1)"><img src="<%=request.getContextPath() %>/images/guanli/collapse.gif" id="menuimg1" align="absmiddle" border="0" height="16" width="16"><b>企业信息管理</b></td>
	</tr>
	</tbody><tbody id="menutable1" style="" width="100%">
	<tr>
		<td class="td_ls" height="30">
		<table id="table1" border="0" cellpadding="0" cellspacing="0" width="100%">
			
			<tbody><tr><td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/comjibenxinxigai?actionType=updatepage&id=<%=id %>" target="jobmaincom">企业基本信息管理</a></td></tr>

			<tr><td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/comzhaopinxinxi?actionType=query&id=<%=id %>" target="jobmaincom">企业招聘信息管理</a></td></tr>			

		</tbody></table>
		</td>
	</tr>
	</tbody>
	<tbody><tr>
		<td class="td_lb" onclick="menu_display(menutable2,menuimg2)"><b><img src="<%=request.getContextPath() %>/images/guanli/collapse.gif" id="menuimg2" align="absmiddle" border="0" height="16" width="16">职位超市</b></td>
	</tr>
	</tbody><tbody id="menutable2" style="" width="100%">
	<tr>
		<td class="td_ls">
		<table id="table2" border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody><tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/comguanli?actionType=tuijiande" target="jobmaincom"><font color="#ff0000">为你推荐的最新人才</font></a></td>
			</tr>
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a target="_parent" href="<%=request.getContextPath()%>/sourencai?actionType=sourencai" >人才搜索</a></td>
			</tr>
		</tbody></table>
		</td>
	</tr>
	</tbody>	
	<tbody><tr>
		<td class="td_lb" onclick="menu_display(menutable5,menuimg5)"><b><img src="<%=request.getContextPath() %>/images/guanli/collapse.gif" id="menuimg5" align="absmiddle" border="0" height="16" width="16">在线招聘管理</b></td>
	</tr>
	</tbody><tbody id="menutable5" style="" width="100%">
	<tr>
		<td class="td_ls">
		<table id="table2" class="td_lsi" border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody><tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/comkantoujianli?actionType=kantoude&id=<%=id %>"  target="jobmaincom">人才投递简历管理</a></td>
			</tr>
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/mianshitongzhi?actionType=kanmianshitongzhi&id=<%=id %>" target="jobmaincom">已发的面试通知</a></td>
			</tr>
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath() %>/shoucangrencai?actionType=comkanshourencai&id=<%=id %>"  target="jobmaincom">人才库</a></td>
			</tr>
		</tbody></table>
		</td>
	</tr>
	</tbody>	
	
	<tbody><tr>
		<td class="td_lb" style="height: 100%;">　</td>
	</tr>		
	</tbody></table>

	</body></html>