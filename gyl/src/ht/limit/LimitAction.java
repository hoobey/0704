package ht.limit;

import java.io.IOException;
import java.util.List;
import java.util.Map;

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

public class LimitAction extends HttpServlet {
	LimitService service=new LimitService();
	LimitDomain domain=new LimitDomain();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("query"))
		{
			query(req,resp);
		}
		if(actionType.equals("addPage"))
		{
			addPage(req,resp);
		}
		if(actionType.equals("add"))
		{
			add(req,resp);
		}
		if(actionType.equals("query1"))
		{
			query1(req,resp);
		}
		if(actionType.equals("addPage1"))
		{
			addPage1(req,resp);
		}
		if(actionType.equals("add1"))
		{
			add1(req,resp);
		}
		if(actionType.equals("updatePage"))
		{
			updatePage(req,resp);
		}
		if(actionType.equals("update"))
		{
			update(req,resp);
		}
		if(actionType.equals("del"))
		{
			del(req,resp);
		}
		if(actionType.equals("updatePage1"))
		{
			updatePage1(req,resp);
		}
		if(actionType.equals("update1"))
		{
			update1(req,resp);
		}
		if(actionType.equals("del1"))
		{
			del1(req,resp);
		}
	}
	
	protected void query(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String page=(String)req.getParameter("pageNumber");
		ST(req,resp);
		int pageCount=1;
		if(page!=null&& page!="")
		{
			pageCount=Integer.parseInt(page);
		}
		domain.setPageCount(pageCount);
		List list =service.Query(domain);
		req.setAttribute("limitlist", list);
		req.setAttribute("page", service.getPage());
		RD("jsp/ht/limit/limitzhongList.jsp",req,resp);
	}
	
	protected void addPage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		resp.sendRedirect("jsp/ht/limit/limitzhongAdd.jsp");		
	}
	
	protected void add(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		List list =service.Querygaoid();
		Map map=(Map)list.get(0);
		int id=Integer.parseInt(map.get("limit_id").toString());
		System.out.println("id================="+id);
		ST(req,resp);
		service.Add(domain,id);
		resp.sendRedirect("htlimit?actionType=query");	
	}
	
	protected void add1(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String father_id=req.getParameter("father_id");
		List list =service.Querydiid(father_id);
		Map map=(Map)list.get(0);
		String limit_id="00";
		if(map.get("limit_id")!=null&&map.get("limit_id")!="")
		{
			limit_id=(map.get("limit_id").toString()).substring(2,4);
			System.out.println("limit_id================="+limit_id);
		}
		ST(req,resp);
		service.diAdd(domain,limit_id);
		resp.sendRedirect("htlimit?actionType=query1&limit_id="+father_id);
	}
	protected void query1(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String page=(String)req.getParameter("pageNumber");
		ST(req,resp);
		int pageCount=1;
		if(page!=null&& page!="")
		{
			pageCount=Integer.parseInt(page);
		}
		domain.setPageCount(pageCount);
		List list =service.diQuery(domain);
		req.setAttribute("limitlist", list);
		req.setAttribute("page", service.getPage());
		RD("jsp/ht/limit/limitdiList.jsp",req,resp);
	}
	protected void addPage1(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String father_id=req.getParameter("limit_id");
		System.out.println("father_id======"+father_id);
		resp.sendRedirect("jsp/ht/limit/limitdiAdd.jsp?father_id="+father_id);		
	}	
	
	protected void updatePage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		List list=service.queryOne(domain.getLimit_id());
		req.setAttribute("limitlist", list);
		RD("jsp/ht/limit/limitzhongEdit.jsp",req,resp);
	}
	protected void update(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		service.gaoupdate(domain);
		resp.sendRedirect("htlimit?actionType=query");
	}
	
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.Del(id[i]);
		}
		resp.sendRedirect("htlimit?actionType=query");
	}
	
	protected void del1(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String father_id=req.getParameter("limit_id");
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.diDel(id[i]);
		}
		resp.sendRedirect("htlimit?actionType=query1&limit_id="+father_id);
	}
	
	protected void updatePage1(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String father_id=req.getParameter("limit_id");
		System.out.println("father_id======"+father_id);
		String limit_id=req.getParameter("limit_id1");
		List list=service.queryOne(limit_id);
		req.setAttribute("limitlist", list);
		RD("jsp/ht/limit/limitdiEdit.jsp?father_id="+father_id,req,resp);
	}
	
	
	protected void update1(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String father_id=req.getParameter("father_id");
		ST(req,resp);
		service.diupdate(domain);
		resp.sendRedirect("htlimit?actionType=query1&limit_id="+father_id);
	}
	
	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String limit_id=req.getParameter("limit_id");
		String limit_name=GBK.toGBK(req.getParameter("limit_name"));
		String is_link=req.getParameter("is_link");
		String father_id=req.getParameter("father_id");
		String url=req.getParameter("url");
		String role_limit_id=req.getParameter("role_limit_id");
		String role_id=req.getParameter("role_id");
		domain.setLimit_id(limit_id);
		domain.setLimit_name(limit_name);
		domain.setIs_link(is_link);
		domain.setFather_id(father_id);
		domain.setUrl(url);
		domain.setRole_limit_id(role_limit_id);
		domain.setRole_id(role_id);
	}
	protected void RD( String URL,HttpServletRequest req, HttpServletResponse resp)
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
}


