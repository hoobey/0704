package qt.kangerentoujianli;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class KanGeRenTouJianLiService {
	DaoImpl dao=new DaoImpl();
	String sql;
	
	public List query(String id)
	{
		sql="select * from throw_history t,company c,want_information w where t.company_id=c.company_id and t.want_information_id=w.want_information_id and t.user_info_id='"+id+"'";
		List list=dao.executeQuery(sql);
		System.out.println("sql="+sql);
		return list;
	}

	public void Del(String id) {
		// TODO Auto-generated method stub
		sql = "delete from throw_history where throw_history_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("=del==="+sql);
	}
	
}


