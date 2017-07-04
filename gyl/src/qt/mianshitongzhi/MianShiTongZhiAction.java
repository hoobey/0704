package qt.mianshitongzhi;

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

public class MianShiTongZhiAction extends HttpServlet {
	MianShiTongZhiService service=new MianShiTongZhiService();
	MianShiTongZhiDomain  domain=new MianShiTongZhiDomain();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("zhuanfayie"))
		{
			zhuanfayie(req,resp);
		}
		if(actionType.equals("famianshitongzhi"))
		{
			famianshitongzhi(req,resp);
		}
		if(actionType.equals("kanmianshitongzhi"))
		{
			kanmianshitongzhi(req,resp);
		}
		if(actionType.equals("del"))
		{
			del(req,resp);
		}
	}
	
	protected void zhuanfayie(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String resume_name=GBK.toGBK(req.getParameter("resume_name"));
		String user_info_id=GBK.toGBK(req.getParameter("user_info_id"));
		req.setAttribute("resume_name", resume_name);
		req.setAttribute("user_info_id", user_info_id);
		RD("jsp/qt/comfamianshitongzhi.jsp",req,resp);
		
		
		
	}
	protected void famianshitongzhi(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		List list=service.kefamianshiquery(domain);
		if(list.size()>0)
		{
			System.out.println("÷ÿ∑¢¡À");
			resp.sendRedirect("jsp/qt/no.jsp?comcuo=congfa");
			return;
		}
		service.mianshitongzhiadd(domain);
		RD("jsp/qt/ok.jsp",req,resp);		
	}
	
	protected void kanmianshitongzhi(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String id=req.getParameter("id");
		List list=service.kantongzhiquery(id);
		req.setAttribute("comkantongzhilist", list);
		RD("jsp/qt/comkantongzhi.jsp",req,resp);
		
	}
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String company_id=req.getParameter("company_id");
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.del(id[i]);
		}
		resp.sendRedirect("mianshitongzhi?actionType=kanmianshitongzhi&id="+company_id);
	
	}
	
	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String interview_info_id=req.getParameter("interview_info_id");
		String interview_title=GBK.toGBK(req.getParameter("interview_title"));
		String s_time=req.getParameter("s_time");
		String company_id=req.getParameter("company_id");
		String user_info_id=req.getParameter("user_info_id");
		String interview_content=GBK.toGBK(req.getParameter("interview_content"));
		domain.setInterview_info_id(interview_info_id);
		domain.setInterview_title(interview_title);
		domain.setS_time(s_time);
		domain.setCompany_id(company_id);
		domain.setUser_info_id(user_info_id);
		domain.setInterview_content(interview_content);
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


