package qt.zhaomima;

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

public class ZhaoMiMaAction extends HttpServlet {
	ZhaoMiMAService service=new ZhaoMiMAService();
	ZhaoMiMaDomain domain=new ZhaoMiMaDomain();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("zhaohui"))
		{
			zhaohui(req,resp);
		}
	}

	protected void zhaohui(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		List list=service.zhaomimaquery(domain);
		if(list.size()>0)
		{
			req.setAttribute("zhaomimalist", list);
			RD("jsp/qt/zhaomimaok.jsp",req,resp);
		}
		else
		{
			resp.sendRedirect("jsp/qt/error.jsp?error=errorzhaomima");
		}
	}
	
	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String user_info_id=req.getParameter("user_info_id");
		String user_info_name=GBK.toGBK(req.getParameter("user_info_name"));
		String user_info_password=req.getParameter("user_info_password");
		String user_problem=GBK.toGBK(req.getParameter("user_problem"));
		String user_answer=GBK.toGBK(req.getParameter("user_answer"));
		String email=req.getParameter("email");
		domain.setUser_info_id(user_info_id);
		domain.setUser_info_name(user_info_name);
		domain.setUser_info_password(user_info_password);
		domain.setUser_problem(user_problem);
		domain.setUser_answer(user_answer);
		domain.setEmail(email);
	}

	protected void RD(String url,HttpServletRequest req, HttpServletResponse resp)
	 {
		RequestDispatcher rd=req.getRequestDispatcher(url);
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


