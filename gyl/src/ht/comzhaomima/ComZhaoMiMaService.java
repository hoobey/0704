package ht.comzhaomima;

import java.util.List;

import com.dao.DaoImpl;
import com.util.Page;
import com.util.PageConfig;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ComZhaoMiMaService {
	DaoImpl dao=new DaoImpl();
	String sql;
	Page page;
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	
	public List query(Object obj) {
		// TODO Auto-generated method stub
		ComZhaoMiMaDomain st=(ComZhaoMiMaDomain)obj;
		sql="select * from com_find_pass f,company c where f.company_id=c.company_id";
		List list=dao.executeQuery(sql, st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page= new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		return list;
	}
	public void gaimima(String id) {
		// TODO Auto-generated method stub
		sql="update company set com_login_pass='000000' where company_id='"+id+"'";
		System.out.println("update1=========="+sql);
		dao.executeUpdate(sql);
		sql="update com_find_pass set is_update='ÊÇ' where company_id='"+id+"'";
		System.out.println("update2=========="+sql);
		dao.executeUpdate(sql);
	}
	public void del(String id) {
		// TODO Auto-generated method stub
		sql="delete from com_find_pass where company_id='"+id+"'";
		System.out.println("del=========="+sql);
		dao.executeUpdate(sql);
	}

}


