package qt.kangerenshoucanginfo;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class KanGeRenShouCangInfoService {
	DaoImpl dao=new DaoImpl();
	String sql;
	
	/**
	 * 找收藏信息
	 * 
	 * */
	public List query(String id)
	{
		sql="select * from save_com s,company c,want_information w where s.company_id=c.company_id and s.want_information_id=w.want_information_id and s.user_info_id='"+id+"'";
		List list=dao.executeQuery(sql);
		System.out.println("sql="+sql);
		return list;
	}
	/**
	 * 删除不要的信息
	 * */

	public void Del(String id) {
		// TODO Auto-generated method stub
		sql = "delete from save_com where save_com_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("=del==="+sql);
	}
}


