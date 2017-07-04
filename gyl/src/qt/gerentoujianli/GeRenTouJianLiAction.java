package qt.gerentoujianli;

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

public class GeRenTouJianLiAction extends HttpServlet {
	GeRenTouJianLiSerivce serivce=new GeRenTouJianLiSerivce();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String	actionType=req.getParameter("actionType");
		if(actionType.equals("toudi"))
		{
			toudi(req,resp);
		}
	
	}
/**
 * 向企业投递简历
 * */	
	

	protected void toudi(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String company_id=req.getParameter("company_id");
		String want_information_id=req.getParameter("want_information_id");
		String user_info_id=req.getParameter("user_info_id");
		//1因为投递的表里面要有一个简历的id ,2还因为我想看一下用户编写简历没有，我现在没有这个id，所在找一个吧
		List list=serivce.query(user_info_id);
		//先看看用户可不可以投,先前有没有简历
		if(list.size()>0)
		{
				Map map =(Map)list.get(0);	
				
				//先可不可投中的，简历是否编写完了
				if(map.get("resume_name")==null || map.get("resume_name").equals(""))
				{
					System.out.println("基本信息没写");
					resp.sendRedirect("jsp/qt/no.jsp?gerencuo=jiben");
					return;
				}
				if(map.get("now_status")==null || map.get("now_status").equals(""))
				{
					System.out.println("求职意向信息没写");
					resp.sendRedirect("jsp/qt/no.jsp?gerencuo=qzyx");
					return;
				}
				String resume_id=(String)map.get("resume_id");
				List ketoulist=serivce.ketouquery(company_id,want_information_id,user_info_id,resume_id);
				if(ketoulist.size()>0)
				{
					System.out.println("重投了");
					resp.sendRedirect("jsp/qt/no.jsp?gerencuo=congtou");
					return;
				}	
				//东西都有了，现在就要加了,也判断可加了
				serivce.Add(company_id,want_information_id,user_info_id,resume_id);
				System.out.println("加了");
				RD("jsp/qt/ok.jsp",req, resp);
				return;
		}
		else
		{	
			System.out.println("没编写简历");
			resp.sendRedirect("jsp/qt/no.jsp?gerencuo=jianli");
	
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
}


