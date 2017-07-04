package qt.kangerenmianshitongzhi;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class KanGeRenMianShiTongZhiService {
	DaoImpl dao=new DaoImpl();
	String sql;
	public List tongzhiquery(String id) {
		// TODO Auto-generated method stub
		sql="select * from interview_info i,company c where i.company_id=c.company_id and i.user_info_id='"+id+"'";
		List list=dao.executeQuery(sql);
		System.out.println("==tongzhi===="+sql);
		return list;
	}
	public void del(String id) {
		// TODO Auto-generated method stub
		sql="delete from interview_info where interview_info_id='"+id+"'";
		dao.executeUpdate(sql);
	}
	public List kantongzhicontentquery(String interview_info_id) {
		// TODO Auto-generated method stub
		sql="select i.*,c.company_name from interview_info i,company c where i.company_id=c.company_id and interview_info_id='"+interview_info_id+"'";
		List list=dao.executeQuery(sql);
		return list;
	}

}


