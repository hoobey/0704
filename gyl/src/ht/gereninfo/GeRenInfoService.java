package ht.gereninfo;


import java.util.List;

import com.dao.DaoImpl;
import com.util.Page;
import com.util.PageConfig;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class GeRenInfoService {

	DaoImpl dao = new DaoImpl();
	List list;
	String sql;
	Page page;
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public List Query(Object obj) {
		// TODO Auto-generated method stub
		GeRenInfoDomain st=(GeRenInfoDomain)obj;
		sql="select user_info.user_info_id,user_info.user_info_name,user_info.user_login_record ,resume.resume_name,resume.resume_age,resume.work_year,resume.graduate_school,resume.contact_address,resume.study_history from user_info,resume where user_info.user_info_id=resume.user_info_id order by user_login_record asc"; 
		list=dao.executeQuery(sql, st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page=new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		System.out.println("=query=="+sql);
		return list;
	}
	
	public List queryUrl(String id) {
		// TODO Auto-generated method stub
		sql = "select photo_url from photo where photo_u_id='"+id+"'";
		list = dao.executeQuery(sql);
		System.out.println("=queryOne==="+sql);
		return list;
	}
	public void Del(String id) {
		sql = "delete from user_info where user_info_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("=del==="+sql);	
		sql = "delete from resume where user_info_id='"+id+"'";		
		dao.executeUpdate(sql);
		System.out.println("=del==="+sql);	
		sql = "delete from save_com where user_info_id='"+id+"'";		
		dao.executeUpdate(sql);
		System.out.println("=del==="+sql);
		sql = "delete from throw_history where user_info_id='"+id+"'";		
		dao.executeUpdate(sql);
		System.out.println("=del==="+sql);
		sql = "delete from save_man where user_info_id='"+id+"'";		
		dao.executeUpdate(sql);
		System.out.println("=del==="+sql);
		sql = "delete from interview_info where user_info_id='"+id+"'";		
		dao.executeUpdate(sql);
		System.out.println("=del==="+sql);
		sql = "delete from message where message_s_id='"+id+"'";		
		dao.executeUpdate(sql);
		System.out.println("=del==="+sql);
		sql = "delete from photo where photo_u_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("=del==="+sql);	
	}
}


