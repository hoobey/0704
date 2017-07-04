package qt.comjibenxinxi;

import java.io.IOException;
import java.io.PrintWriter;
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

public class ComJiBenXinXIAction extends HttpServlet {
	ComJiBenXinXISerivce service=new ComJiBenXinXISerivce();
	ComJiBenXinXIDomain domain=new ComJiBenXinXIDomain();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("updatepage"))
		{
			updatepage(req,resp);
		}
		if(actionType.equals("chashi"))
		{
			chashi(req,resp);
		}
		if(actionType.equals("updatejibenxinxi"))
		{
			updatejibenxinxi(req,resp);
		}
	}
	
	protected void updatepage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String company_id=req.getParameter("id");
		List list=service.comjibenquery(company_id);
		req.setAttribute("comjibenlist", list);	
		//现在省有了，可是市也要有选中的
		Map map=(Map) list.get(0);
		String sheng=(String) map.get("big_address_id");
		List list2=service.danqianshiquery(sheng);
		req.setAttribute("dangqianshilist", list2);
		List list1=service.querysheng();
		System.out.println("找到多少为什么不出来"+list1.size());
		req.setAttribute("shenglist", list1); 
		RD("jsp/qt/comjibenxinxigai.jsp",req,resp);
	}
	
	protected void chashi(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String big_address_id=req.getParameter("big_address_id");
		
		List list=service.queryshi(big_address_id);
		resp.setContentType("text/xml; charset=utf-8");
		//获得OUT
		PrintWriter out = resp.getWriter();
		//写入父节点
		out.print("<response>");
		out.print("<size>"+list.size()+"</size>");
		for(int i=0;i<list.size();i++)
		{
			Map map=(Map)list.get(i);
			out.print("<id>"+map.get("small_address_id")+"</id>");
			out.print("<name>"+map.get("small_address_name")+"</name>");
		}
		
		out.print("</response>");
		out.close();
	}
	
	protected void updatejibenxinxi(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		service.jibenxinxiupdate(domain);
		resp.sendRedirect("comguanli?actionType=shouyede");
		
	}
	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String company_id=req.getParameter("company_id");
		String big_address_id=req.getParameter("big_address_id");
		String small_address_id=req.getParameter("small_address_id");
		String com_contact_address=GBK.toGBK(req.getParameter("com_contact_address"));
		String com_post_code=req.getParameter("com_post_code");
		String com_contact_telephone=req.getParameter("com_contact_telephone");
		String com_contact_people=GBK.toGBK(req.getParameter("com_contact_people"));
		String com_fax=req.getParameter("com_fax");
		String com_extent=GBK.toGBK(req.getParameter("com_extent"));
		String com_url=req.getParameter("com_url");
		String com_email=req.getParameter("com_email");
		String com_summary=GBK.toGBK(req.getParameter("com_summary"));
		domain.setCompany_id(company_id);
		domain.setBig_address_id(big_address_id);
		domain.setSmall_address_id(small_address_id);
		domain.setCom_contact_address(com_contact_address);
		domain.setCom_post_code(com_post_code);
		domain.setCom_contact_telephone(com_contact_telephone);
		domain.setCom_contact_people(com_contact_people);
		domain.setCom_fax(com_fax);
		domain.setCom_extent(com_extent);
		domain.setCom_url(com_url);
		domain.setCom_email(com_email);
		domain.setCom_summary(com_summary);
		
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


