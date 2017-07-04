package qt.zhaomimacom;

import java.io.IOException;
import java.util.List;
import java.util.Map;

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

public class ZhaoMiMaComAction extends HttpServlet {
	ZhaoMiMaComService service=new ZhaoMiMaComService();


	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("zhaocominfo"))
		{
			zhaocominfo(req,resp);
		}
	}
	
	protected void zhaocominfo(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String com_login_name=req.getParameter("com_login_name");
		List list=service.query(com_login_name);
		if(list.size()>0)
		{
			Map map=(Map)list.get(0);
			String company_id=(String) map.get("company_id");
			String say_content=GBK.toGBK(req.getParameter("say_content"));
			service.add(company_id,say_content);
			RD("jsp/qt/comzhuceok.jsp",req,resp);
		}
		else
		{
			
			RD("jsp/qt/error.jsp?error=errorzhaomimacom",req,resp);
		}
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


