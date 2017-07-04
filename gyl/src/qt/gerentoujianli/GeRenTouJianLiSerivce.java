package qt.gerentoujianli;



import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class GeRenTouJianLiSerivce {
	DaoImpl dao=new DaoImpl();
	List list;
	String sql;
	
	
	public List query(String user_info_id) {
		// TODO Auto-generated method stub
		//企业的键接找详细信息
		sql="select * from resume where user_info_id='"+user_info_id+"'";
		list=dao.executeQuery(sql);
		System.out.println("=query=="+sql);
		return list;		
	}
	public void Add(String company_id,String want_information_id,String user_info_id,String resume_id)
	{
		sql="insert into throw_history(s_time,user_info_id,company_id,resume_id,want_information_id) values(getdate(),'"+user_info_id+"','"+company_id+"','"+resume_id+"','"+want_information_id+"')";
		dao.executeUpdate(sql);
		System.out.println("=add==="+sql);
	}
	public List ketouquery(String company_id, String want_information_id,String user_info_id,String resume_id) {
		// TODO Auto-generated method stub
		//看可不可投
		sql="select * from throw_history where company_id='"+company_id+"' and want_information_id='"+want_information_id+"' and user_info_id='"+user_info_id+"' and resume_id='"+resume_id+"'";
		list=dao.executeQuery(sql);
		System.out.println("=query=="+sql);
		return list;		
	}

}


