<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html><head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="<%=request.getContextPath() %>/images/guanli/cdjobma.css" rel="stylesheet" type="text/css">
<title>����˵�</title>
<!-- base -->
<script language="javascript">
<!--
function menu_display(t_id,i_id){//��ʾ���س���
        //var t_id;//���ID
        //var i_id;//ͼƬID
        var on_img="<%=request.getContextPath() %>/images/guanli/collapse.gif";//��ʱͼƬ
        var off_img="<%=request.getContextPath() %>/images/guanli/expand.gif";//����ʱͼƬ
			if (t_id.style.display == "none") //���Ϊ����״̬
			{
				
                t_id.style.display="";//�л�Ϊ��ʾ״̬
                i_id.src=on_img;//��ͼ
			}
        else{//����
                t_id.style.display="none";//�л�Ϊ����״̬
                i_id.src=off_img;
             }//��ͼ

}

</script>
</head><body bgcolor="#fefefe">
<table border="0" cellpadding="0" cellspacing="0" height="100%" width="180">
		<tbody>
			<tr>
				<td class="td_lb" onclick="menu_display(menutable3,menuimg3)"><img src="<%=request.getContextPath() %>/images/guanli/collapse.gif" id="menuimg3" align="absmiddle" border="0" height="16" width="16"><b>��������</b></td>
			</tr>
		</tbody>
	<tbody id="menutable3" style="" width="100%">
			<tr>
				<td class="td_ls">
					<table id="table3" border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody><tr><td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/comguanli?actionType=shouyede" target="jobmaincom">������ҳ</a></td>	</tr>
			<%
				 List Loginlist=(List)session.getAttribute("Loginlist");
				Map yhMap=(Map)Loginlist.get(0);
				String id=(String)yhMap.get("company_id");				
			 %>
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/comgaimima?actionType=query&id=<%=id %>" target="jobmaincom">�޸�����</a></td>
			</tr>
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a target="_parent" href="<%=request.getContextPath()%>/qtlogin?actionType=tuichu">��ȫ�˳�</a></td>
			</tr>
			</tbody></table>
		</td>
	</tr>
	</tbody>
	<tbody><tr>
		<td class="td_lb" onclick="menu_display(menutable1,menuimg1)"><img src="<%=request.getContextPath() %>/images/guanli/collapse.gif" id="menuimg1" align="absmiddle" border="0" height="16" width="16"><b>��ҵ��Ϣ����</b></td>
	</tr>
	</tbody><tbody id="menutable1" style="" width="100%">
	<tr>
		<td class="td_ls" height="30">
		<table id="table1" border="0" cellpadding="0" cellspacing="0" width="100%">
			
			<tbody><tr><td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/comjibenxinxigai?actionType=updatepage&id=<%=id %>" target="jobmaincom">��ҵ������Ϣ����</a></td></tr>

			<tr><td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/comzhaopinxinxi?actionType=query&id=<%=id %>" target="jobmaincom">��ҵ��Ƹ��Ϣ����</a></td></tr>			

		</tbody></table>
		</td>
	</tr>
	</tbody>
	<tbody><tr>
		<td class="td_lb" onclick="menu_display(menutable2,menuimg2)"><b><img src="<%=request.getContextPath() %>/images/guanli/collapse.gif" id="menuimg2" align="absmiddle" border="0" height="16" width="16">ְλ����</b></td>
	</tr>
	</tbody><tbody id="menutable2" style="" width="100%">
	<tr>
		<td class="td_ls">
		<table id="table2" border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody><tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/comguanli?actionType=tuijiande" target="jobmaincom"><font color="#ff0000">Ϊ���Ƽ��������˲�</font></a></td>
			</tr>
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a target="_parent" href="<%=request.getContextPath()%>/sourencai?actionType=sourencai" >�˲�����</a></td>
			</tr>
		</tbody></table>
		</td>
	</tr>
	</tbody>	
	<tbody><tr>
		<td class="td_lb" onclick="menu_display(menutable5,menuimg5)"><b><img src="<%=request.getContextPath() %>/images/guanli/collapse.gif" id="menuimg5" align="absmiddle" border="0" height="16" width="16">������Ƹ����</b></td>
	</tr>
	</tbody><tbody id="menutable5" style="" width="100%">
	<tr>
		<td class="td_ls">
		<table id="table2" class="td_lsi" border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody><tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/comkantoujianli?actionType=kantoude&id=<%=id %>"  target="jobmaincom">�˲�Ͷ�ݼ�������</a></td>
			</tr>
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/mianshitongzhi?actionType=kanmianshitongzhi&id=<%=id %>" target="jobmaincom">�ѷ�������֪ͨ</a></td>
			</tr>
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath() %>/shoucangrencai?actionType=comkanshourencai&id=<%=id %>"  target="jobmaincom">�˲ſ�</a></td>
			</tr>
		</tbody></table>
		</td>
	</tr>
	</tbody>	
	
	<tbody><tr>
		<td class="td_lb" style="height: 100%;">��</td>
	</tr>		
	</tbody></table>

	</body></html>