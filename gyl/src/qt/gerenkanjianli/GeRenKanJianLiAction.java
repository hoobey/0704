package qt.gerenkanjianli;

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

public class GeRenKanJianLiAction extends HttpServlet {
	GeRenKanJianLiService service=new GeRenKanJianLiService();


	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("kanjian"))
		{
			kanjian(req,resp);
		}
	}
	protected void kanjian(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String id =req.getParameter("id");
		List list=service.Query(id);
		req.setAttribute("kanlist", list);
		List list2=service.QueryPhone(id);
		req.setAttribute("phonelist", list2);
		RD("jsp/qt/gerenkanjianli.jsp",req,resp);		
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


