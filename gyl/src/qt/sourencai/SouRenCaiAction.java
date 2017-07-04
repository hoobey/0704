package qt.sourencai;

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

public class SouRenCaiAction extends HttpServlet {
	
	SouRenCaiService service=new SouRenCaiService();
	SouRenCaiDomain  domain=new SouRenCaiDomain();

	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("sourencai"))			
		{
			sourencai(req,resp);
		}
		if(actionType.equals("zaisourencai"))			
		{
			zaisourencai(req,resp);
		}

	}
	
	protected void sourencai(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
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
			req.setAttribute("rencailist", list);
			req.setAttribute("page", service.getPage());
			RD("jsp/qt/sourencai.jsp",req,resp);
		
	}

	protected void zaisourencai(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String id=req.getParameter("id");
		List list =service.zaiquery(id);
		req.setAttribute("zaisoujianlilist", list);
		Map map=(Map)list.get(0);
		String user_info_id=(String)map.get("user_info_id");
		List list1=service.zaiphotoquery(user_info_id);
		req.setAttribute("photolist", list1);
		int resume_look_count=Integer.parseInt(map.get("resume_look_count").toString());
		System.out.println("看的次数"+resume_look_count);
		service.lookadd(user_info_id,resume_look_count);
		RD("jsp/qt/sourencaijianli.jsp",req,resp);
		
	}
	
	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {


		String resume_id=req.getParameter("resume_id");
		String resume_name=GBK.toGBK(req.getParameter("resume_name"));
		String resume_look_count=req.getParameter("resume_look_count");
		String resume_sex=GBK.toGBK(req.getParameter("resume_sex"));
		String resume_birth=req.getParameter("resume_birth");
		String resume_age=req.getParameter("resume_age");
		String work_year=GBK.toGBK(req.getParameter("work_year"));
		String marital_status=GBK.toGBK(req.getParameter("marital_status"));
		String account_place1=GBK.toGBK(req.getParameter("account_place1"));
		String account_place2=GBK.toGBK(req.getParameter("account_place2"));
		String identity_num=req.getParameter("identity_num");
		String graduate_date=GBK.toGBK(req.getParameter("graduate_date"));
		String stu_or_social=GBK.toGBK(req.getParameter("stu_or_social"));
		String graduate_school=GBK.toGBK(req.getParameter("graduate_school"));
		String major=GBK.toGBK(req.getParameter("major"));
		String educational_level=GBK.toGBK(req.getParameter("educational_level"));
		String now_status=GBK.toGBK(req.getParameter("now_status"));
		String telephone1=req.getParameter("telephone1");
		String telephone2=req.getParameter("telephone2");
		String contact_address=GBK.toGBK(req.getParameter("contact_address"));
		String post_code=req.getParameter("post_code");
		String now_live_city1=GBK.toGBK(req.getParameter("now_live_city1"));
		String now_live_city2=GBK.toGBK(req.getParameter("now_live_city2"));
		String study_history=GBK.toGBK(req.getParameter("study_history"));
		String self_assess=GBK.toGBK(req.getParameter("self_assess"));
		String hope_job_category=GBK.toGBK(req.getParameter("hope_job_category"));
		String now_industry=GBK.toGBK(req.getParameter("now_industry"));
		String now_occupation=GBK.toGBK(req.getParameter("now_occupation"));
		String now_position=GBK.toGBK(req.getParameter("now_position"));		
		String hope_money=GBK.toGBK(req.getParameter("hope_money"));
		String hope_industry=GBK.toGBK(req.getParameter("hope_industry"));
		String hope_occupation=GBK.toGBK(req.getParameter("hope_occupation"));
		String hope_position=GBK.toGBK(req.getParameter("hope_position"));				
		String hope_address1=GBK.toGBK(req.getParameter("hope_address1"));
		String hope_address2=GBK.toGBK(req.getParameter("hope_address2"));
		String user_language=GBK.toGBK(req.getParameter("user_language"));
		String user_language_ability=GBK.toGBK(req.getParameter("user_language_ability"));
		String special_expertise=GBK.toGBK(req.getParameter("special_expertise"));
		String special_use_time=GBK.toGBK(req.getParameter("special_use_time"));
		String user_info_id=req.getParameter("user_info_id");
		
		String photo_id=req.getParameter("photo_id");
		String photo_url=req.getParameter("photo_url");
		String photo_u_id=req.getParameter("photo_u_id");
		String photo_is_examine=req.getParameter("photo_is_examine");
		
		
		domain.setResume_id(resume_id);
		domain.setResume_name(resume_name);
		domain.setResume_look_count(resume_look_count);
		domain.setResume_sex(resume_sex);
		domain.setResume_birth(resume_birth);
		domain.setResume_age(resume_age);
		domain.setWork_year(work_year);
		domain.setMarital_status(marital_status);
		domain.setAccount_place1(account_place1);
		domain.setAccount_place2(account_place2);
		domain.setIdentity_num(identity_num);
		domain.setGraduate_date(graduate_date);
		domain.setMajor(major);
		domain.setEducational_level(educational_level);
		domain.setNow_status(now_status);
		domain.setTelephone1(telephone1);
		domain.setTelephone2(telephone2);
		domain.setContact_address(contact_address);
		domain.setPost_code(post_code);
		domain.setNow_live_city1(now_live_city1);
		domain.setNow_live_city2(now_live_city2);
		domain.setStudy_history(study_history);
		domain.setSelf_assess(self_assess);
		domain.setHope_job_category(hope_job_category);
		domain.setNow_industry(now_industry);
		domain.setNow_occupation(now_occupation);
		domain.setNow_position(now_position);
		domain.setHope_money(hope_money);
		domain.setHope_industry(hope_industry);
		domain.setHope_occupation(hope_occupation);
		domain.setHope_position(hope_position);
		domain.setUser_language(user_language);
		domain.setUser_language_ability(user_language_ability);
		domain.setSpecial_expertise(special_expertise);
		domain.setSpecial_use_time(special_use_time);
		domain.setUser_info_id(user_info_id);
		
		domain.setPhoto_id(photo_id);
		domain.setPhoto_url(photo_url);
		domain.setPhoto_u_id(photo_u_id);
		domain.setPhoto_u_id(photo_u_id);
		
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


