<%@ page  pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>����ҵ��ϸ��Ϣ</title>
 
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
           <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
      <tr>
        <td class="subtitle navi_bar" align="center">��ҵ��ϸ��Ϣ</td>
      </tr>
    </table> 
    <%
			List list=(List)request.getAttribute("comxianglist");
			  Map map=(Map)list.get(0);  
    
     %>
 	<table class="table_style" cellspacing="1" cellpadding="4" width="100%" id="wish">
	<tr>
	  <td class="page td_title">��˾����</td>
      <td class="page td_list" colspan="3"><%=(String)map.get("company_name")%></td>
	</tr>
	<tr>
   	   <td class="page td_title">��˾���ڵ�</td>
      <td class="page td_list" ><%=(String)map.get("big_address_name")%>-&gt;<%=(String)map.get("small_address_name")%></td>
      <td class="page td_title">��Ƹ��ϵ��ַ</td>
      <td class="page td_list" ><%=(String)map.get("com_contact_address")%></td>  
    </tr>
    	<tr>
   	   <td class="page td_title">�ʱ�</td>
      <td class="page td_list" ><%=(String)map.get("com_post_code")%></td>
      <td class="page td_title">��ϵ�绰</td>
      <td class="page td_list" ><%=(String)map.get("com_contact_telephone")%></td>  
    </tr>
       <tr>
   	   <td class="page td_title">�������</td>
      <td class="page td_list" ><%=(String)map.get("com_fax")%></td>
      <td class="page td_title">��ҵ����</td>
      <td class="page td_list" ><%=(String)map.get("com_property")%></td>  
    </tr>
     <tr>
   	   <td class="page td_title">ע���ʽ�</td>
      <td class="page td_list" ><%=(String)map.get("com_register_money")%>��Ԫ������ң�</td>
      <td class="page td_title">��ҵ��ģ</td>
      <td class="page td_list" ><%=(String)map.get("com_extent")%></td>  
    </tr>
       <tr>
   	   <td class="page td_title">��˾��ַ</td>
      <td class="page td_list" ><%=((String)map.get("com_url")==null?"":(String)map.get("com_url"))%></td>
      <td class="page td_title">�����ʼ�</td>
      <td class="page td_list" ><%=(String)map.get("com_email")%></td>  
    </tr>
     <tr>
   	   <td class="page td_title">������ҵ</td>
      <td class="page td_list" colspan="3"><%=(String)map.get("com_industry1")%>,<%=(String)map.get("com_industry2")%>,<%=(String)map.get("com_industry3")%> </td>
    </tr>
      <tr>
   	  <td class="page td_title">Ӫҵִ��</td>
      <td class="page td_list" colspan="3"><IMG height=350 src="<%=map.get("photo_url")%>" width=500 border=0></td>
    </tr>
    <tr>
   	   <td class="page td_title">��˾���</td>
      <td class="page td_list" style="word-wrap:break-word; width:1000px;" colspan="3"><%=(String)map.get("com_summary")%></td>
    </tr>
     <tr>
      <td class="page td_list"  colspan="4" ><a href="javascript:history.back(1)" style="font-size:16px;color:#FFCC00;">�˻�</a></td>
    </tr>
    </table>
    
    
  </body>
</html>
