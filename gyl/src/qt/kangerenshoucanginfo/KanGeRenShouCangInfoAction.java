package qt.kangerenshoucanginfo;

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

public class KanGeRenShouCangInfoAction extends HttpServlet {
	KanGeRenShouCangInfoService service=new KanGeRenShouCangInfoService();


	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("kanshoucangde"))
		{
			kanshoucangde(req,resp);
		}
		else if(actionType.equals("del"))
		{
			del(req,resp);
		}
	}
	
	/**
	 * 把收藏的表中的东西找出来
	 * 
	 * */
	protected void kanshoucangde(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String id=req.getParameter("id");
		//为了要条数
		List list=service.query(id);
		req.setAttribute("kanshoucangdelist", list);
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/gerenshoucang.jsp");
		rd.forward(req, resp);
		
	}
	/**
	 * 我收藏的没想要了，就不要了，删了
	 * 
	 * 
	 * */
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String user_info_id=req.getParameter("user_info_id");
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.Del(id[i]);
		}
		
		resp.sendRedirect("kangerenshoucanginfo?actionType=kanshoucangde&id="+user_info_id);
	}
	
}


