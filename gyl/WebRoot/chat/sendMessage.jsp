<%@ page language="java"  pageEncoding="gbk"%>

<html>
  <head>   
    <title>sendMessage</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">  
	<link href="image/css.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
		function checkSend(){		
			if(document.send.msg.value==""){
				alert("���ܷ��Ϳ���Ϣ��");
				return false;
			}else{
				document.send.message.value=document.send.msg.value;
				document.send.msg.value="";
				return true;
			}
			 
		}
	</script>
  </head>
  
  <body>
  <form action="${pageContext.request.contextPath}/ChatServlet?method=send" method="post" name="send" onSubmit="return checkSend()" target="message">
  <input type="hidden" name="message" value="" />
  <p align="center">
  	�����뷢����Ϣ��
   	<input type="text" name="msg" size="30" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   	<input type="submit" value="����" />
   	</p>
   	</form>
  </body>
</html>