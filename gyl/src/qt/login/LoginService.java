/**
 * 
 */
package qt.login;

import java.util.List;

import com.dao.DaoImpl;
import com.util.Data;


/**
 * ��½Service
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
	 * ��½��ѯ
	 * @param loginName
	 * 		��½��
	 * @param loginPassword
	 * 		��½����
	 * @return list
	 * */

	public List GeQuery(String loginName,String loginPassword){
		sql="select * from user_info where user_info_name='"+loginName+"' and user_info_password='"+loginPassword+"'";
		yhList=dao.executeQuery(sql);
		return yhList;		
	}
	public List CoQuery(String loginName,String loginPassword){
		sql="select * from company where com_login_name='"+loginName+"' and com_login_pass='"+loginPassword+"' and com_is_examine='��'";
		yhList=dao.executeQuery(sql);
		return yhList;		
	}
	/**
	 * �޸ĸ��˵�¼ʱ��
	 * 
	 * 
	 * */
	public void dengupdatetime(String time,String gerenname,String gerenpassword)
	{
		sql="update user_info set user_login_record='"+time+"' where user_info_name='"+gerenname+"' and user_info_password='"+gerenpassword+"'";
		dao.executeUpdate(sql);
	}
	/**
	 * �޸���ҵ��Ա��¼ʱ��
	 * 
	 * 
	 * */
	public void dengupdatetime1(String time,String gerenname,String gerenpassword)
	{
		sql="update company set com_login_record='"+time+"' where com_login_name='"+gerenname+"' and com_login_pass='"+gerenpassword+"'";
		dao.executeUpdate(sql);
	}
	/**
	 * Ϊ�û��Ƽ�����
	 * 
	 * */
	public List resumequery(String id){
		sql="select top 10 * from want_information w inner join company c on w.company_id=c.company_id where c.com_is_examine='��' and w.want_profession = (select major from resume where user_info_id='"+id+"') order by w.want_time desc ";
		gerenList=dao.executeQuery(sql);
		System.out.println("===="+sql);
		return gerenList;		
	}
	
	/**
	 * 
	 * �鿴���������������
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
	 * ��Ͷ�ݼ�����������Ͷ�ݴ���
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
	 * ���յ�����֪ͨ�ı��������ж��ٸ�����֪ͨ
	 * 
	 * */
	public List mianshiListquery(String id){
		sql="select * from interview_info where user_info_id='"+id+"'";
		gerenList=dao.executeQuery(sql);
		System.out.println("===="+sql);
		return gerenList;		
	}
	/**
	 * ���ղص���Ƹ��Ϣ�ı��������ղ��˶�������Ƹ��Ϣ
	 * 
	 * */
	public List shoucangquery(String id){
		sql="select * from save_com where user_info_id='"+id+"'";
		gerenList=dao.executeQuery(sql);
		System.out.println("===="+sql);
		return gerenList;		
	}
	
}
