package qt.comkantoudejianli;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ComKanTouDeJianLiService {
	DaoImpl dao=new DaoImpl();
	String sql;
	public List toulaiquery(String id) {
		// TODO Auto-generated method stub
		sql="select t.*,r.*,w.want_information_id,w.want_name from want_information w,throw_history t,resume r where t.want_information_id=w.want_information_id and t.user_info_id=r.user_info_id and w.want_information_id in (select t.want_information_id from throw_history t where company_id='"+id+"') ";
		List list=dao.executeQuery(sql);
		System.out.println("comkantou========"+sql);
		return list;
	}
	public void del(String id) {
		// TODO Auto-generated method stub
		sql="delete from throw_history where throw_history_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("deltoulai========="+sql);
		
	}
	public List zaitoulaiquery(String id) {
		// TODO Auto-generated method stub
		sql="select * from resume where resume_id='"+id+"'";
		List list=dao.executeQuery(sql);
		return list;
	}
	public List zaitouphonequery(String id) {
		// TODO Auto-generated method stub
		sql="select * from photo where photo_is_examine='ÊÇ' and photo_u_id='"+id+"'";
		List list=dao.executeQuery(sql);
		return list;
	}
	public void lookadd(String id, int resume_look_count) {
		// TODO Auto-generated method stub
		sql="update resume set resume_look_count="+resume_look_count+"+1 where user_info_id='"+id+"'";
		dao.executeUpdate(sql);		
	}
	public List zaitoulaiquanquery(String id) {
		// TODO Auto-generated method stub
		sql="select * from resume r,user_info u where r.user_info_id='"+id+"' and u.user_info_id=r.user_info_id";
		System.out.println("sql============="+sql);
		List list=dao.executeQuery(sql);
		return list;
	}



}


