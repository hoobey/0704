package qt.gernjibenxinxi;

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

public class GeRenJiBenXinXiAction extends HttpServlet {
	GeRenJiBenXinXiService service=new GeRenJiBenXinXiService();
	GeRenJiBenXinXiDomain domain=new GeRenJiBenXinXiDomain();
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String actionType=req.getParameter("actionType");
		if(actionType.equals("panduan"))
		{
			panduan(req,resp);
			
		}
		if(actionType.equals("addjibenxinxi"))
		{
			addjibenxinxi(req,resp);
			
		}
		if(actionType.equals("updatejibenxinxi"))
		{
			updatejibenxinxi(req,resp);
			
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
			if(((String)map.get("resume_name"))==null||((String)map.get("resume_name"))=="")
			{
				RD("jsp/qt/gerenjibenxinxijia.jsp",req,resp);
			}
			else
			{
				List list1=service.queryone(id);
				req.setAttribute("gerenlist",list1);
				RD("jsp/qt/gerenjibenxinxigai.jsp",req,resp);
			}
		}
		else{
			RD("jsp/qt/gerenjibenxinxijia.jsp",req,resp);
		}

		
	}
	/**
	 * 创建简历的基本信息
	 * 
	 * 
	 * */
	protected void addjibenxinxi(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);
		String ca_id=req.getParameter("id");
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
	
	
	/**
	 * 
	 * 修改基本信息
	 * */
	protected void updatejibenxinxi(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		ST(req,resp);		
		service.update(domain);
		resp.sendRedirect("guanli?actionType=shouyede");	
	}
	
	protected void ST(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException, IOException {
		String resume_id=req.getParameter("resume_id");
		String resume_name=GBK.toGBK(req.getParameter("name"));
		String resume_look_count=req.getParameter("resume_look_count");
		String resume_sex=GBK.toGBK(req.getParameter("sex"));
		String csyy=req.getParameter("csyy");
		String csmm=req.getParameter("csmm");
		String csdd=req.getParameter("csdd");
		String resume_birth=csyy+"-"+csmm+"-"+csdd;
		String resume_age=req.getParameter("age");
		String work_year=GBK.toGBK(req.getParameter("gzjy"));
		String marital_status=GBK.toGBK(req.getParameter("hyzk"));
		String account_place1=GBK.toGBK(req.getParameter("sheng"));
		String account_place2=GBK.toGBK(req.getParameter("shi"));
		String identity_num=GBK.toGBK(req.getParameter("sfzh"));
		String date=req.getParameter("byy");
		String graduate_date=date+"-7-1";
		String stu_or_social=GBK.toGBK(req.getParameter("lx"));
		String graduate_school=GBK.toGBK(req.getParameter("xuexiao"));
		String major=GBK.toGBK(req.getParameter("zxzyl"));
		String educational_level=GBK.toGBK(req.getParameter("xl"));
		String telephone1=GBK.toGBK(req.getParameter("dianhua1"));
		String telephone2=GBK.toGBK(req.getParameter("dianhua2"));
		String contact_address=GBK.toGBK(req.getParameter("dz"));
		String post_code=req.getParameter("yb");
		String now_live_city1=GBK.toGBK(req.getParameter("sheng1"));
		String now_live_city2=GBK.toGBK(req.getParameter("shi1"));
		String study_history=GBK.toGBK(req.getParameter("qiuxiu"));
		String self_assess=GBK.toGBK(req.getParameter("zwpj"));
		String user_language=GBK.toGBK(req.getParameter("yy"));
		String user_language_ability=GBK.toGBK(req.getParameter("yysp"));
		String special_expertise=GBK.toGBK(req.getParameter("jsmc"));
		String special_use_time=GBK.toGBK(req.getParameter("jsysj"));
		String user_info_id=req.getParameter("id");
		System.out.println("====user_info_id==="+user_info_id);
		domain.setResume_id(resume_id);
		domain.setResume_name(resume_name);
		domain.setResume_sex(resume_sex);
		domain.setResume_look_count(resume_look_count);
		domain.setResume_age(resume_age);
		domain.setResume_birth(resume_birth);
		domain.setResume_age(resume_age);
		domain.setWork_year(work_year);
		domain.setMarital_status(marital_status);
		domain.setAccount_place1(account_place1);
		domain.setAccount_place2(account_place2);
		domain.setIdentity_num(identity_num);
		domain.setGraduate_date(graduate_date);
		domain.setStu_or_social(stu_or_social);
		domain.setGraduate_school(graduate_school);
		domain.setMajor(major);
		domain.setEducational_level(educational_level);
		domain.setTelephone1(telephone1);
		domain.setTelephone2(telephone2);
		domain.setContact_address(contact_address);
		domain.setPost_code(post_code);
		domain.setNow_live_city1(now_live_city1);
		domain.setNow_live_city2(now_live_city2);
		domain.setStudy_history(study_history);
		domain.setSelf_assess(self_assess);
		domain.setUser_language(user_language);
		domain.setUser_language_ability(user_language_ability);
		domain.setSpecial_expertise(special_expertise);
		domain.setSpecial_use_time(special_use_time);
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


