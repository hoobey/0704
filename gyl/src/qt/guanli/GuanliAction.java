package qt.guanli;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import qt.login.LoginService;


/** 
 * @author  lkx
 * @version 1.0 
 */

public class GuanliAction extends HttpServlet {
	private LoginService loginService=new LoginService();
	private List list;
	private String actionType;
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		actionType=req.getParameter("actionType");
		if(actionType.equals("shouyede"))
		{
			shouyede(req,resp);
		}
		else if (actionType.equals("tuijiande"))
		{
			tuijiande(req,resp);
		}
	}
	protected void shouyede(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {	
		HttpSession session=req.getSession();
		List Loginlist=(List)session.getAttribute("Loginlist");
		// TODO Auto-generated method stub
		//取个人的信息表中的id用来查简历表
		Map map1 =(Map)Loginlist.get(0);
		String gerenid = (String) map1.get("user_info_id");
		System.out.println("gerenid==" + gerenid);
		//查个人的简历表找到可推荐的工作
		List resumeList=loginService.resumequery(gerenid);
		req.setAttribute("resumeList", resumeList);
		//查人个简历表为了看浏览的次数
		List lookList=loginService.lookquery(gerenid);
		req.setAttribute("lookList", lookList);
		//查简历投递的次数
		List touList=loginService.touquery(gerenid);
		req.setAttribute("touList", touList);
		//查收以面试通知
		List mianshiList=loginService.mianshiListquery(gerenid);
		req.setAttribute("mianshiList", mianshiList);
		//查收藏了多少
		List shoucangList=loginService.shoucangquery(gerenid);
		req.setAttribute("shoucangList", shoucangList);
		RequestDispatcher(req,resp,"jsp/qt/gerenmain.jsp");

	}
	
	protected void tuijiande(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {	
		HttpSession session=req.getSession();
		List Loginlist=(List)session.getAttribute("Loginlist");
		// TODO Auto-generated method stub
		//取个人的信息表中的id用来查简历表
		Map map1 =(Map)Loginlist.get(0);
		String gerenid = (String) map1.get("user_info_id");
		System.out.println("gerenid==" + gerenid);
		//查个人的简历表找到可推荐的工作
		List resumeList=loginService.resumequery(gerenid);
		req.setAttribute("resumeList", resumeList);
		RequestDispatcher(req,resp,"jsp/qt/gerentuijiang.jsp");
	}
	public void RequestDispatcher (HttpServletRequest request,HttpServletResponse response,String str) throws ServletException, IOException{
		RequestDispatcher rd=request.getRequestDispatcher(str);
		rd.forward(request, response);
	}
}


