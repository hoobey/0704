package qt.mianshitongzhi;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class MianShiTongZhiService {
	DaoImpl dao=new DaoImpl();
	String sql;
	
	
	public void mianshitongzhiadd(Object obj) {
		// TODO Auto-generated method stub
		MianShiTongZhiDomain st=(MianShiTongZhiDomain)obj;
		sql="insert into interview_info(interview_title,s_time,company_id,user_info_id,interview_content) values('"+st.getInterview_title()+"',getdate(),'"+st.getCompany_id()+"','"+st.getUser_info_id()+"','"+st.getInterview_content()+"')";
		dao.executeUpdate(sql);
	}


	public List kefamianshiquery(Object obj) {
		// TODO Auto-generated method stub
		MianShiTongZhiDomain st=(MianShiTongZhiDomain)obj;
		sql="select * from interview_info where  company_id='"+st.getCompany_id()+"' and user_info_id='"+st.getUser_info_id()+"' ";
		List list=dao.executeQuery(sql);
		return list;
	}


	public List kantongzhiquery(String id) {
		// TODO Auto-generated method stub
		sql="select * from interview_info i,resume r where i.user_info_id=r.user_info_id and company_id='"+id+"'";
		List list=dao.executeQuery(sql);
		return list;
	}


	public void del(String id) {
		// TODO Auto-generated method stub
		sql="delete from interview_info where interview_info_id='"+id+"'";
		dao.executeUpdate(sql);
	}

}


