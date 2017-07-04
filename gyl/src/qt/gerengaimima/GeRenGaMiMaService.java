package qt.gerengaimima;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class GeRenGaMiMaService {
	DaoImpl dao = new DaoImpl();
	List list;
	String sql;
	

	public void update(String id,String mima)
	{
		sql="update user_info set user_info_password='"+mima+"'where user_info_id='"+id+"'";
		dao.executeUpdate(sql);	
	}
	public List query(String id)
	{
		sql="select * from user_info where user_info_id='"+id+"'";
		List list=dao.executeQuery(sql);
		return list;
	}
}


