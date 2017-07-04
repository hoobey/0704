package qt.souzhiwei;


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

public class SouZhiWeiAction extends HttpServlet {
	private List list;
	private SouZhiWeiDomain domain=new SouZhiWeiDomain();
	private SouZhiWeiService service=new SouZhiWeiService();


	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		//req.setCharacterEncoding("GBK");
		if(actionType.equals("query"))
		{
			this.query( req,  resp);
		}
		else if(actionType.equals("zaiquery"))
		{
			this.zaiquery( req,  resp);
		}
		else if(actionType.equals("zaizaiquery"))
		{
			this.zaizaiquery( req,  resp);
		}
		else if(actionType.equals("sheng"))
		{
			this.sheng( req,  resp);
		}
	}
	/**
	 * 一开始个人用户找职位，出现的表，我查一下
	 * 
	 * 
	 * 
	 * */
	protected void query(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		resp.setContentType("text/html; charset=utf-8");
		//req.setCharacterEncoding("gbk");
		String page=req.getParameter("pageNumber");
		System.out.println("page=="+page);
		ST(req,resp);
		int pageCount=1;
		if(page!=null && page!=""){
			pageCount=Integer.parseInt(page);
		}
		System.out.println("pageCount==="+pageCount);
			domain.setPageCount(pageCount);
			List list=service.Query(domain);
			System.out.println("list======"+list.size());
			req.setAttribute("zhiweilist", list);
			req.setAttribute("page", service.getPage());
			RD("jsp/qt/sousuo.jsp",req,resp);
	}
	
	/**
	 * 用户想看某一个公司的信息还有这个公司发的职位信息，
	 * 这个地儿，光用一个查找不行，我就找两个吧，哈哈，成功
	 * 
	 * 
	 * 
	 * */
	protected void zaiquery(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
			String company_id=req.getParameter("company_id");
			List list=service.zaiComQuery(company_id);
			req.setAttribute("zaizhiweilist", list);
			List list1=service.zaiComzhiQuery(company_id);
			req.setAttribute("zaizhiweilist1", list1);
			RD("jsp/qt/sousuo1.jsp",req,resp);
	}
	/**
	 * 我再再找，找到一个企业的一个招聘信
	 * 
	 * 
	 * 
	 * 
	 * */	
	protected void zaizaiquery(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
			String want_information_id=req.getParameter("want_information_id");
			List list=service.zaizhiQuery(want_information_id);
			req.setAttribute("zaizaizhiweilist", list);
			Map map=(Map)list.get(0);
			int want_look_count=Integer.parseInt(map.get("want_look_count").toString());
			service.addone(want_information_id,want_look_count);
			RD("jsp/qt/sousuo2.jsp",req,resp);
	}
	
	protected void sheng(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		List list=service.querysheng();
		req.setAttribute("shenglist", list);
		RD("jsp/qt/gaojizhaozhiwei.jsp",req,resp);
	}
	

	
	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		/*req.setCharacterEncoding("gbk");
		resp.setContentType("text/html; charset=gbk");*/
		String company_id=req.getParameter("company_id");
		String com_login_name=GBK.toGBK(req.getParameter("com_login_name"));
		String com_login_pass=req.getParameter("com_login_pass");
		String company_name=GBK.toGBK(req.getParameter("company_name"));
		String big_address_id=req.getParameter("big_address_id");
		String small_address_id=req.getParameter("small_address_id");
		String com_contact_address=GBK.toGBK(req.getParameter("com_contact_address"));		
		String com_post_code=req.getParameter("com_post_code");
		String com_contact_telephone=req.getParameter("com_contact_telephone");
		String com_contact_people=GBK.toGBK(req.getParameter("com_contact_people"));
		String com_fax=req.getParameter("com_fax");
		String com_property=GBK.toGBK(req.getParameter("com_property"));
		String com_register_money=req.getParameter("com_register_money");		
		String com_extent=GBK.toGBK(req.getParameter("com_extent"));
		String com_url=req.getParameter("com_url");
		String com_email=req.getParameter("com_email");
		String com_industry1=GBK.toGBK(req.getParameter("com_industry1"));
		String com_industry2=GBK.toGBK(req.getParameter("com_industry2"));
		String com_industry3=GBK.toGBK(req.getParameter("com_industry3"));		

		String com_summary=GBK.toGBK(req.getParameter("com_summary"));
		String com_is_examine=GBK.toGBK(req.getParameter("com_is_examine"));
		String com_login_record=req.getParameter("com_login_record");


		
		String want_information_id=req.getParameter("want_information_id");
		String want_name=GBK.toGBK(req.getParameter("want_name"));		
		String want_profession=GBK.toGBK(req.getParameter("want_profession"));
		
		System.out.println("------------" + req.getParameter("want_profession"));
		System.out.println("------------" + GBK.toGBK(req.getParameter("want_profession")));
		
		
		String want_position=GBK.toGBK(req.getParameter("want_position"));
		String want_age=GBK.toGBK(req.getParameter("want_age"));
		String want_look_count=req.getParameter("want_look_count");
		String want_language=GBK.toGBK(req.getParameter("want_language"));
		String want_time=req.getParameter("want_time");	
		String want_keyword=GBK.toGBK(req.getParameter("want_keyword"));
		String want_amount=req.getParameter("want_amount");
		String want_sex=GBK.toGBK(req.getParameter("want_sex"));
		String want_month_wage=GBK.toGBK(req.getParameter("want_month_wage"));
		String want_now_address=GBK.toGBK(req.getParameter("want_now_address"));
		String want_address=GBK.toGBK(req.getParameter("want_address"));	
		String want_degree=GBK.toGBK(req.getParameter("want_degree"));
		String want_experience=GBK.toGBK(req.getParameter("want_experience"));
		String want_require=GBK.toGBK(req.getParameter("want_require"));
		
		String big_address_name=GBK.toGBK(req.getParameter("big_address_name"));
		String small_address_name=GBK.toGBK(req.getParameter("small_address_name"));
		
		domain.setCompany_id(company_id);
		domain.setCom_login_name(com_login_name);
		domain.setCom_login_pass(com_login_pass);
		domain.setCompany_name(company_name);
		domain.setBig_address_id(big_address_id);
		domain.setSmall_address_id(small_address_id);
		domain.setCom_contact_address(com_contact_address);
		domain.setCom_post_code(com_post_code);
		domain.setCom_contact_telephone(com_contact_telephone);
		domain.setCom_contact_people(com_contact_people);
		domain.setCom_fax(com_fax);
		domain.setCom_property(com_property);
		domain.setCom_register_money(com_register_money);
		domain.setCom_extent(com_extent);
		domain.setCom_url(com_url);
		domain.setCom_email(com_email);
		domain.setCom_industry1(com_industry1);
		domain.setCom_industry2(com_industry2);
		domain.setCom_industry3(com_industry3);

		domain.setCom_summary(com_summary);
		domain.setCom_is_examine(com_is_examine);
		domain.setCom_login_record(com_login_record);
		
		
		
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
		domain.setWant_sex(want_sex);
		domain.setWant_month_wage(want_month_wage);
		domain.setWant_now_address(want_now_address);
		domain.setWant_address(want_address);
		domain.setWant_degree(want_degree);
		domain.setWant_experience(want_experience);
		domain.setWant_require(want_require);
		
		
		domain.setBig_address_name(big_address_name);
		domain.setSmall_address_name(small_address_name);
		
		
		
		
		

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


