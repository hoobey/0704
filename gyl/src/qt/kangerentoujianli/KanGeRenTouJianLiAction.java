package qt.kangerentoujianli;

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

public class KanGeRenTouJianLiAction extends HttpServlet {
	KanGeRenTouJianLiService service=new KanGeRenTouJianLiService();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("kantoude"))
		{
			kantoude(req,resp);
		}
		else if(actionType.equals("del"))
		{
			del(req,resp);
		}

	}
	/**
	 * ��Ͷ�ı��еĶ����ҳ���
	 * 
	 * */
	protected void kantoude(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String id=req.getParameter("id");
		//Ϊ��Ҫ����
		List list=service.query(id);
		req.setAttribute("kantoudelist", list);
		RequestDispatcher rd=req.getRequestDispatcher("jsp/qt/gerentoujianli.jsp");
		rd.forward(req, resp);
		
	}
	/**
	 * ��Ͷ���Ҳ������ˣ��Ͳ�Ҫ�ˣ���ɾ
	 * 
	 * 
	 * */
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String user_info_id=req.getParameter("user_info_id");
		String[] id = req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.Del(id[i]);
		}
		
		resp.sendRedirect("kangerentoujianli?actionType=kantoude&id="+user_info_id);
	}

}


