package qt.zhuce;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.util.Data;
import com.util.GBK;

/**
 * @author lkx
 * @version 1.0
 */

public class GeRenZhuCiAction extends HttpServlet {

	GeRenZhuCiService service = new GeRenZhuCiService();
	GeRenZhuCiDomain domain=new GeRenZhuCiDomain();
	Map map = null;

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		// 接收前台传过来的YH_NAME
		String actionType=req.getParameter("actionType");
		if(actionType.equals("cha"))
		{
			this.cha(req,resp);
		}
		if(actionType.equals("zhu"))
		{
			this.zhu(req,resp);
		}
		if(actionType.equals("jinguanli"))
		{
			this.jinguanli(req,resp);
		}

	}
	protected void cha(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		System.out.println("====================s");
		String yh_name1;
		String yh_name = req.getParameter("yh_name");
		System.out.println("yh_name==" + yh_name);
		List list = service.select(yh_name);
		if (list.size() > 0) {
			map =(Map)list.get(0);
			yh_name1 = (String) map.get("user_info_name");
			System.out.println("yh_name1==" + yh_name1);
		} else {
			yh_name1 = "-1";
		}
		// 写返回的XML文件的头
		resp.setContentType("text/xml; charset=gbk");
		// 获得OUT
		PrintWriter out = resp.getWriter();
		// 写入父节点
		out.print("<response>");
		if (yh_name.equals(yh_name1)) {
			// 写入子结点 前台要取得这个子结点
			out.print("<id>0</id>");
		} else {
			out.print("<id>1</id>");
		}
		out.print("</response>");
		out.close();
	}

	protected void zhu(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String yh_name=req.getParameter("yh_name");
		String password=req.getParameter("password");
		String problem=GBK.toGBK(req.getParameter("problem"));
		String answer=GBK.toGBK(req.getParameter("answer"));
		String email=req.getParameter("email");
		domain.setYh_name(yh_name);
		domain.setPassword(password);
		domain.setProblem(problem);
		domain.setAnswer(answer);
		domain.setEmail(email);
		service.zhu(domain);
		resp.sendRedirect("gerenregist?actionType=jinguanli&loginName="+domain.getYh_name()+"&loginPassword="+domain.getPassword());
	}
/**
 * 因为进入管理中心时session必须有值，要是放在zhu里刷新时加两次，重新发布一下吧。
 * 
 * 
 * **/
	protected void jinguanli(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String loginName=req.getParameter("loginName");
		String loginPassword=req.getParameter("loginPassword");
		List Loginlist=service.GeQuery(loginName, loginPassword);
		//通过用户请求创建一个session
		HttpSession session=req.getSession();
		//把用户信息list让如session
		session.setAttribute("Loginlist", Loginlist);
		//登录时间
		session.setAttribute("loginTime", Data.CurrentYMDHSMTime());
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/gerenguanli.jsp");
		rd.forward(req, resp);
	}
	
	
}
