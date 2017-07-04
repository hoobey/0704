package qt.gerengaimima;

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

public class GeRenGaiMiMaAction extends HttpServlet {
	GeRenGaMiMaService  service=new GeRenGaMiMaService();


	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType!=null && actionType.equals("gai")){
			this.gai(req, resp);
		}
		if(actionType.equals("query")){
			this.query(req, resp);
		}
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

	protected void gai(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String user_info_password=req.getParameter("mima");
		String user_info_id=req.getParameter("id");
		System.out.println("user_info_password========="+user_info_password);
		service.update(user_info_id,user_info_password);
		resp.sendRedirect("guanli?actionType=shouyede");
	}
	protected void query(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String id=req.getParameter("id");
		List list=service.query(id);
		req.setAttribute("userlist",list);
		RD("/jsp/qt/gergaimima.jsp",req,resp);
	}

}


