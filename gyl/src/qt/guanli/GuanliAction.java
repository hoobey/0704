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
		//ȡ���˵���Ϣ���е�id�����������
		Map map1 =(Map)Loginlist.get(0);
		String gerenid = (String) map1.get("user_info_id");
		System.out.println("gerenid==" + gerenid);
		//����˵ļ������ҵ����Ƽ��Ĺ���
		List resumeList=loginService.resumequery(gerenid);
		req.setAttribute("resumeList", resumeList);
		//���˸�������Ϊ�˿�����Ĵ���
		List lookList=loginService.lookquery(gerenid);
		req.setAttribute("lookList", lookList);
		//�����Ͷ�ݵĴ���
		List touList=loginService.touquery(gerenid);
		req.setAttribute("touList", touList);
		//����������֪ͨ
		List mianshiList=loginService.mianshiListquery(gerenid);
		req.setAttribute("mianshiList", mianshiList);
		//���ղ��˶���
		List shoucangList=loginService.shoucangquery(gerenid);
		req.setAttribute("shoucangList", shoucangList);
		RequestDispatcher(req,resp,"jsp/qt/gerenmain.jsp");

	}
	
	protected void tuijiande(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {	
		HttpSession session=req.getSession();
		List Loginlist=(List)session.getAttribute("Loginlist");
		// TODO Auto-generated method stub
		//ȡ���˵���Ϣ���е�id�����������
		Map map1 =(Map)Loginlist.get(0);
		String gerenid = (String) map1.get("user_info_id");
		System.out.println("gerenid==" + gerenid);
		//����˵ļ������ҵ����Ƽ��Ĺ���
		List resumeList=loginService.resumequery(gerenid);
		req.setAttribute("resumeList", resumeList);
		RequestDispatcher(req,resp,"jsp/qt/gerentuijiang.jsp");
	}
	public void RequestDispatcher (HttpServletRequest request,HttpServletResponse response,String str) throws ServletException, IOException{
		RequestDispatcher rd=request.getRequestDispatcher(str);
		rd.forward(request, response);
	}
}


