package qt.message;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.GBK;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class MessageAction extends HttpServlet {
	MessageService service=new MessageService();
	MessageDomain domain=new MessageDomain();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		System.out.println("============actionType=========================="+actionType);
		if(actionType.equals("query"))
		{
			query(req,resp);
		}
		if(actionType.equals("add"))
		{
			System.out.println("============111111==========================");
			add1(req,resp);
		}
	}
	protected void query(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String page=req.getParameter("pageNumber");
		int pageCount=1;
		if(page!=null&&page!="")
		{
			pageCount=Integer.parseInt(page);
		}
		domain.setPageCount(pageCount);
		List list=service.query(domain);
		req.setAttribute("messagelist", list);
		//¡Ù—‘”–¡À£¨’“ªÿ∏¥
		List list1=service.replyquery();
		req.setAttribute("messagereply", list1);
		req.setAttribute("page", service.getPage());
		RD("jsp/qt/message.jsp",req,resp);
		
	}
	
	protected void add1(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		System.out.println("============222222==========================");
		ST(req,resp);
		service.addmessage(domain);
		System.out.println("============33333333==========================");
		RD("jsp/qt/messageok.jsp",req,resp);
	}
	
	
	
	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String message_id=req.getParameter("message_id");
		String message_content=GBK.toGBK(req.getParameter("message_content"));
		String message_is_examine=GBK.toGBK(req.getParameter("message_is_examine"));
		String message_s_id=req.getParameter("message_s_id");

		domain.setMessage_id(message_id);
		domain.setMessage_content(message_content);
		domain.setMessage_is_examine(message_is_examine);
		domain.setMessage_s_id(message_s_id);

	}
	
	protected void RD(String url,HttpServletRequest req, HttpServletResponse resp)
	{
		RequestDispatcher rd=req.getRequestDispatcher(url);
		try {
			rd.forward(req, resp);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}


