<%@ page pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>
<html>
<head>
<link href="<%=request.getContextPath()%>/css/content.css" rel="stylesheet" type="text/css">

<script language=JScript.Encode src="<%= request.getContextPath() %>/fckeditor/fckeditor.js"></script>
<title>修改站内文章</title>
</head>
<body>
<form name="aaform" method=post>
<INPUT TYPE="hidden" NAME="actionType" value="">
        <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
      <tr>
        <td class="subtitle navi_bar" align="center">修改站内文章</td>
      </tr>
    </table>
<br>
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
	<tr align="center">     
			<td width="100%"  class="page td_search">站内文章信息修改</td> 
    </tr>
</table>
<%
	List list=(List)request.getAttribute("onelist");
	Map map=(Map)list.get(0);
	System.out.println("map"+map.get("article_sort_id"));
		String content=map.get("content").toString();
	if(content != null)
	{
		content = content.replaceAll("\r\n", "");
		  content = content.replaceAll("\r", "");
		  content = content.replaceAll("\n", "");
		  content = content.replaceAll("\"", "'");

	}
%>
<INPUT TYPE="hidden" NAME="article_id" value="<%=(String)map.get("article_id")%>">
	<table class="table_style" cellspacing="1" cellpadding="4" width="100%" id="wish">
		<tr>
	  <td class="page td_title"></td>
      <td class="page td_title"></td>
      <td class="page td_title" width="100">文章名</td>
      <td class="page td_list" width="500"  >
                 <table style="width:560;">
            <tr>
            <td align="center"> 
              <div style="width:40;float:right;"><input style="width:300px;text-align: center;" name="article_name" type="text"class="input_area" value="<%=(String)map.get("article_name")%>"></div></td>
        <td> <div style="width:80;height:20;float:right;" id=div1> </div></td>
	           </tr>
         </table>  

	  </td>
      <td class="page td_title"></td>
      <td class="page td_title"></td>
    </tr>
    <tr>
	  <td class="page td_title"></td>
      <td class="page td_title"></td>
      <td class="page td_title" width="100">浏览次数</td>
      <td class="page td_list" width="120">
        <table style="width:560;">
            <tr>
            <td>
              <div style="width:40;float:right;"><input name="look_count" type="text"class="input_area" value="<%=(String)map.get("look_count")%>" id="int"></div></td>
        <td> <div style="width:80;height:20;float:right;" id=div2></div></td>
         </tr>
         </table>   
	  </td>
      <td class="page td_title"></td>
      <td class="page td_title"></td>
    </tr>
        <tr>
	  <td class="page td_title"></td>
      <td class="page td_title"></td>
      <td class="page td_title" width="100">文章类别</td>
      <td class="page td_list" width="480">
   <table style="width:560;">
   <tr>
   <td>
     <div style="width:40;float:right;">
      <select name="article_sort_id">
      <option value="0" >=请选择文章类别=</option>
      <%
      	List listlb =(List)request.getAttribute("listlb");
      	for(Iterator it=listlb.iterator();it.hasNext();)
      	{
      		Map maplb =(Map)it.next();
      		System.out.println("maplb"+maplb.get("article_sort_id"));
       %>
      	<option value="<%=maplb.get("article_sort_id")%>"  <%=(maplb.get("article_sort_id").equals(map.get("article_sort_id")))?"selected":"" %>> <%=maplb.get("article_sort_name")%></option>
      	<%} %>
      	</select>
      </div></td>
        <td> <div style="width:80;height:20;float:right;" id=div3></div></td>
         </tr>
         </table>   
	  </td>
      <td class="page td_title"></td>
      <td class="page td_title"></td>
    </tr>
  <tr>
	 <td class="page td_title"></td>
      <td class="page td_title" ></td>
      <td class="page td_title" width="60">内容</td>
      <td class="page td_list" width="500">
      
   <table style="width:560;">
   <tr>
   <td>
     <div style="width:40;float:right;">
    		<script type="text/javascript">

		    var oFCKeditor = new FCKeditor('content');
		
		    oFCKeditor.BasePath = "<%=request.getContextPath()%>/fckeditor/";                   
		    oFCKeditor.Config["CustomConfigurationsPath"]="<%=request.getContextPath()%>/fckeditor/myconfig.js";
		
		    oFCKeditor.ToolbarSet = "usersBar";
		
		    oFCKeditor.Width="800";
		
		    oFCKeditor.Height="330";
			oFCKeditor.Value="<%=content%>";
		    oFCKeditor.Create();
		
			</script> 



	</div></td>
        <td> <div style="width:80;height:20;float:right;" id="div4"></div></td>
         </tr>
         </table>     
	  </td>
	  
      <td class="page td_title"></td>
      <td class="page td_title"></td>
    </tr>
 

    <tr>
      <td colspan="12" class="page td_bottom"><input name="Submit" type="button" class="input_text" value="保存" onclick="baocun()">
        <input name="new_button5" type="reset" class="input_text" value="重置">
          <input name="new_button54" type="button" class="input_text" onClick="javascript:history.go(-1)" value="返回"></td>
    </tr>
  </table>
</form>
</body>
</html>

<SCRIPT LANGUAGE="JavaScript">
<!--

	 

	
  function   baocun(){

  	var article_name=document.getElementById("article_name");
  	var article_sort_id=document.getElementById("article_sort_id");
  	var int=document.getElementById("int");



		if(article_name.value=="")
		{
		div1.innerHTML="<span style='color:red'>文章名不能为空<span>";
		return;
		}
		else
		{
			div1.innerHTML="";
		}
	      if(int.value.match(/\d+/)!=int.value){   
			div2.innerHTML="<span style='color:red'>浏览次数必须为数字<span>";
	      return;
	      }else 
	      {
	      div2.innerHTML="";
	      }
	     if(article_sort_id.value=="0"){   
			div3.innerHTML="<span style='color:red'>文章类别必选<span>";
	      return;
	      }else 
	      {
	      div3.innerHTML="";
	      }

			
	    	document.aaform.actionType.value="update";
		 	document.aaform.action="<%=request.getContextPath()%>/htneiarticle";
		 	document.aaform.submit();
	  } 



//-->
</SCRIPT>