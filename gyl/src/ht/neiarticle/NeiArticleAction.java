package ht.neiarticle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.GBK;

public class NeiArticleAction extends HttpServlet {

	private List list;
	private NeiArticleDomain domain=new NeiArticleDomain();
	private NeiArticleService service=new NeiArticleService();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		//req.setCharacterEncoding("GBK");
		if(actionType.equals("query"))
		{
			this.query( req,  resp);
		}
		else if(actionType.equals("addPage"))
		{
			this.addPage(req, resp);
		}
		else if(actionType.equals("add"))
		{
			this.add(req, resp);
		}
		else if(actionType.equals("del"))
		{
			this.del(req, resp);
		}
		else if(actionType.equals("updatePage"))
		{
			this.updatePage(req, resp);
		}
		else if(actionType.equals("update"))
		{
			this.update(req, resp);
		}
		else if(actionType.equals("queryone")){
			this.queryOne(req, resp);
		}

	}

	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String article_id=req.getParameter("article_id");
		String article_name=GBK.toGBK(req.getParameter("article_name"));
		System.out.println(article_name);
		String look_count=req.getParameter("look_count");
		int count=0;
		if(look_count!=null && look_count!="")
		{
			count=Integer.parseInt(look_count);
		}
		String update_time=req.getParameter("update_time");
		String content=GBK.toGBK(req.getParameter("content"));
		String article_sort_id=req.getParameter("article_sort_id");
		System.out.println("nr=============="+content);
		domain.setArticle_id(article_id);
		domain.setArticle_name(article_name);
		domain.setCount(count);
		domain.setUpdate_time(update_time);
		domain.setContent(content);
		domain.setArticle_sort_id(article_sort_id);

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
			req.setAttribute("articlelist", list);
			req.setAttribute("page", service.getPage());
			RD("jsp/ht/neiarticle/neiArticleList.jsp",req,resp);

}
	protected void addPage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		List list = service.QueryLB();
		req.setAttribute("list", list);
		RD("jsp/ht/neiarticle/articleAdd.jsp",req,resp);
	}
	
	
	protected void add(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		service.Add(domain);
		resp.sendRedirect("htneiarticle?actionType=query");		
	}
	
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.Del(id[i]);
		}
		
		resp.sendRedirect("htneiarticle?actionType=query");
	}
	
	protected void updatePage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		List listlb = service.QueryLB();
		req.setAttribute("listlb", listlb);
		List list = service.QueryOne(domain.getArticle_id());
		req.setAttribute("onelist", list);
		RD("jsp/ht/neiarticle/articleEdit.jsp",req,resp);		
	}
	
	protected void update(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		service.Update(domain);
		resp.sendRedirect("htneiarticle?actionType=query");
	}
	
	protected void queryOne(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		List list = service.QueryOne(domain.getArticle_id());
		req.setAttribute("onelist", list);
		RD("jsp/ht/neiarticle/articleQueryone.jsp",req,resp);
}
	
}
