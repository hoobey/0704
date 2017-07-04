package qt.zhaomima;

import java.util.List;

import com.dao.DaoImpl;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ZhaoMiMAService {
	DaoImpl dao=new DaoImpl();
	String sql;
	public List zhaomimaquery(Object obj) {
		// TODO Auto-generated method stub
		ZhaoMiMaDomain st=(ZhaoMiMaDomain)obj;
		sql="select * from user_info where user_info_name='"+st.getUser_info_name()+"' and user_problem='"+st.getUser_problem()+"' and user_answer='"+st.getUser_answer()+"'";
		System.out.println("zhaomima======="+sql);
		List list=dao.executeQuery(sql);
		return list;
	}

}


