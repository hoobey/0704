package qt.gerenqiuzhiyixiang;

import java.util.List;


import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class GeRenQiuZhiYiXiangService {
	DaoImpl dao=new DaoImpl();
	List list;
	String sql;
	
	
	/**
	 * 因为用的是一个表，加时得看看有没有加另一方面的信息
	 * 
	 * */
	public List Queryid(String id){
		sql="select resume_id from resume where user_info_id='"+id+"'";
		list=dao.executeQuery(sql);
		System.out.println("===="+sql);
		return list;		
	}	
		
	
	
	public List Query(String id){
		sql="select resume_id,now_status,hope_job_category,now_industry,now_occupation,now_position,hope_money,hope_industry,hope_occupation,hope_position,hope_address1,hope_address2,user_info_id from resume where user_info_id='"+id+"'";
		list=dao.executeQuery(sql);
		System.out.println("==query=="+sql);
		return list;		
	}
	
	public void update(Object obj) {
		// TODO Auto-generated method stub
		GeRenQiuZhiYiXiangDomain domain = (GeRenQiuZhiYiXiangDomain)obj;	
		sql = "update resume set now_status='"+domain.getNow_status()+"',hope_job_category='"+domain.getHope_job_category()+"',now_industry='"+domain.getNow_industry()+"',now_occupation='"+domain.getNow_occupation()+"',now_position='"+domain.getNow_position()+"',hope_money='"+domain.getHope_money()+"',hope_industry='"+domain.getHope_industry()+"',hope_occupation='"+domain.getHope_occupation()+"',hope_position='"+domain.getHope_position()+"',hope_address1='"+domain.getHope_address1()+"',hope_address2='"+domain.getHope_address2()+"' where user_info_id='"+domain.getUser_info_id()+"'";
		dao.executeUpdate(sql);
		System.out.println("=update==="+sql);		
	}
	
	public void Add(Object obj) {
		// TODO Auto-generated method stub
		GeRenQiuZhiYiXiangDomain domain = (GeRenQiuZhiYiXiangDomain)obj;	
		sql = "insert into resume(now_status,resume_look_count,hope_job_category,now_industry,now_occupation,now_position,hope_money,hope_industry,hope_occupation,hope_position,hope_address1,hope_address2,user_info_id) " +
				"values('"+domain.getNow_status()+"',0,'"+domain.getHope_job_category()+"','"+domain.getNow_industry()+"','"+domain.getNow_occupation()+"','"+domain.getNow_position()+"','"+domain.getHope_money()+"','"+domain.getHope_industry()+"','"+domain.getHope_occupation()+"'," +
						"'"+domain.getHope_position()+"','"+domain.getHope_address1()+"','"+domain.getHope_address2()+"','"+domain.getUser_info_id()+"')";
		dao.executeUpdate(sql);
		System.out.println("=add==="+sql);		
	}

}


