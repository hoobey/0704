package qt.kangerentoujianli;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class KanGeRenTouJianLiAction extends HttpServlet {
	KanGeRenTouJianLiService service=new KanGeRenTouJianLiService();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("kantoude"))
		{
			kantoude(req,resp);
		}
		else if(actionType.equals("del"))
		{
			del(req,resp);
		}

	}
	/**
	 * 把投的表中的东西找出来
	 * 
	 * */
	protected void kantoude(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String id=req.getParameter("id");
		//为了要条数
		List list=service.query(id);
		req.setAttribute("kantoudelist", list);
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/gerentoujianli.jsp");
		rd.forward(req, resp);
		
	}
	/**
	 * 我投完我不想后悔了，就不要了，得删
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
		
		resp.sendRedirect("kangerentoujianli?actionType=kantoude&id="+user_info_id);
	}

}


