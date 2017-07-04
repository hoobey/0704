<%@ page  pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>看企业详细信息</title>
 
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
           <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
      <tr>
        <td class="subtitle navi_bar" align="center">企业详细信息</td>
      </tr>
    </table> 
    <%
			List list=(List)request.getAttribute("comxianglist");
			  Map map=(Map)list.get(0);  
    
     %>
 	<table class="table_style" cellspacing="1" cellpadding="4" width="100%" id="wish">
	<tr>
	  <td class="page td_title">公司名称</td>
      <td class="page td_list" colspan="3"><%=(String)map.get("company_name")%></td>
	</tr>
	<tr>
   	   <td class="page td_title">公司所在地</td>
      <td class="page td_list" ><%=(String)map.get("big_address_name")%>-&gt;<%=(String)map.get("small_address_name")%></td>
      <td class="page td_title">招聘联系地址</td>
      <td class="page td_list" ><%=(String)map.get("com_contact_address")%></td>  
    </tr>
    	<tr>
   	   <td class="page td_title">邮编</td>
      <td class="page td_list" ><%=(String)map.get("com_post_code")%></td>
      <td class="page td_title">联系电话</td>
      <td class="page td_list" ><%=(String)map.get("com_contact_telephone")%></td>  
    </tr>
       <tr>
   	   <td class="page td_title">传真号码</td>
      <td class="page td_list" ><%=(String)map.get("com_fax")%></td>
      <td class="page td_title">企业性质</td>
      <td class="page td_list" ><%=(String)map.get("com_property")%></td>  
    </tr>
     <tr>
   	   <td class="page td_title">注册资金</td>
      <td class="page td_list" ><%=(String)map.get("com_register_money")%>万元（人民币）</td>
      <td class="page td_title">企业规模</td>
      <td class="page td_list" ><%=(String)map.get("com_extent")%></td>  
    </tr>
       <tr>
   	   <td class="page td_title">公司网址</td>
      <td class="page td_list" ><%=((String)map.get("com_url")==null?"":(String)map.get("com_url"))%></td>
      <td class="page td_title">电子邮件</td>
      <td class="page td_list" ><%=(String)map.get("com_email")%></td>  
    </tr>
     <tr>
   	   <td class="page td_title">所属行业</td>
      <td class="page td_list" colspan="3"><%=(String)map.get("com_industry1")%>,<%=(String)map.get("com_industry2")%>,<%=(String)map.get("com_industry3")%> </td>
    </tr>
      <tr>
   	  <td class="page td_title">营业执照</td>
      <td class="page td_list" colspan="3"><IMG height=350 src="<%=map.get("photo_url")%>" width=500 border=0></td>
    </tr>
    <tr>
   	   <td class="page td_title">公司简介</td>
      <td class="page td_list" style="word-wrap:break-word; width:1000px;" colspan="3"><%=(String)map.get("com_summary")%></td>
    </tr>
     <tr>
      <td class="page td_list"  colspan="4" ><a href="javascript:history.back(1)" style="font-size:16px;color:#FFCC00;">退回</a></td>
    </tr>
    </table>
    
    
  </body>
</html>
