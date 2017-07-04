package ht.role;

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

public class roleAction extends HttpServlet {
	roleService service=new roleService();
	roleDomain domain=new roleDomain();

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
		if(actionType.equals("fenquanxianPage"))
		{
			fenquanxianPage(req,resp);
		}
		if(actionType.equals("fenquanxian"))
		{
			fenquanxian(req,resp);
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
		req.setAttribute("rolelist", list);
		req.setAttribute("page", service.getPage());
		RD("jsp/ht/role/roleList.jsp",req,resp);
		
	}
	protected void addPage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		resp.sendRedirect("jsp/ht/role/roleadd.jsp");		
	}
	protected void add(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		service.Add(domain);
		resp.sendRedirect("htrole?actionType=query");		
	}
	
	protected void updatePage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		List list = service.QueryOne(domain.getRole_id());
		req.setAttribute("rolelist", list);
		RD("jsp/ht/role/roleEdit.jsp",req,resp);
	}
	
	protected void update(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		service.Update(domain);
		resp.sendRedirect("htrole?actionType=query");
	}
	
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.Del(id[i]);
		}
		resp.sendRedirect("htrole?actionType=query");
	}
	
	protected void fenquanxianPage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String id=req.getParameter("role_id");
		List list=service.queryone(id);
		req.setAttribute("rolelist1", list);
		List list1=service.limitquery("father_id='01'");
		req.setAttribute("limitlist1", list1);
		List list2=service.limitquery("father_id<>'01' and father_id<>'-1'");
		req.setAttribute("limitlist2", list2);
		List list3=service.youquery(id);
		req.setAttribute("youlimitlist", list3);
		RD("jsp/ht/role/roleshouquan.jsp",req,resp);
	}
	
	protected void fenquanxian(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String role_id=req.getParameter("role_id");
		System.out.println("idÊÇ¶àÉÙ"+role_id);
		String[] id = req.getParameterValues("id");
		List list=service.youquery(role_id);
		if(list.size()>0)
		{
			service.adminlimitdel(role_id);
		}
		for(int i=0;i<id.length;i++)
		{
			service.fenquanxian(role_id,id[i]);
		}
		resp.sendRedirect("htrole?actionType=query");
	}
	
	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String role_id=req.getParameter("role_id");
		String role_name=GBK.toGBK(req.getParameter("role_name"));
		String admin_role_id=req.getParameter("admin_role_id");
		String admin_id=req.getParameter("admin_id");
		String role_limit_id=req.getParameter("role_limit_id");
		String limit_id=req.getParameter("limit_id");
		domain.setRole_id(role_id);
		domain.setRole_name(role_name);
		domain.setAdmin_role_id(admin_role_id);
		domain.setAdmin_id(admin_id);
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


