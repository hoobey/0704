package qt.comgaimima;

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

public class ComGaiMiMaAction extends HttpServlet {
	ComGaiMiMaService service=new ComGaiMiMaService();


	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("query"))
		{
			query(req,resp);
		}
		if(actionType.equals("gai"))
		{
			gai(req,resp);
		}
	}
	protected void query(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String id=req.getParameter("id");
		System.out.println("id========="+id);
		List commimalist=service.commimaquery(id);
		req.setAttribute("commimalist", commimalist);
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/comgaimima.jsp");
		rd.forward(req, resp);
	}
	protected void gai(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String mima=req.getParameter("mima");
		String id=req.getParameter("id");
		service.gaimima(mima,id);
		resp.sendRedirect("comguanli?actionType=shouyede");
	}

}


