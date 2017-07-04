<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<HTML>
	<HEAD>
		<TITLE>个人简历相片更新</TITLE>
		<META http-equiv=Content-Language content=zh-cn>
		<META http-equiv=Content-Type content="text/html; charset=gb2312">
		<LINK href="<%=request.getContextPath()%>/images/guanli/cdjobmi.css" type=text/css rel=stylesheet>
		<SCRIPT language=javascript>  
//数据合法性校验
function Check()
{
  var c=document.form;
  if (c.img.value=="" )
  {
    alert("请选择需要上传的照片！  ");
    c.img.focus();
    return (false);
  }
  //c.enter.disabled=true;
  c.enter.value="上传中...";
}
//-->
</SCRIPT>
		<%
			List list = (List) request.getAttribute("zhaopianList");
		%>
	</HEAD>
	<BODY>
		<TABLE id=table2 cellSpacing=0 cellPadding=0 width="100%" border=0>
			
				<TR>
					<TD class=tdtit height=30>
						<B>个人简历更新--简历照片更新</B>
					</TD>
				</TR>
			
		</TABLE>
		<TABLE class=tableBorder style="WIDTH: 100%" height=268 cellSpacing=0
			borderColorDark=#ffffff cellPadding=0 width="96%"
			borderColorLight=#dddddd border=1>
			
				<TR>
					<TD class=tdtop colSpan=2 height=23>
						<B>照片管理</B>
					</TD>
				</TR>
				<TR>
					<TD class=tdileft width=360 height=240>
						<form name=form onsubmit="return Check(this)"
							action="<%=request.getContextPath()%>/chuanzhaopian?actionType=shangchuan"
							method=post ENCTYPE="multipart/form-data">
							<TABLE id=table20 cellSpacing=5 width="100%" border=0>

								<TR>
									<TD>
										<SPAN class=height>所传照片一律为JPG、GIF格式。</SPAN>
									</TD>
								</TR>
								<TR>
									<TD>
										选择需上传的照片：
									</TD>
								</TR>

								<TR>
									<TD>
										<INPUT type=file name=img>
										&nbsp;
										<INPUT type=submit value=上传 name=enter>
									</TD>
								</TR>

								<TR>
									<TD>
										您可以在右边预览您的相片；如相片未更新请
										<A class=abfl href="javascript:location.reload()" target=_self>刷新</A>；
										<BR>
										如果照片在小框区域内，表明照片太小；
										<BR>
										反之，如果照片覆盖在大框区域外，则表明照片太大。
										<BR>
										<FONT color=#ff0000>注意：1、</FONT>请传
										<FONT color=#ff0000>证件照相片或类似证件照的相片</FONT>，不要传生活照、艺术照相片，否则你的相片将会被删除；
										<BR>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<FONT color=#ff0000>2、</FONT>相片大小不能超过100KB。为了使您的照片显示达到最佳效果，请把照片扫描成大小为宽为：150像素、高为：200像素。
									</TD>
								</TR>
							</TABLE>
							</form>
					</TD>
					<TD class=tdiright height=240>
						
						<FORM name=form1
							action="<%=request.getContextPath()%>/chuanzhaopian?actionType=del"
							method=post>
							<TABLE id=table18 cellSpacing=4 width=200 border=0>

								
									<%
										if (list.size() > 0) {
											Map map = (Map) list.get(0);
									%>
									<TR>
										<TD align=middle>
											<IMG height=200 src="<%=map.get("photo_url")%>" width=150
												border=0>
										</TD>
									</TR>
									<%
										} else {
									%>
									<TR>
										<TD align=middle>
											<IMG height=200
												src="<%=request.getContextPath()%>/images/guanli/photo_ref.gif"
												width=150 border=0>
										</TD>
									</TR>
									<%
										}
									%>
									<TR>
										<TD align=middle></TD>
									</TR>
									<TR>
										<TD align=middle>
											<INPUT type=submit value=" 删 除 " name=enter>
										</TD>
									</TR>
								
								
							</TABLE>
							</FORM>
					</TD>
				</TR>
			
		</TABLE>
	</BODY>
</HTML>