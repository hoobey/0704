<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<HTML>
	<HEAD>
		<TITLE>���˼�����Ƭ����</TITLE>
		<META http-equiv=Content-Language content=zh-cn>
		<META http-equiv=Content-Type content="text/html; charset=gb2312">
		<LINK href="<%=request.getContextPath()%>/images/guanli/cdjobmi.css" type=text/css rel=stylesheet>
		<SCRIPT language=javascript>  
//���ݺϷ���У��
function Check()
{
  var c=document.form;
  if (c.img.value=="" )
  {
    alert("��ѡ����Ҫ�ϴ�����Ƭ��  ");
    c.img.focus();
    return (false);
  }
  //c.enter.disabled=true;
  c.enter.value="�ϴ���...";
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
						<B>���˼�������--������Ƭ����</B>
					</TD>
				</TR>
			
		</TABLE>
		<TABLE class=tableBorder style="WIDTH: 100%" height=268 cellSpacing=0
			borderColorDark=#ffffff cellPadding=0 width="96%"
			borderColorLight=#dddddd border=1>
			
				<TR>
					<TD class=tdtop colSpan=2 height=23>
						<B>��Ƭ����</B>
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
										<SPAN class=height>������Ƭһ��ΪJPG��GIF��ʽ��</SPAN>
									</TD>
								</TR>
								<TR>
									<TD>
										ѡ�����ϴ�����Ƭ��
									</TD>
								</TR>

								<TR>
									<TD>
										<INPUT type=file name=img>
										&nbsp;
										<INPUT type=submit value=�ϴ� name=enter>
									</TD>
								</TR>

								<TR>
									<TD>
										���������ұ�Ԥ��������Ƭ������Ƭδ������
										<A class=abfl href="javascript:location.reload()" target=_self>ˢ��</A>��
										<BR>
										�����Ƭ��С�������ڣ�������Ƭ̫С��
										<BR>
										��֮�������Ƭ�����ڴ�������⣬�������Ƭ̫��
										<BR>
										<FONT color=#ff0000>ע�⣺1��</FONT>�봫
										<FONT color=#ff0000>֤������Ƭ������֤���յ���Ƭ</FONT>����Ҫ�������ա���������Ƭ�����������Ƭ���ᱻɾ����
										<BR>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<FONT color=#ff0000>2��</FONT>��Ƭ��С���ܳ���100KB��Ϊ��ʹ������Ƭ��ʾ�ﵽ���Ч���������Ƭɨ��ɴ�СΪ��Ϊ��150���ء���Ϊ��200���ء�
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
											<INPUT type=submit value=" ɾ �� " name=enter>
										</TD>
									</TR>
								
								
							</TABLE>
							</FORM>
					</TD>
				</TR>
			
		</TABLE>
	</BODY>
</HTML>