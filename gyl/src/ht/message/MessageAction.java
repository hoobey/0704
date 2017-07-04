package ht.message;

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
	private List list;
	private MessageDomain domain=new MessageDomain();
	private MessageService service=new MessageService();

	
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String actionType=(String)req.getParameter("actionType");
		if(actionType.equals("query"))
		{
			this.query( req,resp);
		}
		else if(actionType.equals("del"))
		{
			this.del(req, resp);
		}
		else if(actionType.equals("replyPage"))
		{
			this.replyPage(req, resp);
		}
		else if(actionType.equals("replycontent"))
		{
			this.replycontent(req, resp);
		}
		else if(actionType.equals("reply")){
			this.reply(req, resp);
		}
		else if(actionType.equals("alterexamine"))
		{
			this.alterexamine(req, resp);
		}
		else if(actionType.equals("updateContentPage"))
		{
			this.updateContentPage(req, resp);
		}
		else if(actionType.equals("updateContent"))
		{
			this.updateContent(req, resp);
		}
		
		if(actionType.equals("meihuiquery"))
		{
			this.meihuiquery( req,resp);
		}
		if(actionType.equals("meishenquery"))
		{
			this.meishenquery( req,resp);
		}
	}
		protected void ST(HttpServletRequest req, HttpServletResponse resp)
		{
			 String message_id=(String)req.getParameter("message_id");
			 String message_content=GBK.toGBK((String)req.getParameter("message_content"));
			 String message_updatetime=(String)req.getParameter("message_updatetime");
			 String message_is_examine=GBK.toGBK((String)req.getParameter("message_is_examine"));
			 String message_s_id=(String)req.getParameter("message_s_id");
			 String is_reply=GBK.toGBK((String)req.getParameter("is_reply"));
			 String message_reply_id=(String)req.getParameter("message_reply_id");
			 String message_reply_content=GBK.toGBK((String)req.getParameter("message_reply_content"));
			 domain.setMessage_id(message_id);
			 domain.setMessage_content(message_content);
			 domain.setMessage_updatetime(message_updatetime);
			 domain.setMessage_is_examine(message_is_examine);
			 domain.setMessages_s_id(message_s_id);
			 domain.setIs_reply(is_reply);
			 domain.setMessage_reply_id(message_reply_id);
			 domain.setMessage_reply_content(message_reply_content);



		}
		
		protected void RD(String URL,HttpServletRequest req, HttpServletResponse resp)
	 {
			RequestDispatcher rd=req.getRequestDispatcher(URL);
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
		
		
	
	protected void query(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String page=req.getParameter("pageNumber");
		ST(req,resp);
		int pageCount=1;
		if(page!=null && page!=""){
			pageCount=Integer.parseInt(page);
		}
			domain.setPageCount(pageCount);
			List list=service.Query(domain);
			req.setAttribute("messagelist", list);
			req.setAttribute("page", service.getPage());
			RD("jsp/ht/message/messageList.jsp",req,resp);
		
	}
	
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String[] id = req.getParameterValues("id");

		for(int i=0;i<id.length;i++)
		{
			service.Del(id[i]);
			System.out.println(id[i]);
		}
		
		resp.sendRedirect("message?actionType=query");
	}
	
	protected void replyPage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		List list = service.QueryOne(domain.getMessage_id());
		req.setAttribute("onelist", list);
		RD("jsp/ht/message/reply.jsp",req,resp);		
		
	}

	protected void replycontent(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		List list = service.QueryReplyOne(domain.getMessage_id());
		req.setAttribute("onelist", list);
		RD("jsp/ht/message/message_Reply_List.jsp",req,resp);
		
	}
	
	protected void reply(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		service.addReply(domain);
		service.updateReply(domain.getMessage_id());
		service.UpdateExamine(domain.getMessage_id());
		resp.sendRedirect("message?actionType=query");
	}
	
	
	protected void alterexamine(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.UpdateExamine(id[i]);
		}
		
		resp.sendRedirect("message?actionType=query");
	
	}
	

	
	protected void updateContentPage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		List list = service.QueryReplyOne(domain.getMessage_id());
		req.setAttribute("onelist", list);
		RD("jsp/ht/message/messageReplyUpdate.jsp",req,resp);
		
	}
	protected void updateContent(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		service.updateReplyContent(domain);
		resp.sendRedirect("message?actionType=query");		
	}
	
	
	protected void meihuiquery(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String page=req.getParameter("pageNumber");
		ST(req,resp);
		int pageCount=1;
		if(page!=null && page!=""){
			pageCount=Integer.parseInt(page);
		}
			domain.setPageCount(pageCount);
			List list=service.MeiHuiQuery(domain);
			req.setAttribute("messagelist", list);
			req.setAttribute("page", service.getPage());
			RD("jsp/ht/message/messageList.jsp",req,resp);
	}
	protected void meishenquery(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String page=req.getParameter("pageNumber");
		ST(req,resp);
		int pageCount=1;
		if(page!=null && page!=""){
			pageCount=Integer.parseInt(page);
		}
			domain.setPageCount(pageCount);
			List list=service.MeiShenQuery(domain);
			req.setAttribute("messagelist", list);
			req.setAttribute("page", service.getPage());
			RD("jsp/ht/message/messageList.jsp",req,resp);
	}
}


