package qt.gerenshoucanginfo;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class GeRenShouCangInfoService {
	
	DaoImpl dao=new DaoImpl();
	List list;
	String sql;
	
	/**
	 * 加入投递中
	 * */
	
	public void Add(String company_id,String want_information_id,String user_info_id)
	{
		sql="insert into save_com(save_time,want_information_id,user_info_id,company_id) values(getdate(),'"+want_information_id+"','"+user_info_id+"','"+company_id+"')";
		dao.executeUpdate(sql);
		System.out.println("=add==="+sql);
	}
	public List shoucangquery(String company_id,String want_information_id,String user_info_id)
	{
		sql="select * from save_com where company_id='"+company_id+"' and want_information_id='"+want_information_id+"' and user_info_id='"+user_info_id+"'";
		list=dao.executeQuery(sql);
		return list;
		
	}
}


