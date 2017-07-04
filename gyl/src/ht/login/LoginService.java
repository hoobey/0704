/**
 * 
 */
package ht.login;

import java.util.List;

import com.dao.DaoImpl;


/**
 * 登陆Service
 * @author Administrator
 *
 */
public class LoginService {

	DaoImpl dao=new DaoImpl();
	String sql;
	List list;
	List yhList;
	
	/**
	 * 登陆查询
	 * @param loginName
	 * 		登陆名
	 * @param loginPassword
	 * 		登陆密码
	 * @return list
	 * 		权限list
	 * */
	public List Query(String loginName,String loginPassword,String tj){
		sql="select * from limit where limit_id in  "
			+"  (  "
			+"  	select limit_id from role_limit  "
			+"  	where role_id in  "
			+"  	(  "
			+"  		select role_id from admin_role  "
			+"  		where admin_id in  "
			+"  		(  "
			+"  			select admin_id from admin  "
			+"  			where admin_login_name='"+loginName+"' and admin_login_pass='"+loginPassword+"'  "
			+"  		)  "
			+"  	)  "
			+"  )";
		sql =sql+" and "+tj;
		System.out.println(sql);
		list=dao.executeQuery(sql);
		return list;
	}
	
	/**
	 * 通过用户名密码查询用户
	 * */
	public List queryYh(String loginName,String loginPassword){
		sql="select * from admin where admin_login_name='"+loginName+"' and admin_login_pass='"+loginPassword+"'";
		yhList=dao.executeQuery(sql);
		return yhList;		
	}
	
	public void updatetime(String time,String name,String password)
	{
		sql="update admin set admin_login_record='"+time+"' where admin_login_name='"+name+"' and admin_login_pass='"+password+"'";
		dao.executeUpdate(sql);
	}
}
