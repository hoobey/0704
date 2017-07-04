package qt.comgaimima;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ComGaiMiMaService {
	DaoImpl dao=new DaoImpl();
	String sql;
	public List commimaquery(String id) {
		// TODO Auto-generated method stub
		sql="select * from company where company_id='"+id+"'";
		List list=dao.executeQuery(sql);
		System.out.println("sql==========="+sql);
		return list;
	}
	public void gaimima(String mima,String id) {
		// TODO Auto-generated method stub
		sql="update company set com_login_pass='"+mima+"' where company_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("==gaimi===="+sql);		
	}



}


