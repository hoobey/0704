package ht.articleclass;

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

public class ArticleClassAction extends HttpServlet {
	private List list;
	private ArticleClassDomain domain=new ArticleClassDomain();
	private ArticleClassService service=new ArticleClassService();


	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("query"))
		{
			this.query(req,resp);
		}
		else if(actionType.equals("addPage"))
		{
			this.addPage(req, resp);
		}
		else if(actionType.equals("add"))
		{
			this.add(req, resp);
		}
		else if(actionType.equals("updatePage")){
			this.updatePage(req, resp);
		}
		else if(actionType.equals("del")){
			this.del(req, resp);
		}
		else if(actionType.equals("update")){
			this.update(req, resp);
		}
	}
	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	{
		String article_sort_id=req.getParameter("article_sort_id");
		String article_sort_name=GBK.toGBK(req.getParameter("article_sort_name"));
		domain.setArticle_sort_name(article_sort_name);
		domain.setArticle_sort_id(article_sort_id);
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
		req.setAttribute("article_class_list", list);
		req.setAttribute("page", service.getPage());
		RD("jsp/ht/articleclass/articleClassList.jsp",req,resp);
		
	}
	
	
	protected void addPage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		resp.sendRedirect("jsp/ht/articleclass/articleClassAdd.jsp");
	}
	
	protected void add(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		service.Add(domain);
		resp.sendRedirect("articleclass?actionType=query");	
	}
	
	protected void updatePage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		List list = service.QueryOne(domain.getArticle_sort_id());
		req.setAttribute("onelist", list);
		RD("jsp/ht/articleclass/articleClassEdit.jsp",req,resp);
		
	}
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.Del(id[i]);
		}
		resp.sendRedirect("articleclass?actionType=query");
	}
	protected void update(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		service.Update(domain);
		resp.sendRedirect("articleclass?actionType=query");
	}
}




