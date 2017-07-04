package ht.admin;

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

public class AdminAction extends HttpServlet {
	AdminService  service=new AdminService();
	AdminDomain domain=new AdminDomain();

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
		if(actionType.equals("fenjiaosePage"))
		{
			fenjiaosePage(req,resp);
		}
		if(actionType.equals("fenjiaose"))
		{
			fenjiaose(req,resp);
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
		req.setAttribute("adminlist", list);
		req.setAttribute("page", service.getPage());
		RD("jsp/ht/admin/adminList.jsp",req,resp);
	}
	
	protected void addPage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		resp.sendRedirect("jsp/ht/admin/adminAdd.jsp");
	}
	protected void add(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		service.Add(domain);
		resp.sendRedirect("htadmin?actionType=query");	
	}
	
	protected void updatePage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String id=req.getParameter("admin_id");
		List list=service.queryone(id);
		req.setAttribute("adminlist", list);
		RD("jsp/ht/admin/adminEdit.jsp",req,resp);
	}
	
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.Del(id[i]);
		}
		resp.sendRedirect("htadmin?actionType=query");
	}
	
	
	protected void update(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		service.update(domain);
		resp.sendRedirect("htadmin?actionType=query");	
	}
	protected void fenjiaosePage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String id=req.getParameter("admin_id");
		List list=service.queryone(id);
		req.setAttribute("adminlist1", list);
		List list1=service.rolequery();
		req.setAttribute("rolelist", list1);
		List list2=service.youquery(id);
		req.setAttribute("yourolelist", list2);
		RD("jsp/ht/admin/adminshoujiaose.jsp",req,resp);
	}
	
	protected void fenjiaose(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String admin_id=req.getParameter("admin_id");
		System.out.println("idÊÇ¶àÉÙ"+admin_id);
		String[] id = req.getParameterValues("id");
		List list=service.youquery(admin_id);
		if(list.size()>0)
		{
			service.adminroledel(admin_id);
		}
		for(int i=0;i<id.length;i++)
		{
			service.fenjiaose(admin_id,id[i]);
		}
		resp.sendRedirect("htadmin?actionType=query");
	}
	
	
	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String admin_id=req.getParameter("admin_id");
		String admin_name=GBK.toGBK(req.getParameter("admin_name"));
		String admin_login_name=GBK.toGBK(req.getParameter("admin_login_name"));
		String admin_login_pass=req.getParameter("admin_login_pass");
		String admin_login_record=req.getParameter("admin_login_record");
		String role_id=req.getParameter("role_id");
		String role_name=GBK.toGBK(req.getParameter("role_name"));
		String role_limit_id=req.getParameter("role_limit_id");
		String limit_id=req.getParameter("limit_id");
		domain.setAdmin_id(admin_id);
		domain.setAdmin_name(admin_name);
		domain.setAdmin_login_name(admin_login_name);
		domain.setAdmin_login_pass(admin_login_pass);
		domain.setAdmin_login_record(admin_login_record);
		domain.setAdmin_login_record(admin_login_record);
		domain.setRole_id(role_id);
		domain.setRole_name(role_name);
		domain.setRole_limit_id(role_limit_id);
		domain.setLimit_id(limit_id);
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


