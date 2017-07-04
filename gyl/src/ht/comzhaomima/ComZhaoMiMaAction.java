package ht.comzhaomima;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ComZhaoMiMaAction extends HttpServlet {
	ComZhaoMiMaService service=new ComZhaoMiMaService();
	ComZhaoMiMaDomain domain=new ComZhaoMiMaDomain();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("query"))
		{
			query(req,resp);
		}
		if(actionType.equals("gaimima"))
		{
			gaimima(req,resp);
		}
		if(actionType.equals("del"))
		{
			del(req,resp);
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
		req.setAttribute("compasslist", list);
		req.setAttribute("page", service.getPage());
		RD("jsp/ht/companypass/companypasslist.jsp",req,resp);
	}
	
	protected void gaimima(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String[] id=req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.gaimima(id[i]);
		}
		resp.sendRedirect("htzhaomimacom?actionType=query");
	}
	
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String[] id=req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.del(id[i]);
		}
		resp.sendRedirect("htzhaomimacom?actionType=query");
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


