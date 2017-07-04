package qt.comshoucangrencai;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ComShouCangRenCaiService {
	DaoImpl dao=new DaoImpl();
	String sql;
	public void comshourencaiadd(String resume_id, String company_id,String user_info_id) {
		// TODO Auto-generated method stub
		sql="insert into save_man(resume_id,save_time,company_id,user_info_id) values('"+resume_id+"',getdate(),'"+company_id+"','"+user_info_id+"')";
		System.out.println("====addsave======="+sql);
		dao.executeUpdate(sql);	
	}
	public List keshoucangquery(String resume_id, String company_id,String user_info_id) {
		// TODO Auto-generated method stub
		sql="select * from save_man where company_id='"+company_id+"' and resume_id='"+resume_id+"' and user_info_id='"+user_info_id+"'";
		List list=dao.executeQuery(sql);
		return list;
	}
	public List kanshourenquery(String company_id) {
		// TODO Auto-generated method stub
		sql="select * from save_man s,resume r where s.resume_id=r.resume_id and s.company_id='"+company_id+"'";
		List list=dao.executeQuery(sql);
		System.out.println("==shourencai===="+sql);
		return list;
	}
	public void del(String id) {
		// TODO Auto-generated method stub
		sql="delete from save_man where save_man_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("deltoulai========="+sql);
	}

}


