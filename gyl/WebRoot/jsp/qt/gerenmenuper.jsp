<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html><head>


<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="<%=request.getContextPath() %>/images/guanli/cdjobma.css" rel="stylesheet" type="text/css">
<title>����˵�</title>
<!-- base -->
<script language="javascript">

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
			<tbody><tr><td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/guanli?actionType=shouyede" target="jobmainper">������ҳ</a></td>	</tr>
			<%
				 List Loginlist=(List)session.getAttribute("Loginlist");
				Map yhMap=(Map)Loginlist.get(0);
				String id=(String)yhMap.get("user_info_id");				
			 %>
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/gerengaimima?actionType=query&id=<%=id %>" target="jobmainper">�޸�����</a></td>
			</tr>
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a target="_parent" href="<%=request.getContextPath()%>/qtlogin?actionType=tuichu">��ȫ�˳�</a></td>
			</tr>
			</tbody></table>
		</td>
	</tr>
	</tbody>
	<tbody><tr>
		<td class="td_lb" onclick="menu_display(menutable1,menuimg1)"><img src="<%=request.getContextPath() %>/images/guanli/collapse.gif" id="menuimg1" align="absmiddle" border="0" height="16" width="16"><b>���˼�������</b></td>
	</tr>
	</tbody><tbody id="menutable1" style="" width="100%">
	<tr>
		<td class="td_ls" height="30">
		<table id="table1" border="0" cellpadding="0" cellspacing="0" width="100%">
			
			<tbody><tr><td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/gerenjibenxinxi?actionType=panduan&id=<%=id %>" target="jobmainper">���˻�����Ϣ����</a></td></tr>

			<tr><td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/gerenqiuzhiyixiang?actionType=panduan&id=<%=id %>" target="jobmainper">��ְ������Ϣ����</a></td></tr>
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/chuanzhaopian?actionType=zhaopian" target="jobmainper">��Ƭ��Ƭ����</a></td>
			</tr>			
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/gerenkanjianli?actionType=kanjian&id=<%=id %>"  target="_blank"><font color="#ff0000">����Ԥ��/��ӡ</font></a></td>
			</tr>
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
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/guanli?actionType=tuijiande" target="jobmainper"><font color="#ff0000">Ϊ���Ƽ�������ְλ</font></a></td>
			</tr>
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a target="_parent" href="<%=request.getContextPath()%>/souzhiwei?actionType=query" >ְλ����</a></td>
			</tr>
		</tbody></table>
		</td>
	</tr>
	</tbody>	
	<tbody><tr>
		<td class="td_lb" onclick="menu_display(menutable5,menuimg5)"><b><img src="<%=request.getContextPath() %>/images/guanli/collapse.gif" id="menuimg5" align="absmiddle" border="0" height="16" width="16">������ְ����</b></td>
	</tr>
	</tbody><tbody id="menutable5" style="" width="100%">
	<tr>
		<td class="td_ls">
		<table id="table2" class="td_lsi" border="0" cellpadding="0" cellspacing="0" width="100%">
			<tbody><tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/kangerentoujianli?actionType=kantoude&id=<%=id %>"  target="jobmainper">ӦƸ��ʷ��¼</a></td>
			</tr>
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/gerenkanmianshitongzhi?actionType=gerenkantongzhi&id=<%=id %>" target="jobmainper">�յ�������֪ͨ</a></td>
			</tr>
			<tr>
				<td class="td_lsi"><img src="<%=request.getContextPath() %>/images/guanli/leaf.gif" align="absmiddle" border="0" height="16" width="16"><a href="<%=request.getContextPath()%>/kangerenshoucanginfo?actionType=kanshoucangde&id=<%=id %>"  target="jobmainper">ְλ�ղؼ�</a></td>
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