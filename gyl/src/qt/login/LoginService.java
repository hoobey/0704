/**
 * 
 */
package qt.login;

import java.util.List;

import com.dao.DaoImpl;
import com.util.Data;


/**
 * 登陆Service
 * @author lkx
 *
 */
public class LoginService {

	DaoImpl dao=new DaoImpl();
	String sql;
	List list;
	List yhList;
	List gerenList;
	
	/**
	 * 登陆查询
	 * @param loginName
	 * 		登陆名
	 * @param loginPassword
	 * 		登陆密码
	 * @return list
	 * */

	public List GeQuery(String loginName,String loginPassword){
		sql="select * from user_info where user_info_name='"+loginName+"' and user_info_password='"+loginPassword+"'";
		yhList=dao.executeQuery(sql);
		return yhList;		
	}
	public List CoQuery(String loginName,String loginPassword){
		sql="select * from company where com_login_name='"+loginName+"' and com_login_pass='"+loginPassword+"' and com_is_examine='是'";
		yhList=dao.executeQuery(sql);
		return yhList;		
	}
	/**
	 * 修改个人登录时间
	 * 
	 * 
	 * */
	public void dengupdatetime(String time,String gerenname,String gerenpassword)
	{
		sql="update user_info set user_login_record='"+time+"' where user_info_name='"+gerenname+"' and user_info_password='"+gerenpassword+"'";
		dao.executeUpdate(sql);
	}
	/**
	 * 修改企业人员登录时间
	 * 
	 * 
	 * */
	public void dengupdatetime1(String time,String gerenname,String gerenpassword)
	{
		sql="update company set com_login_record='"+time+"' where com_login_name='"+gerenname+"' and com_login_pass='"+gerenpassword+"'";
		dao.executeUpdate(sql);
	}
	/**
	 * 为用户推荐工作
	 * 
	 * */
	public List resumequery(String id){
		sql="select top 10 * from want_information w inner join company c on w.company_id=c.company_id where c.com_is_examine='是' and w.want_profession = (select major from resume where user_info_id='"+id+"') order by w.want_time desc ";
		gerenList=dao.executeQuery(sql);
		System.out.println("===="+sql);
		return gerenList;		
	}
	
	/**
	 * 
	 * 查看简历表用来看浏览
	 * 
	 * 
	 * */
	public List lookquery(String id){
		sql="select * from resume where user_info_id='"+id+"'";
		gerenList=dao.executeQuery(sql);
		System.out.println("===="+sql);
		return gerenList;		
	}
	/**
	 * 看投递简历表，用来看投递次数
	 * 
	 * 
	 * 
	 * */
	public List touquery(String id){
		sql="select * from throw_history where user_info_id='"+id+"'";
		gerenList=dao.executeQuery(sql);
		System.out.println("===="+sql);
		return gerenList;		
	}
	/**
	 * 查收到面试通知的表，用来看有多少个面试通知
	 * 
	 * */
	public List mianshiListquery(String id){
		sql="select * from interview_info where user_info_id='"+id+"'";
		gerenList=dao.executeQuery(sql);
		System.out.println("===="+sql);
		return gerenList;		
	}
	/**
	 * 查收藏的招聘信息的表，用来看收藏了多少条招聘信息
	 * 
	 * */
	public List shoucangquery(String id){
		sql="select * from save_com where user_info_id='"+id+"'";
		gerenList=dao.executeQuery(sql);
		System.out.println("===="+sql);
		return gerenList;		
	}
	
}
