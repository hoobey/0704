package qt.sourencai;

import java.util.List;

import com.dao.DaoImpl;
import com.util.Page;
import com.util.PageConfig;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class SouRenCaiService {
	DaoImpl dao = new DaoImpl();
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
		SouRenCaiDomain st=(SouRenCaiDomain)obj;
		sql="select * from resume where resume_name!='null' and now_status!='null'";
		if(null!=st.getResume_sex()&& !st.getResume_sex().equals(""))
		{
			sql=sql+" and resume_sex='"+st.getResume_sex()+"'";
		}
		if(null!=st.getWork_year()&& !st.getWork_year().equals("")&&!st.getWork_year().equals("0"))
		{
			sql=sql+" and work_year='"+st.getWork_year()+"'";
		}
		if(null!=st.getAccount_place1()&& !st.getAccount_place1().equals("")&&!st.getAccount_place1().equals("0")&&!st.getAccount_place1().equals("=省=")&&null!=st.getAccount_place2()&& !st.getAccount_place2().equals("")&&!st.getAccount_place2().equals("0")&&!st.getAccount_place2().equals("=市="))
		{
			sql=sql+" and account_place1='"+st.getAccount_place1()+"'  and account_place2='"+st.getAccount_place2()+"'";
		}
		if(null!=st.getNow_live_city1()&& !st.getNow_live_city1().equals("")&&!st.getNow_live_city1().equals("0")&&!st.getNow_live_city1().equals("=省=")&&null!=st.getNow_live_city2()&& !st.getNow_live_city2().equals("")&&!st.getNow_live_city2().equals("0")&&!st.getNow_live_city2().equals("=市="))
		{
			sql=sql+" and now_live_city1='"+st.getNow_live_city1()+"'  and now_live_city2='"+st.getNow_live_city2()+"'";
		}
		if(null!=st.getEducational_level() && !st.getEducational_level().equals("")&&!st.getEducational_level().equals("0"))
		{
			sql=sql+" and educational_level='"+st.getEducational_level()+"'";
		}
		if(null!=st.getMajor() && !st.getMajor().equals("")&&!st.getMajor().equals("0"))
		{
			sql=sql+" and major='"+st.getMajor()+"'";
		}
		if(null!=st.getHope_job_category() && !st.getHope_job_category().equals("")&&!st.getHope_job_category().equals("0"))
		{
			sql=sql+" and hope_job_category='"+st.getHope_job_category()+"'";
		}
		sql=sql+" order by resume_id desc";
		List list=dao.executeQuery(sql, st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page=new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		System.out.println("=query=="+sql);
		return list;
	}
	public List zaiquery(String id) {
		// TODO Auto-generated method stub
		sql="select *  from resume where resume_id='"+id+"'";
		List list =dao.executeQuery(sql);		
		return list;
	}
	public List zaiphotoquery(String user_info_id) {
		// TODO Auto-generated method stub
		sql="select * from photo where photo_is_examine='是' and photo_u_id='"+user_info_id+"'";
		List list =dao.executeQuery(sql);
		System.out.println(sql);
		return list;
	}
	public void lookadd(String user_info_id,int resume_look_count) {
		// TODO Auto-generated method stub
		sql="update resume set resume_look_count="+resume_look_count+"+1 where user_info_id='"+user_info_id+"'";
		dao.executeUpdate(sql);		
	}

}


