package qt.gerenqiuzhiyixiang;

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

public class GeRenQiuZhiYiXiangAction extends HttpServlet {
	GeRenQiuZhiYiXiangService service=new GeRenQiuZhiYiXiangService();
	GeRenQiuZhiYiXiangDomain  domain=new GeRenQiuZhiYiXiangDomain();
	
	protected void service(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
			// TODO Auto-generated method stub
			String actionType=req.getParameter("actionType");
			if(actionType.equals("panduan"))
			{
				panduan(req,resp);
				
			}
			if(actionType.equals("addqiuzhiyixiang"))
			{
				addqiuzhiyixiang(req,resp);
				
			}
			if(actionType.equals("updateqiuzhiyixiang"))
			{
				updateqiuzhiyixiang(req,resp);
				
			}
			
}
			/**
			* 看看是创建简历还是修改简历
			* 
			* */
	protected void panduan(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
			String id=req.getParameter("id");
			List list=service.Query(id);			
			if(list.size()!=0)
			{
				Map map=(Map)list.get(0);
				if(((String)map.get("now_status"))==null||((String)map.get("now_status"))=="")
				{
					System.out.println("进没进来");
					RD("jsp/qt/gerenqiuzhiyixiangjia.jsp",req,resp);
				}
				else
				{					
					req.setAttribute("gerenlist",list);
					RD("jsp/qt/gerenqiuzhiyixianggai.jsp",req,resp);
				}
			}
			else{
				RD("jsp/qt/gerenqiuzhiyixiangjia.jsp",req,resp);
			}

			}
	protected void addqiuzhiyixiang(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		String ca_id=req.getParameter("id");
		System.out.println("我接一个id"+ca_id);
		List idlist=service.Queryid(ca_id);
		if(idlist.size()==0)
		{
			service.Add(domain);
		}
		else
		{
			service.update(domain);
		}
		resp.sendRedirect("guanli?actionType=shouyede");
	}

	protected void updateqiuzhiyixiang(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);		
		service.update(domain);
		resp.sendRedirect("guanli?actionType=shouyede");	
	}
	
	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		 String resume_id=req.getParameter("resume_id");
		 String now_status=GBK.toGBK(req.getParameter("mqzk"));
		 String hope_job_category=GBK.toGBK(req.getParameter("qwgzlx"));
		 String now_industry=GBK.toGBK(req.getParameter("xhy"));
		 String now_occupation=GBK.toGBK(req.getParameter("xzy"));
		 String now_position=GBK.toGBK(req.getParameter("xzw"));
		 String hope_money=GBK.toGBK(req.getParameter("gz"));
		 String hope_industry=GBK.toGBK(req.getParameter("xwhy"));
		 String hope_occupation=GBK.toGBK(req.getParameter("xwzy"));
		 String hope_position=GBK.toGBK(req.getParameter("xwzw"));
		 String hope_address1=GBK.toGBK(req.getParameter("sheng"));
		 String hope_address2=GBK.toGBK(req.getParameter("shi"));
		 String user_info_id=GBK.toGBK(req.getParameter("id"));
		 domain.setResume_id(resume_id);
		 domain.setNow_status(now_status);
		 domain.setHope_job_category(hope_job_category);
		 domain.setNow_industry(now_industry);
		 domain.setNow_occupation(now_occupation);
		 domain.setNow_position(now_position);
		 domain.setHope_money(hope_money);
		 domain.setHope_industry(hope_industry);
		 domain.setHope_occupation(hope_occupation);
		 domain.setHope_position(hope_position);
		 domain.setHope_address1(hope_address1);
		 domain.setHope_address2(hope_address2);
		 domain.setHope_address2(hope_address2);
		 domain.setUser_info_id(user_info_id);		 
	}
	protected void RD(String url ,HttpServletRequest req, HttpServletResponse resp)
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


