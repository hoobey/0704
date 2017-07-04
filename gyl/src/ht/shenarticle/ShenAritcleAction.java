package ht.shenarticle;

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

public class ShenAritcleAction extends HttpServlet {
	private List list;
	private ShenArticleDomain domain=new ShenArticleDomain();
	private ShenArticleService service =new ShenArticleService();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		System.out.println("==========test======"+actionType+"===========");
		if(actionType.equals("query")){
			this.query(req, resp);
		}else if(actionType.equals("updatePage")){
			this.updatePage(req, resp);
		}else if(actionType.equals("del")){
			this.del(req, resp);
		}else if(actionType.equals("update")){
			this.update(req, resp);
		}else if(actionType.equals("queryone")){
			this.queryone(req, resp);
		}else if(actionType.equals("alterexamine")){
			this.alterexamine(req, resp);
		}else if(actionType.equals("queryexamine")){
			this.queryexamine(req, resp);
		}
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
	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	{
		String article_id=req.getParameter("article_id");
		String article_name=GBK.toGBK(req.getParameter("article_name"));
		String update_time=req.getParameter("update_time");
		String content=GBK.toGBK(req.getParameter("content"));
		domain.setArticle_id(article_id);
		domain.setArticle_name(article_name);
		domain.setContent(content);
		domain.setUpdate_time(update_time);
	}
	
	
	
	
	protected void query(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String page=(String)req.getParameter("pageNumber");
		ST(req,resp);
		int pageCount=1;
		if(page!=null && page!=""){
			pageCount=Integer.parseInt(page);			
		}
		domain.setPageCount(pageCount);
		List list=service.Query(domain);
		req.setAttribute("articlelist", list);
		req.setAttribute("page", service.getPage());
		RD("jsp/ht/shenarticle/shenArticleList.jsp",req,resp);
		
	}
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		System.out.println("=============================");
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.Del(id[i]);
		}
		
		resp.sendRedirect("shenarticle?actionType=query");
	}
		
	protected void updatePage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		List list = service.QueryOne(domain.getArticle_id());
		req.setAttribute("onelist", list);
		RD("jsp/ht/shenarticle/shenArticleEdit.jsp",req,resp);		
	}
	protected void update(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		service.Update(domain);
		resp.sendRedirect("shenarticle?actionType=query");
		
	}
	protected void queryone(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		List list = service.QueryOne(domain.getArticle_id());
		req.setAttribute("onelist", list);
		RD("jsp/ht/shenarticle/shenArticleQueryOne.jsp",req,resp);		
	}
	protected void alterexamine(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		System.out.println("============alterexamine================");
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.UpdateExamine(id[i]);
		}
		
		resp.sendRedirect("shenarticle?actionType=query");
		
	}
	protected void queryexamine(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String page=(String)req.getParameter("pageNumber");
		ST(req,resp);
		int pageCount=1;
		if(page!=null && page!=""){
			pageCount=Integer.parseInt(page);			
		}
		domain.setPageCount(pageCount);
		List list=service.QueryExamine(domain);
		req.setAttribute("articlelist", list);
		req.setAttribute("page", service.getPage());
		RD("jsp/ht/shenarticle/shenArticleList.jsp",req,resp);
		
	}
}
	



