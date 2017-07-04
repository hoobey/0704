package qt.zhaomimacom;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ZhaoMiMaComService {
	DaoImpl dao=new DaoImpl();
	String sql;
	public List query(String com_login_name) {
		// TODO Auto-generated method stub
		sql="select * from company where com_login_name='"+com_login_name+"'";
		System.out.println("query===="+sql);
		List list=dao.executeQuery(sql);
		return list;
	}

	public void add(String company_id, String say_content) {
		// TODO Auto-generated method stub
		sql="insert into com_find_pass(company_id,say_content,is_update) values('"+company_id+"','"+say_content+"','·ñ')";
		System.out.println("add===="+sql);
		dao.executeUpdate(sql);

	}

}


