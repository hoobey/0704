package qt.zhuce;


import java.util.ArrayList;
import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class GeRenZhuCiService {
	List list=new ArrayList();
	List yhList;
	DaoImpl dao = new DaoImpl();
	String sql;
	public List select(String yh_name)
	{
		sql="select user_info_name from user_info where user_info_name='"+yh_name+"'";
		list=dao.executeQuery(sql);
		System.out.println(sql);
		return list;
	}
	
	public void zhu(Object obj) {
		// TODO Auto-generated method stub
		GeRenZhuCiDomain domain = (GeRenZhuCiDomain)obj;
		sql = "insert into user_info(user_info_id,user_info_name,user_info_password,user_problem,user_answer,email,user_login_record) values(newid(),'"+domain.getYh_name()+"','"+domain.getPassword()+"','"+domain.getProblem()+"','"+domain.getAnswer()+"','"+domain.getEmail()+"',getdate())";
		dao.executeUpdate(sql);
		System.out.println("=add==="+sql);
	}
	
	public List GeQuery(String loginName,String loginPassword){
		sql="select * from user_info where user_info_name='"+loginName+"' and user_info_password='"+loginPassword+"'";
		yhList=dao.executeQuery(sql);
		System.out.println("==zhiceshizhaode============"+sql);
		return yhList;		
	}
}


