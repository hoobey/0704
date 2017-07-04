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
		// ����ǰ̨��������YH_NAME
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
		// д���ص�XML�ļ���ͷ
		resp.setContentType("text/xml; charset=gbk");
		// ���OUT
		PrintWriter out = resp.getWriter();
		// д�븸�ڵ�
		out.print("<response>");
		if (yh_name.equals(yh_name1)) {
			// д���ӽ�� ǰ̨Ҫȡ������ӽ��
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
 * ��Ϊ�����������ʱsession������ֵ��Ҫ�Ƿ���zhu��ˢ��ʱ�����Σ����·���һ�°ɡ�
 * 
 * 
 * **/
	protected void jinguanli(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String loginName=req.getParameter("loginName");
		String loginPassword=req.getParameter("loginPassword");
		List Loginlist=service.GeQuery(loginName, loginPassword);
		//ͨ���û����󴴽�һ��session
		HttpSession session=req.getSession();
		//���û���Ϣlist����session
		session.setAttribute("Loginlist", Loginlist);
		//��¼ʱ��
		session.setAttribute("loginTime", Data.CurrentYMDHSMTime());
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/gerenguanli.jsp");
		rd.forward(req, resp);
	}
	
	
}
