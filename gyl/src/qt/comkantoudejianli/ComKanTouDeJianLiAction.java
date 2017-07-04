package qt.comkantoudejianli;

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

public class ComKanTouDeJianLiAction extends HttpServlet {
	ComKanTouDeJianLiService serivce =new ComKanTouDeJianLiService();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("kantoude"))
		{
			kantoude(req,resp);
		}
		if(actionType.equals("del"))
		{
			del(req,resp);
		}
		if(actionType.equals("zaikantoude"))
		{
			zaikantoude(req,resp);
		}

	}
	protected void kantoude(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String id=req.getParameter("id");
		System.out.println("id到底应该是什么"+id);
		List list=serivce.toulaiquery(id);
		req.setAttribute("comkantoulist", list);
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/comkantoude.jsp");
		rd.forward(req, resp);
	}
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String company_id=req.getParameter("company_id");
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			serivce.del(id[i]);
		}
		resp.sendRedirect("comkantoujianli?actionType=kantoude&id="+company_id);
		
		
	}
	protected void zaikantoude(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		//我要user_info_id为方便找出个人的信息
		String resume_id=req.getParameter("resume_id");
		List list=serivce.zaitoulaiquery(resume_id);
		Map map=(Map) list.get(0);
		String id=(String) map.get("user_info_id");
		List list1=serivce.zaitouphonequery(id);
		req.setAttribute("phonelist", list1);		
		//因为我还想要个人的email所在我要用user_info_id找两个表user_info和resume
		List list3=serivce.zaitoulaiquanquery(id);
		req.setAttribute("zaitoulailist", list3);

		int resume_look_count=Integer.parseInt(map.get("resume_look_count").toString());
		System.out.println("看的次数"+resume_look_count);
		serivce.lookadd(id,resume_look_count);
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/comzaikantoude.jsp");
		rd.forward(req, resp);
	}
	
}


