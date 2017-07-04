<%@ page pageEncoding="gbk"%>
<%@ include file="../../../include/header.inc"%>
<html>
<head>

<title>站内文章管理</title>
<script language=JScript.Encode src="<%= request.getContextPath() %>/fckeditor/fckeditor.js"></script>
</head>
<body>
<form name="theForm" method=post>
<INPUT TYPE="hidden" NAME="actionType" value=""/>
        <table width="100%" border="0" cellpadding="4" cellspacing="1" class="table_style"id="table7">
      <tr>
        <td class="subtitle navi_bar" align="center">站内文章管理</td>
      </tr>
    </table> 
<br>
<table width="100%" border="1" cellpadding="0" cellspacing="0" class="menu_table" id="table13">
	<tr align="center">     
			<td width="100%"  class="page td_search">站内文章信息添加</td> 
    </tr>
</table>

	<table class="table_style" cellspacing="1" cellpadding="4" width="100%" id="wish">
	<tr>
	  <td class="page td_title"></td>
	    <td class="page td_title"></td>
      <td class="page td_title" >文章名</td>
      <td class="page td_list" >
           <table style="width:560;">
            <tr>
            <td>
              <div style="width:40;float:right;"><input style="width:300px;text-align: center;" name="article_name" type="text" class="input_area" value="" ></div></td>
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
      <td class="page td_title">浏览次数</td>
      <td class="page td_list" >
            <table style="width:560;">
            <tr>
            <td>
              <div style="width:40;float:right;"><input name="look_count" type="text"class="input_area" value="" id="int"></div></td>
        <td> <div style="width:80;height:20;float:right;" id=div2></div></td>
         </tr>
         </table>     
	  </td>
      <td class="page td_title"></td>
        <td class="page td_title"></td>
    </tr>
    <tr>
	  <td class="page td_title"></td>
      <td class="page td_title" ></td>
      
      <td class="page td_title">文章类别</td>
      <td class="page td_list">
   <table style="width:560;">
   <tr>
   <td>
     <div style="width:40;float:right;">
      <select name="article_sort_id">
      <option value="0" selected>=请选择文章类别=</option>
      <%
      	List list = (List)request.getAttribute("list");
      	for(Iterator it=list.iterator();it.hasNext();)
      	{
      		Map map = (Map)it.next();
       %>
      	<option value="<%=map.get("article_sort_id") %>" ><%=map.get("article_sort_name") %>
      	<%} %>
      	</select>
      	</div></td>
        <td> <div style="width:80;height:20;float:right;" id=div3></div></td>
         </tr>
         </table>     
      </td>
      <td class="page td_title" ></td>
      <td class="page td_title" ></td>
    </tr>
     


    <tr>
	  <td class="page td_title"></td>
      <td class="page td_title" ></td>
      <td class="page td_title">内容</td>
      <td class="page td_list">
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
			
		    oFCKeditor.Create();
		
			</script>
	</div></td>
         </tr>
         </table>     
	  </td>
      <td class="page td_title"></td>
      <td class="page td_title"></td>
    </tr>
    <tr>
      <td colspan="12" class="page td_bottom"><input  name="Submit" type="button" class="input_text" value="保存" onclick="baocun()">
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
		    document.theForm.actionType.value="add";
			document.theForm.action="<%=request.getContextPath()%>/htneiarticle?";
			document.theForm.submit();
	  } 


//-->
</SCRIPT>