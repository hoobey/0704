package ht.comshen;

import java.util.List;

import com.dao.DaoImpl;
import com.util.Page;
import com.util.PageConfig;

/** 
 * @author  lkx
 * @version 1.0 
 */

public class ComShenService {
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
		ComShenDomain st=(ComShenDomain)obj;
		sql="select * from company c,photo p,big_address b,small_address s where p.photo_u_id=c.company_id and c.com_is_examine='·ñ'and c.big_address_id=b.big_address_id and c.small_address_id=s.small_address_id order by com_login_record asc";
		List list=dao.executeQuery(sql, st.getPageCount(), PageConfig.PAGE_SIZE_NORMAL);
		page= new Page(list,st.getPageCount(),PageConfig.PAGE_SIZE_NORMAL,true,dao.getCount());
		return list;
	}
	public List queryone(String company_id) {
		// TODO Auto-generated method stub
		sql="select * from company c,photo p,big_address b,small_address s where p.photo_u_id=c.company_id and c.com_is_examine='·ñ' and c.company_id='"+company_id+"' and c.big_address_id=b.big_address_id and c.small_address_id=s.small_address_id order by com_login_record asc";
		System.out.println("queryone====="+sql);
		List list=dao.executeQuery(sql);
		return list;
	}
	public void del(String id) {
		// TODO Auto-generated method stub
		sql="delete from company where company_id='"+id+"'";
		dao.executeUpdate(sql);
		String sql1="delete from photo where photo_u_id='"+id+"'";
		dao.executeUpdate(sql1);
		System.out.println("del====="+sql);
	}
	public void shen(String id) {
		// TODO Auto-generated method stub
		sql="update company set com_is_examine='ÊÇ' where company_id='"+id+"'";
		dao.executeUpdate(sql);
		System.out.println("shen======="+sql);
	}
	public List photoquery(String id) {
		// TODO Auto-generated method stub
		sql="selete * from photo where photo_u_id='"+id+"'";
		List list=dao.executeQuery(sql);
		return list;
	}

}


