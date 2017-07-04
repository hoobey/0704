package qt.kangerenmianshitongzhi;

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

public class KanGeRenMianShiTongZhiAction extends HttpServlet {
	KanGeRenMianShiTongZhiService service =new KanGeRenMianShiTongZhiService();


	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("gerenkantongzhi"))
		{
			gerenkantongzhi(req,resp);
		}
		if(actionType.equals("del"))
		{
			del(req,resp);
		}
		if(actionType.equals("zaimianshitongzhiquery"))
		{
			zaimianshitongzhiquery(req,resp);
		}
		
	}
	protected void gerenkantongzhi(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String id=req.getParameter("id");
		List list=service.tongzhiquery(id);
		req.setAttribute("gerenkantongzhilist", list);
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/gerenmianshitongzhi.jsp");
		rd.forward(req, resp);
	}
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String user_info_id=req.getParameter("user_info_id");
		String[] id=req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.del(id[i]);
		}
		resp.sendRedirect("gerenkanmianshitongzhi?actionType=gerenkantongzhi&id="+user_info_id);
	}
	//个人看面试通知内容
	protected void zaimianshitongzhiquery(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String interview_info_id=req.getParameter("interview_info_id");
		List list =service.kantongzhicontentquery(interview_info_id);
		req.setAttribute("tongzhicontentlist", list);
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/gerenmianshicontent.jsp");
		rd.forward(req, resp);		
	}
	
	
}


