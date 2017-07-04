package qt.comshoucangrencai;

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

public class ComShouCangRenCaiAction extends HttpServlet {
	ComShouCangRenCaiService service=new ComShouCangRenCaiService();


	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("comshourencai"))
		{
			comshourencai(req,resp);
		}
		if(actionType.equals("comkanshourencai"))
		{
			comkanshourencai(req,resp);
		}
		if(actionType.equals("del"))
		{
			del(req,resp);
		}
	}
	

	protected void comshourencai(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String resume_id=req.getParameter("resume_id");
		String company_id=req.getParameter("company_id");
		String user_info_id=req.getParameter("user_info_id");
		List list=service.keshoucangquery(resume_id,company_id,user_info_id);
		if(list.size()>0)
		{
			System.out.println(" ’≤ÿπ˝¡À");
			resp.sendRedirect("jsp/qt/no.jsp?comcuo=shouguo");
			return;
		}
		service.comshourencaiadd(resume_id,company_id,user_info_id);
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/ok.jsp");
		rd.forward(req, resp);
		
	}
	
	protected void comkanshourencai(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String company_id=req.getParameter("id");
		List list=service.kanshourenquery(company_id);
		req.setAttribute("comkanshourencailist", list);
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/comkanshourencai.jsp");
		rd.forward(req, resp);		
	}
	
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String company_id=req.getParameter("company_id");
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.del(id[i]);
		}
		resp.sendRedirect("shoucangrencai?actionType=comkanshourencai&id="+company_id);
		
		
	}
	
}


