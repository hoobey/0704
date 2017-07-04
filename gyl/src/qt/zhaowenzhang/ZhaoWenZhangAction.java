package qt.zhaowenzhang;

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

public class ZhaoWenZhangAction extends HttpServlet {
	ZhaoWenZhangService service=new ZhaoWenZhangService();
	ZhaoWenZhangDomain domain=new ZhaoWenZhangDomain();
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("query"))
		{
			query(req,resp);
		}
		if(actionType.equals("kanweizhang"))
		{
			kanweizhang(req,resp);
		}
		if(actionType.equals("tuiweizhang"))
		{
			tuiweizhang(req,resp);
		}
		
		if(actionType.equals("querywenlei"))
		{
			querywenlei(req,resp);
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
			List list1=service.QueryLB();
			req.setAttribute("articleclasslist", list1);
			req.setAttribute("page", service.getPage());
			RD("jsp/qt/wenzhangsousuo.jsp",req,resp);
		
	}
	protected void kanweizhang(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String id=req.getParameter("article_id");
		List list=service.querycontent(id);
		req.setAttribute("neironglist", list);
		Map map=(Map)list.get(0);
		int look_count=Integer.parseInt(map.get("look_count").toString());
		service.addone(id,look_count);
		RD("jsp/qt/kanwenzhangneirong.jsp",req,resp);
		
	}
	protected void tuiweizhang(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		service.addtui(domain);
		resp.sendRedirect("souwenzhang?actionType=query");
		
		
	}
	
	protected void querywenlei(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		List list=service.QueryLB();
		System.out.print(list.size());
		req.setAttribute("weileilist", list);
		RD("jsp/qt/tuijianwenzhang.jsp",req,resp);
		
	}
	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String article_id=req.getParameter("article_id");
		String article_name=GBK.toGBK(req.getParameter("article_name"));
		String look_count=req.getParameter("look_count");
		String content=GBK.toGBK(req.getParameter("content"));
		String article_sort_id=req.getParameter("article_sort_id");
		String is_recommend=GBK.toGBK(req.getParameter("is_recommend"));
		String is_examine=GBK.toGBK(req.getParameter("is_examine"));
		String article_sort_name=GBK.toGBK(req.getParameter("article_sort_name"));
		domain.setArticle_id(article_id);
		domain.setArticle_name(article_name);
		domain.setLook_count(look_count);
		domain.setContent(content);
		domain.setArticle_sort_id(article_sort_id);
		domain.setIs_examine(is_examine);
		domain.setIs_recommend(is_recommend);
		domain.setArticle_sort_name(article_sort_name);
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
}


