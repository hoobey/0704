package qt.gerenshoucanginfo;

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

public class GeRenShouCangInfoAction extends HttpServlet {
	GeRenShouCangInfoService service=new GeRenShouCangInfoService();
				
	protected void service(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
			// TODO Auto-generated method stub
			String	actionType=req.getParameter("actionType");
			if(actionType.equals("shoucang"))
			{
				shoucang(req,resp);
			}
			
			}
	/**
	 * �ѹ�˾������Ƹ��Ϣ�ӵ����˵��ղ���
	 * 
	 * */		
			
			
	protected void shoucang(HttpServletRequest req, HttpServletResponse resp)
		throws ServletException, IOException {
			String company_id=req.getParameter("company_id");
			String want_information_id=req.getParameter("want_information_id");
			String user_info_id=req.getParameter("user_info_id");
			List ketoulist=service.shoucangquery(company_id,want_information_id,user_info_id);
			if(ketoulist.size()>0)
			{
				System.out.println("�Ѿ��ղع���");
				resp.sendRedirect("jsp/qt/no.jsp?gerencuo=congshou");
				return;
			}
			
			service.Add(company_id,want_information_id,user_info_id);
		
			System.out.println("����");
			RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/ok.jsp");
			rd.forward(req, resp);		
			}

}


