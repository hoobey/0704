package qt.comguanli;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ComGuanLiAction extends HttpServlet {
	ComGuanLiService service=new ComGuanLiService();


	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("shouyede"))
		{
			shouyede(req,resp);
		}
		if(actionType.equals("tuijiande"))
		{
			tuijiande(req,resp);
		}
		

	}
	
	protected void shouyede(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		System.out.println("看看进没进来");
		HttpSession session=req.getSession();
		List Loginlist=(List) session.getAttribute("Loginlist");
		Map map=(Map) Loginlist.get(0);
		String company_id=(String) map.get("company_id");
		System.out.println("company_id==" + company_id);
		//查招聘信息表找到可推荐的人才
		List comList=service.comquery(company_id);
		req.setAttribute("comList", comList);
		//查收到投递来的个数
		List shoutouList=service.shoutouquery(company_id);
		System.out.println("个数"+shoutouList.size());
		req.setAttribute("shoutouList", shoutouList);
		//查发送面试通知
		List mianshiList=service.mianshiListquery(company_id);
		req.setAttribute("mianshiList", mianshiList);
		//查收藏了多少人才
		List shoucangList=service.shoucangquery(company_id);
		req.setAttribute("shoucangList", shoucangList);
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/commain.jsp");
		rd.forward(req, resp);
	}
	protected void tuijiande(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		System.out.println("进来了");
		HttpSession session=req.getSession();
		List Loginlist=(List) session.getAttribute("Loginlist");
		Map map=(Map) Loginlist.get(0);
		String company_id=(String) map.get("company_id");
		System.out.println("company_id==" + company_id);
		//查招聘信息表找到可推荐的人才
		List comList=service.comquery(company_id);
		req.setAttribute("comList", comList);
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/comtuijian.jsp");
		rd.forward(req, resp);
	}
	

}


