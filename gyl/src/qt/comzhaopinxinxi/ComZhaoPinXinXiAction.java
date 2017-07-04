package qt.comzhaopinxinxi;

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

public class ComZhaoPinXinXiAction extends HttpServlet {
	ComZhaoPinXinXiService service=new ComZhaoPinXinXiService();
	ComZhaoPinXinXiDomain domain=new ComZhaoPinXinXiDomain();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("query"))
		{
			query(req,resp);
		}
		if(actionType.equals("addPage"))
		{
			addPage(req,resp);
		}
		if(actionType.equals("chashi"))
		{
			chashi(req,resp);
		}
		if(actionType.equals("add"))
		{
			add(req,resp);
		}
		if(actionType.equals("del"))
		{
			del(req,resp);
		}
		if(actionType.equals("updatepage"))
		{
			updatepage(req,resp);
		}
		if(actionType.equals("update"))
		{
			update(req,resp);
		}
		if(actionType.equals("kanpage"))
		{
			kanpage(req,resp);
		}
	}
	
	protected void query(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String company_id=req.getParameter("id");
		List list=service.query(company_id);
		req.setAttribute("comzhaopinlist", list);
		RD("jsp/qt/comzhaopin.jsp",req,resp);
	}
	
	
	protected void addPage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		List list=service.querysheng();
		req.setAttribute("shenglist", list);
		RD("jsp/qt/comzhaopinxinxiAdd.jsp",req,resp);
		
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
	
	protected void add(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String company_id=req.getParameter("company_id");
		ST(req,resp);
		service.add(domain);
		resp.sendRedirect("comzhaopinxinxi?actionType=query&id="+company_id);
		
	}
	protected void del(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String company_id=req.getParameter("company_id");
		String[]id=req.getParameterValues("id");
		for(int i=0;i<id.length;i++)
		{
			service.del(id[i]);
			System.out.println("delid"+id[i]);
		}
		resp.sendRedirect("comzhaopinxinxi?actionType=query&id="+company_id);		
	}
	
	protected void updatepage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String id=req.getParameter("want_information_id");
		List list=service.updatequery(id);
		req.setAttribute("zhaopinlist", list);
		//现在省有了，可是市也要有选中的
		Map map=(Map) list.get(0);
		String sheng=(String) map.get("big_address_id");
		List list2=service.danqianshiquery(sheng);
		req.setAttribute("dangqianshilist", list2);
		List list1=service.querysheng();
		System.out.println("找到多少省为什么不出来"+list1.size());
		req.setAttribute("shenglist", list1); 
		RD("jsp/qt/comzhaopinxinxiEdit.jsp",req,resp);
		
	}
	
	
	protected void update(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String company_id=req.getParameter("company_id");
		ST(req,resp);
		service.zhaopinupdate(domain);
		resp.sendRedirect("comzhaopinxinxi?actionType=query&id="+company_id);	
		
	}
	
	protected void kanpage(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String want_information_id=req.getParameter("want_information_id");
		List list=service.kanquery(want_information_id);
		System.out.println("listsize====="+list.size());
		req.setAttribute("comzhaopinlist", list);
		RD("jsp/qt/comzhaopinxinxikan.jsp",req,resp);
		
	}
	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String want_information_id=req.getParameter("want_information_id");
		String want_name=GBK.toGBK(req.getParameter("want_name"));
		String want_profession=GBK.toGBK(req.getParameter("want_profession"));
		String want_position=GBK.toGBK(req.getParameter("want_position"));
		String want_age=GBK.toGBK(req.getParameter("want_age"));
		String want_look_count=req.getParameter("want_look_count");
		String want_language=GBK.toGBK(req.getParameter("want_language"));
		String yy=req.getParameter("yy");	
		String mm=req.getParameter("mm");
		String dd=req.getParameter("dd");
		String want_time=yy+"-"+mm+"-"+dd;
		String want_keyword=GBK.toGBK(req.getParameter("want_keyword"));
		String want_amount=GBK.toGBK(req.getParameter("want_amount"));
		String big_address_id=req.getParameter("big_address_id");
		String small_address_id=req.getParameter("small_address_id");
		String want_sex=GBK.toGBK(req.getParameter("want_sex"));
		String want_month_wage=GBK.toGBK(req.getParameter("want_month_wage"));
		String want_now_address=GBK.toGBK(req.getParameter("want_now_address"));
		String want_address=GBK.toGBK(req.getParameter("want_address"));
		String want_degree=GBK.toGBK(req.getParameter("want_degree"));
		String want_experience=GBK.toGBK(req.getParameter("want_experience"));
		String want_require=GBK.toGBK(req.getParameter("want_require"));
		String company_id=req.getParameter("company_id");
		domain.setWant_information_id(want_information_id);
		domain.setWant_name(want_name);
		domain.setWant_profession(want_profession);
		domain.setWant_position(want_position);
		domain.setWant_age(want_age);
		domain.setWant_look_count(want_look_count);
		domain.setWant_language(want_language);
		domain.setWant_time(want_time);
		domain.setWant_keyword(want_keyword);
		domain.setWant_amount(want_amount);
		domain.setBig_address_id(big_address_id);
		domain.setSmall_address_id(small_address_id);
		domain.setWant_sex(want_sex);
		domain.setWant_month_wage(want_month_wage);
		domain.setWant_now_address(want_now_address);
		domain.setWant_address(want_address);
		domain.setWant_degree(want_degree);
		domain.setWant_experience(want_experience);
		domain.setWant_require(want_require);
		domain.setCompany_id(company_id);
		
		
	}
	
	protected void RD(String url,HttpServletRequest req, HttpServletResponse resp){
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


